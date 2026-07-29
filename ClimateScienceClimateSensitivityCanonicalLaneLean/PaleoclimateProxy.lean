import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateSensitivityCanonicalLaneLean

structure PaleoclimateProxyPackage where
  isotopeRatio : Prop
  temperatureCalibration : Prop
  iceCoreLayerCount : Prop
  milankovitchOrbitalForcing : Prop
  dansgaardOeschgerEventDetected : Prop

structure PaleoclimateProxyEvidence (P : PaleoclimateProxyPackage) where
  isotopeRatioClosed : P.isotopeRatio
  temperatureCalibrationClosed : P.temperatureCalibration
  iceCoreLayerCountClosed : P.iceCoreLayerCount
  milankovitchOrbitalForcingClosed : P.milankovitchOrbitalForcing
  dansgaardOeschgerEventDetectedClosed : P.dansgaardOeschgerEventDetected

def PaleoclimateProxyClosed (P : PaleoclimateProxyPackage) : Prop :=
  P.isotopeRatio ∧ P.temperatureCalibration ∧ P.iceCoreLayerCount ∧
  P.milankovitchOrbitalForcing ∧ P.dansgaardOeschgerEventDetected

theorem paleoclimate_proxy_closed_from_evidence (P : PaleoclimateProxyPackage)
    (Ev : PaleoclimateProxyEvidence P) : PaleoclimateProxyClosed P := by
  exact And.intro Ev.isotopeRatioClosed
    (And.intro Ev.temperatureCalibrationClosed
      (And.intro Ev.iceCoreLayerCountClosed
        (And.intro Ev.milankovitchOrbitalForcingClosed Ev.dansgaardOeschgerEventDetectedClosed)))

end ClimateScienceClimateSensitivityCanonicalLaneLean
end HautevilleHouse