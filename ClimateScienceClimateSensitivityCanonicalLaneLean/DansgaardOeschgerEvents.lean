import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateSensitivityCanonicalLaneLean

structure DansgaardOeschgerEventsPackage where
  eventCount : ℕ
  meanPeriod : ℝ
  amplitudeRange : ℝ
  triggerMechanism : Prop
  linkageToOceanCirculation : Prop

def DansgaardOeschgerEventsClosed (D : DansgaardOeschgerEventsPackage) : Prop :=
  D.eventCount > 0 ∧ D.meanPeriod > 0 ∧ D.amplitudeRange > 0 ∧
  D.triggerMechanism ∧ D.linkageToOceanCirculation

structure DansgaardOeschgerEventsEvidence (D : DansgaardOeschgerEventsPackage) where
  eventCountClosed : D.eventCount > 0
  meanPeriodClosed : D.meanPeriod > 0
  amplitudeRangeClosed : D.amplitudeRange > 0
  triggerMechanismClosed : D.triggerMechanism
  linkageToOceanCirculationClosed : D.linkageToOceanCirculation

theorem dansgaard_oeschger_events_closed_from_evidence
    (D : DansgaardOeschgerEventsPackage)
    (Ev : DansgaardOeschgerEventsEvidence D) : DansgaardOeschgerEventsClosed D := by
  exact And.intro Ev.eventCountClosed
    (And.intro Ev.meanPeriodClosed
      (And.intro Ev.amplitudeRangeClosed
        (And.intro Ev.triggerMechanismClosed Ev.linkageToOceanCirculationClosed)))

end ClimateScienceClimateSensitivityCanonicalLaneLean
end HautevilleHouse
