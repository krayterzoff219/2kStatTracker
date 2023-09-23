<template>
    <div class = "wrap">
        

            <div class = "text">
                <h2>Add Stats</h2>
                                
                <form class = "add-form">
                    <div class = "form-entry" id = "team-name-entry">
                        <label for="team">Team Name: </label>
                        <select name="team" id="team" v-model="teamName" v-on:change="fillPlayers">
                            <option v-for="team in $store.state.teams"
                            :value= "team.nickname" 
                            :key="team.nickname">
                                {{team.city + ' ' + team.nickname}}
                            </option>
                        </select>
                    </div>
                    
                    <div class = "form-entry" id = "player-name-entry">
                        <label for="player">Player Name:</label>
                        <select name="player" id="player">
                            <option v-for="player in this.players"
                            :value="player"
                            :key="player">
                                {{player}} 
                                </option>
                        </select>
                    </div>
                    
                    <div class = "form-entry" id = "points-entry">
                        <label for="points">Points: </label>
                        <input name="points" id="points" type = "number" required/>
                    </div>

                    <div class = "form-entry" id = "rebounds-entry">
                        <label for="rebounds">Rebounds: </label>
                        <input name="rebounds" id="rebounds" type = "number" required/>
                    </div>




                    <div class = "form-entry" id = "assists-entry">
                        <label for="assists">Assists: </label>
                        <input name="assists" id="assists" type = "number" required/>
                    </div>

                    <div class = "form-entry" id = "steals-entry">
                        <label for="steals">Steals: </label>
                        <input name="steals" id="steals" type = "number" required/>
                    </div>

                    <div class = "form-entry" id = "blocks-entry">
                        <label for="blocks">Blocks: </label>
                        <input name="blocks" id="blocks" type = "number" required/>
                    </div>

                    <div class = "form-entry" id = "turnovers-entry">
                        <label for="turnovers">Turnovers: </label>
                        <input name="turnovers" id="turnovers" type = "number" required/>
                    </div>

                    <div class = "form-entry" id = "fgm-entry">
                        <label for="fgm">FGM: </label>
                        <input name="fgm" id="fgm" type = "number" required/>
                    </div>

                    <div class = "form-entry" id = "fga-entry">
                        <label for="fga">FGA: </label>
                        <input name="fga" id="fga" type = "number" required/>
                    </div>

                    <div class = "form-entry" id = "threes-made-entry">
                        <label for="threes-made">3PTM: </label>
                        <input name="threes-made" id="threes-made" type = "number" required/>
                    </div>

                    <div class = "form-entry" id = "threes-attempted-entry">
                        <label for="threes-attempted">3PTA: </label>
                        <input name="threes-attempted" id="threes-attempted" type = "number" required/>
                    </div>

                    <div class = "form-entry" id = "ftm-entry">
                        <label for="ftm">FTM: </label>
                        <input name="ftm" id="ftm" type = "number" required/>
                    </div>

                    <div class = "form-entry" id = "fta-entry">
                        <label for="fta">FTA: </label>
                        <input name="fta" id="fta" type = "number" required/>
                    </div>

                    <div class = "form-entry" id = "off-rebounds-entry">
                        <label for="off-rebounds">Off. Rebounds: </label>
                        <input name="off-rebounds" id="off-rebounds" type = "number" required/>
                    </div>

                    <div class = "form-entry" id = "fouls-entry">
                        <label for="fouls">Fouls: </label>
                        <input name="fouls" id="fouls" type = "number" required/>
                    </div>

                    <div class = "form-entry" id = "dunks-entry">
                        <label for="dunks">Dunks: </label>
                        <input name="dunks" id="dunks" type = "number" required/>
                    </div>

                    <div class = "form-entry" id = "submit-entry">
                        <input id = "form-submit" type="submit"/>  
                    </div>
                </form>
            </div>
            
       
    </div>
</template>

<script>
import service from '../services/StatsService.js';

export default {
    data(){
        return {
            players: [],
            teamName: ''
        }
    },

    methods: {
        fillPlayers(){
            this.players = [];
            console.log(this.teamName);
            service.getPlayersByTeam(this.teamName).then(
                (response) => {
                    console.log(response.data);
                    for(let i = 0; i < response.data.length; i++){
                        this.players.push(response.data[i]);
                    }
                    console.log(this.players);
                }
            )
        }
    }
}
</script>

<style>

</style>
