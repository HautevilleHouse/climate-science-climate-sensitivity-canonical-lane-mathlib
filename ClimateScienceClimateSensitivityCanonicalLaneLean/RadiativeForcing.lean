import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ClimateScienceClimateSensitivityCanonicalLaneLean

structure RadiativeForcingPackage where
  source : Type u
  magnitude : Type v
  radiativeForcingValue : Prop
  stratosphericTemperatureAdjustment : Prop
  efficacyFactor : Prop

structure RadiativeForcingEvidence (R : RadiativeForcingPackage) where
  radiativeForcingValueClosed : R.radiativeForcingValue
  stratosphericTemperatureAdjustmentClosed : R.stratosphericTemperatureAdjustment
  efficacyFactorClosed : R.efficacyFactor

def RadiativeForcingClosed (R : RadiativeForcingPackage) : Prop :=
  R.radiativeForcingValue ∧ R.stratosphericTemperatureAdjustment ∧ R.efficacyFactor

theorem radiative_forcing_closed_from_evidence (R : RadiativeForcingPackage) (E : RadiativeForcingEvidence R) : RadiativeForcingClosed R := by
  exact And.intro E.radiativeForcingValueClosed (And.intro E.stratosphericTemperatureAdjustmentClosed E.efficacyFactorClosed)

end ClimateScienceClimateSensitivityCanonicalLaneLean
end HautevilleHouse