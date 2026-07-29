import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateSensitivityCanonicalLaneLean

structure FeedbackAnalysisPackage where
  waterVaporFeedback : ℝ
  iceAlbedoFeedback : ℝ
  cloudFeedback : ℝ
  lapseRateFeedback : ℝ
  totalFeedback : ℝ
  climateSensitivity : ℝ

def FeedbackAnalysisClosed (F : FeedbackAnalysisPackage) : Prop :=
  F.waterVaporFeedback ≠ 0 ∧ F.iceAlbedoFeedback ≠ 0 ∧
  F.cloudFeedback ≠ 0 ∧ F.lapseRateFeedback ≠ 0 ∧
  F.totalFeedback ≠ 0 ∧ F.climateSensitivity > 0

structure FeedbackAnalysisEvidence (F : FeedbackAnalysisPackage) where
  waterVaporFeedbackClosed : F.waterVaporFeedback ≠ 0
  iceAlbedoFeedbackClosed : F.iceAlbedoFeedback ≠ 0
  cloudFeedbackClosed : F.cloudFeedback ≠ 0
  lapseRateFeedbackClosed : F.lapseRateFeedback ≠ 0
  totalFeedbackClosed : F.totalFeedback ≠ 0
  climateSensitivityClosed : F.climateSensitivity > 0

theorem feedback_analysis_closed_from_evidence (F : FeedbackAnalysisPackage)
    (Ev : FeedbackAnalysisEvidence F) : FeedbackAnalysisClosed F := by
  exact And.intro Ev.waterVaporFeedbackClosed
    (And.intro Ev.iceAlbedoFeedbackClosed
      (And.intro Ev.cloudFeedbackClosed
        (And.intro Ev.lapseRateFeedbackClosed
          (And.intro Ev.totalFeedbackClosed Ev.climateSensitivityClosed))))

end ClimateScienceClimateSensitivityCanonicalLaneLean
end HautevilleHouse
