import ClimateScienceClimateSensitivityCanonicalLaneLean.RadiativeForcing

namespace HautevilleHouse
namespace ClimateScienceClimateSensitivityCanonicalLaneLean

structure MilankovitchCyclePackage (R : RadiativeForcingPackage) where
  eccentricity : Prop
  obliquity : Prop
  precession : Prop
  orbitalForcingComputed : Prop

structure MilankovitchCycleEvidence (R : RadiativeForcingPackage) (M : MilankovitchCyclePackage R) where
  eccentricityClosed : M.eccentricity
  obliquityClosed : M.obliquity
  precessionClosed : M.precession
  orbitalForcingComputedClosed : M.orbitalForcingComputed

def MilankovitchCycleClosed (R : RadiativeForcingPackage) (M : MilankovitchCyclePackage R) : Prop :=
  M.eccentricity ∧ M.obliquity ∧ M.precession ∧ M.orbitalForcingComputed

theorem milankovitch_cycle_closed_from_evidence (R : RadiativeForcingPackage) (M : MilankovitchCyclePackage R) (Ev : MilankovitchCycleEvidence R M) : MilankovitchCycleClosed R M := by
  exact And.intro Ev.eccentricityClosed (And.intro Ev.obliquityClosed (And.intro Ev.precessionClosed Ev.orbitalForcingComputedClosed))

end ClimateScienceClimateSensitivityCanonicalLaneLean
end HautevilleHouse