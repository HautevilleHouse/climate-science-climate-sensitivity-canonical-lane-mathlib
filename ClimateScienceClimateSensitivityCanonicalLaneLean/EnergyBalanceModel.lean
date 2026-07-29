import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateSensitivityCanonicalLaneLean

structure EnergyBalanceModelPackage where
  solarConstant : Prop
  albedo : Prop
  greenhouseEffect : Prop
  outgoingLongwaveRadiation : Prop
  equilibriumTemperature : Prop

structure EnergyBalanceModelEvidence (E : EnergyBalanceModelPackage) where
  solarConstantClosed : E.solarConstant
  albedoClosed : E.albedo
  greenhouseEffectClosed : E.greenhouseEffect
  outgoingLongwaveRadiationClosed : E.outgoingLongwaveRadiation
  equilibriumTemperatureClosed : E.equilibriumTemperature

def EnergyBalanceModelClosed (E : EnergyBalanceModelPackage) : Prop :=
  E.solarConstant ∧ E.albedo ∧ E.greenhouseEffect ∧ E.outgoingLongwaveRadiation ∧ E.equilibriumTemperature

theorem energy_balance_model_closed_from_evidence (E : EnergyBalanceModelPackage)
    (Ev : EnergyBalanceModelEvidence E) : EnergyBalanceModelClosed E := by
  exact And.intro Ev.solarConstantClosed
    (And.intro Ev.albedoClosed
      (And.intro Ev.greenhouseEffectClosed
        (And.intro Ev.outgoingLongwaveRadiationClosed Ev.equilibriumTemperatureClosed)))

end ClimateScienceClimateSensitivityCanonicalLaneLean
end HautevilleHouse