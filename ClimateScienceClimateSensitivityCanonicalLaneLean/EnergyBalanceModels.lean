import ClimateScienceClimateSensitivityCanonicalLaneLean.RadiativeForcing

namespace HautevilleHouse
namespace ClimateScienceClimateSensitivityCanonicalLaneLean

structure EnergyBalanceModelPackage (R : RadiativeForcingPackage) where
  solarInsolation : Prop
  albedo : Prop
  olr : Prop
  equilibrium : Prop

structure EnergyBalanceModelEvidence (R : RadiativeForcingPackage) (E : EnergyBalanceModelPackage R) where
  solarInsolationClosed : E.solarInsolation
  albedoClosed : E.albedo
  olrClosed : E.olr
  equilibriumClosed : E.equilibrium

def EnergyBalanceModelClosed (R : RadiativeForcingPackage) (E : EnergyBalanceModelPackage R) : Prop :=
  E.solarInsolation ∧ E.albedo ∧ E.olr ∧ E.equilibrium

theorem energy_balance_model_closed_from_evidence (R : RadiativeForcingPackage) (E : EnergyBalanceModelPackage R) (Ev : EnergyBalanceModelEvidence R E) : EnergyBalanceModelClosed R E := by
  exact And.intro Ev.solarInsolationClosed (And.intro Ev.albedoClosed (And.intro Ev.olrClosed Ev.equilibriumClosed))

end ClimateScienceClimateSensitivityCanonicalLaneLean
end HautevilleHouse