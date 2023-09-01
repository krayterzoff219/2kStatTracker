package stats.model;

import com.fasterxml.jackson.annotation.JsonProperty;

public class TotalPlayerStats {

    @JsonProperty("player_id")
    private int playerId;
    private int points;
    private int rebounds;
    private int assists;
    private int steals;
    private int blocks;
    private int turnovers;
    private int fgm;
    private int fga;
    @JsonProperty("threes_attempted")
    private int threesAttempted;
    @JsonProperty("threes_made")
    private int threesMade;
    private int ftm;
    private int fta;
    @JsonProperty("off_rebounds")
    private int offRebounds;
    private int fouls;
    private int dunks;

    public int getPlayerId() {
        return playerId;
    }

    public void setPlayerId(int playerId) {
        this.playerId = playerId;
    }

    public int getPoints() {
        return points;
    }

    public void setPoints(int points) {
        this.points = points;
    }

    public int getRebounds() {
        return rebounds;
    }

    public void setRebounds(int rebounds) {
        this.rebounds = rebounds;
    }

    public int getAssists() {
        return assists;
    }

    public void setAssists(int assists) {
        this.assists = assists;
    }

    public int getSteals() {
        return steals;
    }

    public void setSteals(int steals) {
        this.steals = steals;
    }

    public int getBlocks() {
        return blocks;
    }

    public void setBlocks(int blocks) {
        this.blocks = blocks;
    }

    public int getTurnovers() {
        return turnovers;
    }

    public void setTurnovers(int turnovers) {
        this.turnovers = turnovers;
    }

    public int getFgm() {
        return fgm;
    }

    public void setFgm(int fgm) {
        this.fgm = fgm;
    }

    public int getFga() {
        return fga;
    }

    public void setFga(int fga) {
        this.fga = fga;
    }

    public int getThreesMade() {
        return threesMade;
    }

    public void setThreesMade(int threesMade) {
        this.threesMade = threesMade;
    }

    public int getThreesAttempted() {
        return threesAttempted;
    }

    public void setThreesAttempted(int threesAttempted) {
        this.threesAttempted = threesAttempted;
    }

    public int getFtm() {
        return ftm;
    }

    public void setFtm(int ftm) {
        this.ftm = ftm;
    }

    public int getFta() {
        return fta;
    }

    public void setFta(int fta) {
        this.fta = fta;
    }

    public int getOffRebounds() {
        return offRebounds;
    }

    public void setOffRebounds(int offRebounds) {
        this.offRebounds = offRebounds;
    }

    public int getFouls() {
        return fouls;
    }

    public void setFouls(int fouls) {
        this.fouls = fouls;
    }

    public int getDunks() {
        return dunks;
    }

    public void setDunks(int dunks) {
        this.dunks = dunks;
    }
}
