import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateSensitivityCanonicalLaneLean

structure ClimateSensitivityParameter where
  forcing : ℝ
  temperatureResponse : ℝ
  sensitivity : ℝ

structure ClimateSensitivityEvidence (C : ClimateSensitivityParameter) where
  forcingClosed : C.forcing > 0
  temperatureResponseClosed : C.temperatureResponse > 0
  sensitivityClosed : C.sensitivity > 0
  sensitivityEquationClosed : C.sensitivity = C.temperatureResponse / C.forcing

def ClimateSensitivityClosed (C : ClimateSensitivityParameter) : Prop :=
  C.forcing > 0 ∧ C.temperatureResponse > 0 ∧ C.sensitivity > 0 ∧
  C.sensitivity = C.temperatureResponse / C.forcing

theorem climate_sensitivity_closed_from_evidence
    (C : ClimateSensitivityParameter) (ev : ClimateSensitivityEvidence C) :
    ClimateSensitivityClosed C := by
  exact And.intro ev.forcingClosed (And.intro ev.temperatureResponseClosed
    (And.intro ev.sensitivityClosed ev.sensitivityEquationClosed))

end ClimateScienceClimateSensitivityCanonicalLaneLean
end HautevilleHouse