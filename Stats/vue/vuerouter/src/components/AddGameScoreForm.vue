<template>
    <div class = "wrap">       
            
            <div class = "text">
                <h2>Add Game Scores</h2>
                <form class = "add-game-score-form" v-on:submit.prevent="addGame">
                    <div class = "form-entry" id = "team1-name-entry">
                        <label for="team1">Home Team Name: </label>
                        <select name="team1" id="team1" v-model="game.home_team_name">
                            <option v-for="team in $store.state.teams"
                            :value= "team.nickname" 
                            :key="team.nickname">
                                {{team.city + ' ' + team.nickname}}
                            </option>
                        </select>
                    </div>

                    <div class = "form-entry" id = "team2-name-entry">
                        <label for="team2">Away Team Name: </label>
                        <select name="team2" id="team2" v-model="game.away_team_name">
                            <option v-for="team in $store.state.teams"
                            :value= "team.nickname" 
                            :key="team.nickname">
                                {{team.city + ' ' + team.nickname}}
                            </option>
                        </select>
                    </div>
                    
                                        
                    <div class = "form-entry">
                        <label for="team-1-points">Home Points: </label>
                        <input v-model="game.home_team_score" name="team-1-points" id="team-1-points" type = "number"/>
                    </div>

                    <div class = "form-entry">
                        <label for="team-2-points">Away Points: </label>
                        <input v-model="game.away_team_score" name="team-2-points" id="team-2-points" type = "number"/>
                    </div>

                    <div class = "form-entry">
                        <input  type="submit"/>  
                    </div>
                </form>

                <div class = "offline" v-if="serverOffline">
                    Server is Offline
                </div>
            </div>
    </div>
</template>

<script>
import service from '../services/StatsService.js';

export default {
    data(){
        return {
            serverOffline: false,
            game: {
                home_team_name: '',
                away_team_name: '',
                home_team_score: 0,
                away_team_score: 0
            }
            
        }
    },
    
    methods: {
        addGame(){
            service.addGameStats(this.game).then(
                (response) => {
                    if(response.status == 200){
                        this.game = {
                            home_team_name: '',
                            away_team_name: '',
                            home_team_score: 0,
                            away_team_score: 0 
                        }

                        window.alert("Success!");
                    }
                }
            ).catch(
                (error) => {
                    if(error.response){
                        console.log(error.response);
                    } else if(error.request){
                        this.serverOffline = true;
                    }
                }
            )
        }
    }
}
</script>

<style scoped>

</style>
