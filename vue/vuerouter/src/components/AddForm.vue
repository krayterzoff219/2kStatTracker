<template>
    <div class = "wrap">
        

            <div class = "text">
                <h2>Add Stats</h2>
                                
                <form class = "add-form" v-on:submit.prevent="addPlayerStats">
                    <div class = "form-entry" id = "team-name-entry">
                        <label for="team">Team Name: </label>
                        <select name="team" id="team" v-model="teamName" v-on:change="fillPlayers(); fillGames();">
                            <option v-for="team in $store.state.teams"
                            :value= "team.nickname" 
                            :key="team.nickname">
                                {{team.city + ' ' + team.nickname}}
                            </option>
                        </select>
                    </div>
                    
                    <div class = "form-entry">
                        <label for="game-entry">Game: </label>
                        <select name="game-entry" id="game-entry" v-model="player.game_id">
                            <option v-for="game in this.games"
                            :key="game.id"
                            :value = "game.id">
                            {{game.id + '. ' + game.home_team_name + ' vs. ' + 
                            game.away_team_name + ' ' + game.home_team_score + ' - ' +
                            game.away_team_score}}
                            </option>
                        </select>
                    </div>

                    <div class = "form-entry" id = "player-name-entry">
                        <label for="player">Player Name:</label>
                        <select name="player" id="player" v-model="player.player_name">
                            <option v-for="player in this.players"
                            :value="player"
                            :key="player">
                                {{player}} 
                                </option>
                        </select>
                    </div>
                    
                    <div class = "form-entry" id = "points-entry">
                        <label for="points">Points: </label>
                        <input v-model="player.points" name="points" id="points" type = "number" required/>
                    </div>

                    <div class = "form-entry" id = "rebounds-entry">
                        <label for="rebounds">Rebounds: </label>
                        <input v-model="player.rebounds" name="rebounds" id="rebounds" type = "number" required/>
                    </div>




                    <div class = "form-entry" id = "assists-entry">
                        <label for="assists">Assists: </label>
                        <input v-model="player.assists" name="assists" id="assists" type = "number" required/>
                    </div>

                    <div class = "form-entry" id = "steals-entry">
                        <label for="steals">Steals: </label>
                        <input v-model="player.steals" name="steals" id="steals" type = "number" required/>
                    </div>

                    <div class = "form-entry" id = "blocks-entry">
                        <label for="blocks">Blocks: </label>
                        <input v-model="player.blocks" name="blocks" id="blocks" type = "number" required/>
                    </div>

                    <div class = "form-entry" id = "turnovers-entry">
                        <label for="turnovers">Turnovers: </label>
                        <input v-model="player.turnovers" name="turnovers" id="turnovers" type = "number" required/>
                    </div>

                    <div class = "form-entry" id = "fgm-entry">
                        <label for="fgm">FGM: </label>
                        <input v-model="player.fgm" name="fgm" id="fgm" type = "number" required/>
                    </div>

                    <div class = "form-entry" id = "fga-entry">
                        <label for="fga">FGA: </label>
                        <input v-model="player.fga" name="fga" id="fga" type = "number" required/>
                    </div>

                    <div class = "form-entry" id = "threes-made-entry">
                        <label for="threes-made">3PTM: </label>
                        <input v-model="player.threes_made" name="threes-made" id="threes-made" type = "number" required/>
                    </div>

                    <div class = "form-entry" id = "threes-attempted-entry">
                        <label for="threes-attempted">3PTA: </label>
                        <input v-model="player.threes_attempted" name="threes-attempted" id="threes-attempted" type = "number" required/>
                    </div>

                    <div class = "form-entry" id = "ftm-entry">
                        <label for="ftm">FTM: </label>
                        <input v-model="player.ftm" name="ftm" id="ftm" type = "number" required/>
                    </div>

                    <div class = "form-entry" id = "fta-entry">
                        <label for="fta">FTA: </label>
                        <input v-model="player.fta" name="fta" id="fta" type = "number" required/>
                    </div>

                    <div class = "form-entry" id = "off-rebounds-entry">
                        <label for="off-rebounds">Off. Rebounds: </label>
                        <input v-model="player.off_rebounds" name="off-rebounds" id="off-rebounds" type = "number" required/>
                    </div>

                    <div class = "form-entry" id = "fouls-entry">
                        <label for="fouls">Fouls: </label>
                        <input v-model="player.fouls" name="fouls" id="fouls" type = "number" required/>
                    </div>

                    <div class = "form-entry" id = "dunks-entry">
                        <label for="dunks">Dunks: </label>
                        <input v-model="player.dunks" name="dunks" id="dunks" type = "number" required/>
                    </div>

                    <div class = "form-entry" id = "submit-entry">
                        <input id = "form-submit" type="submit"/>  
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
            games: [],
            players: [],
            teamName: '',
            player: {
                game_id: 0,
                player_name: '',
                points: 0,
                rebounds: 0,
                assists: 0,
                steals: 0,
                blocks: 0,
                turnovers: 0,
                fgm: 0,
                fga: 0,
                threes_made: 0,
                threes_attempted: 0,
                ftm: 0,
                fta: 0,
                off_rebounds: 0,
                fouls: 0,
                dunks: 0
            }
        }
    },

    methods: {
        fillPlayers(){
            this.players = [];
            service.getPlayersByTeam(this.teamName).then(
                (response) => {
                    for(let i = 0; i < response.data.length; i++){
                        this.players.push(response.data[i]);
                    }
                }
            )
           
        },

        fillGames(){
            this.games = [];
            service.getGamesByTeam(this.teamName).then(
                (response) => {
                    for(let i = 0; i < response.data.length; i++){
                        this.games.push(response.data[i]);
                    }
                }
            )
           
        },

        addPlayerStats(){
            service.addPlayerStats(this.player).then(
                (response) => {
                    if(response.status == 200){
                        this.player = {
                            game_id: this.player.game_id,
                            player_name: '',
                            points: 0,
                            rebounds: 0,
                            assists: 0,
                            steals: 0,
                            blocks: 0,
                            turnovers: 0,
                            fgm: 0,
                            fga: 0,
                            threes_made: 0,
                            threes_attempted: 0,
                            ftm: 0,
                            fta: 0,
                            off_rebounds: 0,
                            fouls: 0,
                            dunks: 0
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

<style>

</style>
