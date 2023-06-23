//mlb teams
class mlbTeam {
  static mlbLogo(String abr) {
    Map teams = {
      "ARI": "assets/mlb/main/arizona-logo.png",
      "ATL": "assets/mlb/main/atlanta-logo.png",
      "BAL": "assets/mlb/main/baltimore-logo.png",
      "BOS": "assets/mlb/main/boston-logo.png",
      "CHC": "assets/mlb/main/chicago-cubs-logo.png",
      "CHW": "assets/mlb/main/chicago-white-sox-logo.png",
      "CIN": "assets/mlb/main/cincinnati-logo.png",
      "CLE": "assets/mlb/main/cleveland-logo.png",
      "COL": "assets/mlb/main/colorado-logo.png",
      "DET": "assets/mlb/main/detroit-logo.png",
      "HOU": "assets/mlb/main/houston-logo.png",
      "KC": "assets/mlb/main/kansas-city-logo.png",
      "LAA": "assets/mlb/main/los-angeles-angles-logo.png",
      "LAD": "assets/mlb/main/los-angeles-dodgers-logo.png",
      "MIA": "assets/mlb/main/miami-logo.png",
      "MIL": "assets/mlb/main/milwaukee-logo.png",
      "MIN": "assets/mlb/main/minnesota-logo.png",
      "NYM": "assets/mlb/main/new-york-mets-logo.png",
      "NYY": "assets/mlb/main/new-york-yankees-logo.png",
      "OAK": "assets/mlb/main/oakland-logo.png",
      "PHI": "assets/mlb/main/philadelphia-logo.png",
      "PIT": "assets/mlb/main/pittsburgh-logo.png",
      "SD": "assets/mlb/main/san-diego-logo.png",
      "SF": "assets/mlb/main/san-francisco-logo.png",
      "SEA": "assets/mlb/main/seattle-logo.png",
      "STL": "assets/mlb/main/st-louis-logo.png",
      "TB": "assets/mlb/main/tampa-logo.png",
      "TEX": "assets/mlb/main/texas-logo.png",
      "TOR": "assets/mlb/main/toronto-logo.png",
      "WSH": "assets/mlb/main/washington-logo.png",
    };

    return teams[abr];
  }

  static mlbCap(String abr) {
    Map cap = {
      "ARI": "assets/mlb/cap/arizona-cap.png",
      "ATL": "assets/mlb/cap/atlanta-cap.png",
      "BAL": "assets/mlb/cap/baltimore-cap.png",
      "BOS": "assets/mlb/cap/boston-cap.png",
      "CHC": "assets/mlb/cap/chicago-cubs-cap.png",
      "CHW": "assets/mlb/cap/chicago-white-sox-cap.png",
      "CIN": "assets/mlb/cap/cincinnati-cap.png",
      "CLE": "assets/mlb/cap/cleveland-cap.png",
      "COL": "assets/mlb/cap/colorado-cap.png",
      "DET": "assets/mlb/cap/detroit-cap.png",
      "HOU": "assets/mlb/cap/houston-cap.png",
      "KC": "assets/mlb/cap/kansas-city-cap.png",
      "LAA": "assets/mlb/cap/los-angeles-angles-cap.png",
      "LAD": "assets/mlb/cap/los-angeles-dodgers-cap.png",
      "MIA": "assets/mlb/cap/miami-cap.png",
      "MIL": "assets/mlb/cap/milwaukee-cap.png",
      "MIN": "assets/mlb/cap/minnesota-cap.png",
      "NYM": "assets/mlb/cap/new-york-mets-cap.png",
      "NYY": "assets/mlb/cap/new-york-yankees-cap.png",
      "OAK": "assets/mlb/cap/oakland-cap.png",
      "PHI": "assets/mlb/cap/philadelphia-cap.png",
      "PIT": "assets/mlb/cap/pittsburgh-cap.png",
      "SD": "assets/mlb/cap/san-diego-cap.png",
      "SF": "assets/mlb/cap/san-francisco-cap.png",
      "SEA": "assets/mlb/cap/seattle-cap.png",
      "STL": "assets/mlb/cap/st-louis-cap.png",
      "TB": "assets/mlb/cap/tampa-cap.png",
      "TEX": "assets/mlb/cap/texas-cap.png",
      "TOR": "assets/mlb/cap/toronto-cap.png",
      "WSH": "assets/mlb/cap/washington-cap.png",
    };

    return cap[abr];
  }
}
