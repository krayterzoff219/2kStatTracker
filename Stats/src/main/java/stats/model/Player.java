package stats.model;

import com.fasterxml.jackson.annotation.JsonProperty;

public class Player {

    @JsonProperty("team_name")
    private String teamName;

    private String name;


    public String getTeamName() {
        return teamName;
    }

    public void setTeamName(String teamName) {
        this.teamName = teamName;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

}
