import ClimateScienceClimateSensitivityCanonicalLaneLean.MilankovitchCycles

namespace HautevilleHouse
namespace ClimateScienceClimateSensitivityCanonicalLaneLean

structure IsotopicPaleothermometryPackage (M : MilankovitchCyclePackage) where
  delta18O : Type u
  deltaD : Type v
  temperatureConversion : Prop
  iceVolumeCorrection : Prop
  calibrationUncertainty : Prop

structure IsotopicPaleothermometryEvidence (M : MilankovitchCyclePackage) (I : IsotopicPaleothermometryPackage M) where
  temperatureConversionClosed : I.temperatureConversion
  iceVolumeCorrectionClosed : I.iceVolumeCorrection
  calibrationUncertaintyClosed : I.calibrationUncertainty

def IsotopicPaleothermometryClosed (M : MilankovitchCyclePackage) (I : IsotopicPaleothermometryPackage M) : Prop :=
  I.temperatureConversion ∧ I.iceVolumeCorrection ∧ I.calibrationUncertainty

theorem isotopic_paleothermometry_closed_from_evidence (M : MilankovitchCyclePackage) (I : IsotopicPaleothermometryPackage M) (Ev : IsotopicPaleothermometryEvidence M I) : IsotopicPaleothermometryClosed M I := by
  exact And.intro Ev.temperatureConversionClosed (And.intro Ev.iceVolumeCorrectionClosed Ev.calibrationUncertaintyClosed)

end ClimateScienceClimateSensitivityCanonicalLaneLean
end HautevilleHouse