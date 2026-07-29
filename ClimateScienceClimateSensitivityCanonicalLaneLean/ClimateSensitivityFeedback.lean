import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateSensitivityCanonicalLaneLean

structure ClimateSensitivityFeedbackPackage where
  planckFeedback : Prop
  lapseRateFeedback : Prop
  waterVaporFeedback : Prop
  iceAlbedoFeedback : Prop
  cloudFeedback : Prop
  equilibriumClimateSensitivity : Prop

structure ClimateSensitivityFeedbackEvidence (F : ClimateSensitivityFeedbackPackage) where
  planckFeedbackClosed : F.planckFeedback
  lapseRateFeedbackClosed : F.lapseRateFeedback
  waterVaporFeedbackClosed : F.waterVaporFeedback
  iceAlbedoFeedbackClosed : F.iceAlbedoFeedback
  cloudFeedbackClosed : F.cloudFeedback
  equilibriumClimateSensitivityClosed : F.equilibriumClimateSensitivity

def ClimateSensitivityFeedbackClosed (F : ClimateSensitivityFeedbackPackage) : Prop :=
  F.planckFeedback ∧ F.lapseRateFeedback ∧ F.waterVaporFeedback ∧
  F.iceAlbedoFeedback ∧ F.cloudFeedback ∧ F.equilibriumClimateSensitivity

theorem climate_sensitivity_feedback_closed_from_evidence
    (F : ClimateSensitivityFeedbackPackage) (Ev : ClimateSensitivityFeedbackEvidence F) :
    ClimateSensitivityFeedbackClosed F := by
  exact And.intro Ev.planckFeedbackClosed
    (And.intro Ev.lapseRateFeedbackClosed
      (And.intro Ev.waterVaporFeedbackClosed
        (And.intro Ev.iceAlbedoFeedbackClosed
          (And.intro Ev.cloudFeedbackClosed Ev.equilibriumClimateSensitivityClosed))))

end ClimateScienceClimateSensitivityCanonicalLaneLean
end HautevilleHouse