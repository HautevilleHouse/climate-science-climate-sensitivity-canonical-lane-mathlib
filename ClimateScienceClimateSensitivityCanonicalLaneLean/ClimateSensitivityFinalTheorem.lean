import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateSensitivityCanonicalLaneLean

def ClimateSensitivityClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem climate_sensitivity_endgame (A : AdmissibleClass) :
    ClimateSensitivityClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClimateScienceClimateSensitivityCanonicalLaneLean
end HautevilleHouse