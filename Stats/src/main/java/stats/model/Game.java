package stats.model;

import com.fasterxml.jackson.annotation.JsonProperty;

public class Game {
    private int id;
    @JsonProperty("home_team_id")
    private int homeId;
    @JsonProperty("away_team_id")
    private int awayId;
    @JsonProperty("home_team_score")
    private int homeScore;
    @JsonProperty("away_team_score")
    private int awayScore;
}
