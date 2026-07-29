import HautevilleHouse.ClimateScienceClimateSensitivityCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateSensitivityCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ClimateSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ClimateAdmittedObject where
  space : ClimateSpace
  energyBalanceModel : Prop
  sensitivityParameter : ℝ
  dataAssimilated : Prop
  conclusion : sensitivityParameter > 0

structure ClimateEndgameState where
  object : ClimateAdmittedObject

def ClimateWitnessClosed (O : ClimateAdmittedObject) : Prop :=
  O.energyBalanceModel ∧ O.conclusion

end ClimateScienceClimateSensitivityCanonicalLaneLean
end HautevilleHouse