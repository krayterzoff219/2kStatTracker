import axios from 'axios';

export default {
    getMaxByStat(stat){
        return axios.get("/max/" + stat);
    },

    getGamesByTeam(team1, team2){
        return axios.get("/game/" + team1 + "/" + team2);
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

    addGameStats(){

    },

    addPlayerStats(){

    }
}