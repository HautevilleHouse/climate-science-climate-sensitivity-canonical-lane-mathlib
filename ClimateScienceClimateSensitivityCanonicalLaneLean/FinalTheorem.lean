import ClimateScienceClimateSensitivityCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ClimateScienceClimateSensitivityCanonicalLaneLean

def ConstrainedClimateSensitivityClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_climate_sensitivity_endgame (A : AdmissibleClass) :
    ConstrainedClimateSensitivityClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClimateScienceClimateSensitivityCanonicalLaneLean
end HautevilleHouse