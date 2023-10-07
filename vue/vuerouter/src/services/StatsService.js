import axios from 'axios';

export default {
    getMaxByStat(stat){
        return axios.get("/max/" + stat);
    },

    getGamesByTeam(team1){
        return axios.get("/game/" + team1);
    },

    getPerGameStat(playerName, statType){
        return axios.get("/perGame", {name: playerName, stat: statType})
    },

    getPlayerStats(name){
        return axios.get("/stats/" + name);
    },

    getPlayersByTeam(team){
        return axios.get("/" + team + "/players");
    },

    addGameStats(game){
        return axios.post("/stats/game", game)
    },

    addPlayerStats(player){
        return axios.post("/stats/player", player);
    }
}