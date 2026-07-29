import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateSensitivityCanonicalLaneLean

structure DansgaardOeschgerEvent where
  onsetTime : ℝ
  duration : ℝ
  magnitude : ℝ
  abrupt : Prop

structure DansgaardOeschgerSequence where
  events : List DansgaardOeschgerEvent

structure DansgaardOeschgerEvidence (D : DansgaardOeschgerSequence) where
  eventsNonempty : D.events ≠ []
  eachOnsetValid : ∀ e ∈ D.events, e.onsetTime > 0
  eachDurationPos : ∀ e ∈ D.events, e.duration > 0
  eachMagnitudePos : ∀ e ∈ D.events, e.magnitude > 0
  eachAbrupt : ∀ e ∈ D.events, e.abrupt

def DansgaardOeschgerClosed (D : DansgaardOeschgerSequence) : Prop :=
  D.events ≠ [] ∧ (∀ e ∈ D.events, e.onsetTime > 0 ∧ e.duration > 0 ∧ e.magnitude > 0 ∧ e.abrupt)

theorem dansgaard_oeschger_closed_from_evidence
    (D : DansgaardOeschgerSequence) (ev : DansgaardOeschgerEvidence D) :
    DansgaardOeschgerClosed D := by
  refine And.intro ev.eventsNonempty ?_
  intro e he
  exact And.intro (ev.eachOnsetValid e he) (And.intro (ev.eachDurationPos e he)
    (And.intro (ev.eachMagnitudePos e he) (ev.eachAbrupt e he)))

end ClimateScienceClimateSensitivityCanonicalLaneLean
end HautevilleHouse