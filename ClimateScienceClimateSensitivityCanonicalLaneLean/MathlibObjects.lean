import ClimateScienceClimateSensitivityCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace ClimateScienceClimateSensitivityCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ClimateObject where
  system : Type
  stateSpace : TopologicalSpace system

structure ClimateAdmittedObject where
  climateObject : ClimateObject
  radiativeBalanceClosed : Prop
  feedbacksIdentified : Prop
  climateSensitivityBounded : Prop
  conclusion : climateSensitivityBounded

structure ClimateEndgameState where
  object : ClimateAdmittedObject

def ClimateWitnessClosed (O : ClimateAdmittedObject) : Prop :=
  O.climateSensitivityBounded

end ClimateScienceClimateSensitivityCanonicalLaneLean
end HautevilleHouse