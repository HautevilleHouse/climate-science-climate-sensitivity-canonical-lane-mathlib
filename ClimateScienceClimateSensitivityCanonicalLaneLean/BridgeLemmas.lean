import ClimateScienceClimateSensitivityCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateSensitivityCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ClimateWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ClimateScienceClimateSensitivityCanonicalLaneLean
end HautevilleHouse