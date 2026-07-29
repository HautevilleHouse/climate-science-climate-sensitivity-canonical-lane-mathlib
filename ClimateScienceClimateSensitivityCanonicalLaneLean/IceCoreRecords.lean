import ClimateScienceClimateSensitivityCanonicalLaneLean.IsotopicPaleothermometry

namespace HautevilleHouse
namespace ClimateScienceClimateSensitivityCanonicalLaneLean

structure IceCoreRecordPackage (I : IsotopicPaleothermometryPackage) where
  coreSites : Type u
  depthProfiles : Type v
  gasTrapping : Prop
  annualLayerCounting : Prop
  chronologyEstablished : Prop

structure IceCoreRecordEvidence (I : IsotopicPaleothermometryPackage) (R : IceCoreRecordPackage I) where
  gasTrappingClosed : R.gasTrapping
  annualLayerCountingClosed : R.annualLayerCounting
  chronologyEstablishedClosed : R.chronologyEstablished

def IceCoreRecordClosed (I : IsotopicPaleothermometryPackage) (R : IceCoreRecordPackage I) : Prop :=
  R.gasTrapping ∧ R.annualLayerCounting ∧ R.chronologyEstablished

theorem ice_core_record_closed_from_evidence (I : IsotopicPaleothermometryPackage) (R : IceCoreRecordPackage I) (Ev : IceCoreRecordEvidence I R) : IceCoreRecordClosed I R := by
  exact And.intro Ev.gasTrappingClosed (And.intro Ev.annualLayerCountingClosed Ev.chronologyEstablishedClosed)

end ClimateScienceClimateSensitivityCanonicalLaneLean
end HautevilleHouse