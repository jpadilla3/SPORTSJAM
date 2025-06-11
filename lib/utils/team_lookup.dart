//mlb teams
class mlbTeam {
  static mlbLogo(String abr) {
    Map teams = {
      "AZ": "assets/mlb/main/arizona-logo.png",
      "ATL": "assets/mlb/main/atlanta-logo.png",
      "BAL": "assets/mlb/main/baltimore-logo.png",
      "BOS": "assets/mlb/main/boston-logo.png",
      "CHC": "assets/mlb/main/chicago-cubs-logo.png",
      "CWS": "assets/mlb/main/chicago-white-sox-logo.png",
      "CIN": "assets/mlb/main/cincinnati-logo.png",
      "CLE": "assets/mlb/main/cleveland-logo.png",
      "COL": "assets/mlb/main/colorado-logo.png",
      "DET": "assets/mlb/main/detroit-logo.png",
      "HOU": "assets/mlb/main/houston-logo.png",
      "KC": "assets/mlb/main/kansas-city-logo.png",
      "LAA": "assets/mlb/main/los-angeles-angels-logo.png",
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
    if (teams[abr] == null) {
      return teams["OAK"];
    } else {
      return teams[abr];
    }
  }

  static mlbCap(String abr) {
    Map cap = {
      "AZ": "assets/mlb/cap/arizona-cap.png",
      "ATL": "assets/mlb/cap/atlanta-cap.png",
      "BAL": "assets/mlb/cap/baltimore-cap.png",
      "BOS": "assets/mlb/cap/boston-cap.png",
      "CHC": "assets/mlb/cap/chicago-cubs-cap.png",
      "CWS": "assets/mlb/cap/chicago-white-sox-cap.png",
      "CIN": "assets/mlb/cap/cincinnati-cap.png",
      "CLE": "assets/mlb/cap/cleveland-cap.png",
      "COL": "assets/mlb/cap/colorado-cap.png",
      "DET": "assets/mlb/cap/detroit-cap.png",
      "HOU": "assets/mlb/cap/houston-cap.png",
      "KC": "assets/mlb/cap/kansas-city-cap.png",
      "LAA": "assets/mlb/cap/los-angeles-angels-cap.png",
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
      "SF": "assets/mlb/cap/san-francisco-giants-cap.png",
      "SEA": "assets/mlb/cap/seattle-cap.png",
      "STL": "assets/mlb/cap/st-louis-cap.png",
      "TB": "assets/mlb/cap/tampa-cap.png",
      "TEX": "assets/mlb/cap/texas-cap.png",
      "TOR": "assets/mlb/cap/toronto-cap.png",
      "WSH": "assets/mlb/cap/washington-cap.png",
    };

    if (cap[abr] == null) {
      return cap["OAK"];
    } else {
      return cap[abr];
    }
  }
}

class nflTeam {
  static nflLogo(String abr) {
    Map logo = {
      "ARI": "assets/nfl/arizona-logo.png",
      "ATL": "assets/nfl/atlanta-logo.png",
      "BAL": "assets/nfl/baltimore-logo.png",
      "NE": "assets/nfl/boston-logo.png",
      "BUF": "assets/nfl/buffalo-logo.png",
      "CAR": "assets/nfl/carolina-logo.png",
      "LAC": "assets/nfl/chargers-logo.png",
      "CHI": "assets/nfl/chicago-logo.png",
      "CIN": "assets/nfl/cincinnati-logo.png",
      "CLE": "assets/nfl/cleveland-logo.png",
      "DAL": "assets/nfl/dallas-logo.png",
      "DEN": "assets/nfl/denver-logo.png",
      "DET": "assets/nfl/detroit-logo.png",
      "HOU": "assets/nfl/houston-logo.png",
      "KC": "assets/nfl/chiefs-logo.png",
      "NYG": "assets/nfl/giants-logo.png",
      "IND": "assets/nfl/indianapolis-logo.png",
      "JAX": "assets/nfl/jacksonville-logo.png",
      "NYJ": "assets/nfl/jets-logo.png",
      "MIA": "assets/nfl/miami-logo.png",
      "MIN": "assets/nfl/minnesota-logo.png",
      "OAK": "assets/nfl/oakland-logo.png",
      "GB": "assets/nfl/packers-logo.png",
      "PHI": "assets/nfl/philadelphia-logo.png",
      "PIT": "assets/nfl/pittsburgh-logo.png",
      "LAR": "assets/nfl/rams-logo.png",
      "NO": "assets/nfl/saints-logo.png",
      "SEA": "assets/nfl/seattle-logo.png",
      "TB": "assets/nfl/tampa-logo.png",
      "TEN": "assets/nfl/tennessee-logo.png",
      "WSH": "assets/nfl/washington-logo.png",
      "SF": "assets/nfl/49ers-logo.png",
    };
    return logo[abr];
  }
}

class nbaTeam {
  static nbaLogo(String abr) {
    Map logo = {
      "ATL": "assets/nba/atlanta-logo.png",
      "BKN": "assets/nba/brooklyn-logo.png",
      "BOS": "assets/nba/boston-logo.png",
      "CHA": "assets/nba/charlotte-logo.png",
      "CHI": "assets/nba/chicago-logo.png",
      "CLE": "assets/nba/cleveland-logo.png",
      "LAC": "assets/nba/clippers-logo.png",
      "DAL": "assets/nba/dallas-logo.png",
      "DEN": "assets/nba/denver-logo.png",
      "DET": "assets/nba/detroit-logo.png",
      "GSW": "assets/nba/golden-state-logo.png",
      "HOU": "assets/nba/houston-logo.png",
      "IND": "assets/nba/indiana-logo.png",
      "NYK": "assets/nba/knicks-logo.png",
      "LAL": "assets/nba/lakers-logo.png",
      "MEM": "assets/nba/memphis-logo.png",
      "MIA": "assets/nba/miami-logo.png",
      "MIL": "assets/nba/milwaukee-logo.png",
      "MIN": "assets/nba/minnesota-logo.png",
      "ORL": "assets/nba/orlando-logo.png",
      "NO": "assets/nba/pelicans-logo.png",
      "PHI": "assets/nba/philadelphia-logo.png",
      "PHX": "assets/nba/pheonix-logo.png",
      "POR": "assets/nba/portland-logo.png",
      "SAC": "assets/nba/sacramento-logo.png",
      "SAS": "assets/nba/spurs-logo.png",
      "OKC": "assets/nba/thunder-logo.png",
      "UTA": "assets/nba/utah-logo.png",
      "TOR": "assets/nba/toronto-logo.png",
      "WSH": "assets/nba/washington-logo.png",
    };

    return logo[abr];
  }
}
