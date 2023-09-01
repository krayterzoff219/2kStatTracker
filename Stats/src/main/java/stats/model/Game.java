package stats.model;

import com.fasterxml.jackson.annotation.JsonProperty;

public class Game {

    @JsonProperty("home_team_name")
    private String homeName;
    @JsonProperty("away_team_name")
    private String awayName;
    @JsonProperty("home_team_score")
    private int homeScore;
    @JsonProperty("away_team_score")
    private int awayScore;



    public String getHomeName() {
        return homeName;
    }

    public void setHomeName(String homeName) {
        this.homeName = homeName;
    }

    public String getAwayName() {
        return awayName;
    }

    public void setAwayName(String awayName) {
        this.awayName = awayName;
    }

    public int getHomeScore() {
        return homeScore;
    }

    public void setHomeScore(int homeScore) {
        this.homeScore = homeScore;
    }

    public int getAwayScore() {
        return awayScore;
    }

    public void setAwayScore(int awayScore) {
        this.awayScore = awayScore;
    }
}
