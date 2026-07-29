import ClimateScienceClimateSensitivityCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace ClimateScienceClimateSensitivityCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  classicalBoundary : String
  climateConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
  deriving Repr, DecidableEq

def sourceDescription : String :=
  "Climate sensitivity is constrained by feedback analysis and paleoclimate data."

def sourceRepository : String :=
  "climate-sensitivity-canonical-lane"

def baselineCertificateLane : String :=
  "climate_constrained"

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := sourceRepository
  , theoremName := sourceRepository
  , classicalBoundary := "Full climate dynamics remain outside this closure."
  , climateConstrainedStatement := "Climate sensitivity bound derived from admissible evidence."
  , certificateLane := baselineCertificateLane
  , carriedRemainder := "Unrestricted climate dynamics remain carried."
  }

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = sourceRepository := by
  rfl

theorem theorem_statement_certificate_lane_checked :
    sourceTheoremStatement.certificateLane = baselineCertificateLane := by
  rfl

end ClimateScienceClimateSensitivityCanonicalLaneLean
end HautevilleHouse