<template>
    <div>
        <form class = "analyze-form" v-on:submit.prevent="top5ByStat">
                    <div class = "form-entry" id = "stat-entry">
                        <label for="statSelect">Stat: </label>
                        <select name="statSelect" id="statSelect" v-model="stat">
                            <option value = "points">Points</option>
                            <option value = "rebounds">Rebounds</option>
                            <option value = "assists">Assists</option>
                            <option value = "steals">Steals</option>
                            <option value = "blocks">Blocks</option>
                            <option value = "turnovers">Turnovers</option>
                            <option value = "off_rebounds">Off. Rebounds</option>
                            <option value = "fouls">Fouls</option>
                            <option value = "dunks">Dunks</option>
                            <option value = "fg">FG%</option>
                            <option value = "3pt">3PT%</option>
                            <option value = "ft">FT%</option>
                        </select>
                    </div>

                    <div class = "form-entry" id = "analyze-submit-entry">
                        <input id = "analyze-form-submit" type="submit"/>  
                    </div>
                </form>

                <p>*ALL STATS ARE PER GAME STATS*</p>
        <table v-if="isLoaded">
                    <thead>
                        <tr class = "head-row">
                            <th>Name</th>
                            <th>Points</th>
                            <th>Rebounds</th>
                            <th>Assists</th>
                            <th>Steals</th>
                            <th>Blocks</th>
                            <th>Turnovers</th>
                            <th>FG%</th>
                            <th>3PT%</th>
                            <th>FT%</th>
                            <th>OReb</th>
                            <th>Fouls</th>
                            <th>Dunks</th>
                        </tr>
                    </thead>
                    

                    <!-- Bind table to data values so it updates on repeated calls -->
                    <!-- Make FG% calls work -->
                    <tbody>
                        <tr class = "odd-row">
                            <td>{{players[0].name}}</td>
                            <td>{{players[0].points}}</td>
                            <td>{{players[0].rebounds}}</td>
                            <td>{{players[0].assists}}</td>
                            <td>{{players[0].steals}}</td>
                            <td>{{players[0].blocks}}</td>
                            <td>{{players[0].turnovers}}</td>
                            <td>{{players[0].fg_percent}}</td>
                            <td>{{players[0].threes_percent}}</td>
                            <td>{{players[0].ft_percent}}</td>
                            <td>{{players[0].off_rebounds}}</td>
                            <td>{{players[0].fouls}}</td>
                            <td>{{players[0].dunks}}</td>
                        </tr>
                        <tr class = "even-row">
                            <td>{{players[1].name}}</td>
                            <td>{{players[1].points}}</td>
                            <td>{{players[1].rebounds}}</td>
                            <td>{{players[1].assists}}</td>
                            <td>{{players[1].steals}}</td>
                            <td>{{players[1].blocks}}</td>
                            <td>{{players[1].turnovers}}</td>
                            <td>{{players[1].fg_percent}}</td>
                            <td>{{players[1].threes_percent}}</td>
                            <td>{{players[1].ft_percent}}</td>
                            <td>{{players[1].off_rebounds}}</td>
                            <td>{{players[1].fouls}}</td>
                            <td>{{players[1].dunks}}</td>
                        </tr>
                        <tr class = "odd-row">
                            <td>{{players[2].name}}</td>
                            <td>{{players[2].points}}</td>
                            <td>{{players[2].rebounds}}</td>
                            <td>{{players[2].assists}}</td>
                            <td>{{players[2].steals}}</td>
                            <td>{{players[2].blocks}}</td>
                            <td>{{players[2].turnovers}}</td>
                            <td>{{players[2].fg_percent}}</td>
                            <td>{{players[2].threes_percent}}</td>
                            <td>{{players[2].ft_percent}}</td>
                            <td>{{players[2].off_rebounds}}</td>
                            <td>{{players[2].fouls}}</td>
                            <td>{{players[2].dunks}}</td>
                        </tr>
                        <tr class = "even-row">
                            <td>{{players[3].name}}</td>
                            <td>{{players[3].points}}</td>
                            <td>{{players[3].rebounds}}</td>
                            <td>{{players[3].assists}}</td>
                            <td>{{players[3].steals}}</td>
                            <td>{{players[3].blocks}}</td>
                            <td>{{players[3].turnovers}}</td>
                            <td>{{players[3].fg_percent}}</td>
                            <td>{{players[3].threes_percent}}</td>
                            <td>{{players[3].ft_percent}}</td>
                            <td>{{players[3].off_rebounds}}</td>
                            <td>{{players[3].fouls}}</td>
                            <td>{{players[3].dunks}}</td>
                        </tr>
                        <tr class = "odd-row">
                            <td>{{players[4].name}}</td>
                            <td>{{players[4].points}}</td>
                            <td>{{players[4].rebounds}}</td>
                            <td>{{players[4].assists}}</td>
                            <td>{{players[4].steals}}</td>
                            <td>{{players[4].blocks}}</td>
                            <td>{{players[4].turnovers}}</td>
                            <td>{{players[4].fg_percent}}</td>
                            <td>{{players[4].threes_percent}}</td>
                            <td>{{players[4].ft_percent}}</td>
                            <td>{{players[4].off_rebounds}}</td>
                            <td>{{players[4].fouls}}</td>
                            <td>{{players[4].dunks}}</td>
                        </tr>
                    </tbody>
                    
                </table>
    </div>
</template>

<script>
import service from '../services/StatsService.js';

export default {
    data(){
        return{
            players: [],
            isLoaded: false,
            stat: ''
        }
    },

    methods: {
        top5ByStat(){
            service.getMaxByStat(this.stat).then(
            (response) => {
                let playerName = response.data[0].name;

                service.getPlayerStats(playerName).then(
                    (secResponse) => {
                        let player = {
                            name: '',
                            points: 0,
                            rebounds: 0,
                            assists: 0,
                            steals: 0,
                            blocks: 0,
                            turnovers: 0,
                            fg_percent: 0,
                            threes_percent: 0,
                            ft_percent: 0,
                            off_rebounds: 0,
                            fouls: 0,
                            dunks: 0

                        };
                        player.name = playerName;
                        player.points = secResponse.data.points;
                        player.rebounds = secResponse.data.rebounds;
                        player.assists = secResponse.data.assists;
                        player.steals = secResponse.data.steals;
                        player.blocks = secResponse.data.blocks;
                        player.turnovers = secResponse.data.turnovers;
                        player.fg_percent = Math.round(10000 * secResponse.data.fgm / secResponse.data.fga)/100;
                        player.threes_percent = Math.round(10000 * secResponse.data.threes_made / secResponse.data.threes_attempted)/100;
                        player.ft_percent = Math.round(10000 * secResponse.data.ftm / secResponse.data.fta)/100;
                        player.off_rebounds = secResponse.data.off_rebounds;
                        player.fouls = secResponse.data.fouls;
                        player.dunks = secResponse.data.dunks;
                        this.players.push(player);
                    

                        let playerName2 = response.data[1].name;
                        service.getPlayerStats(playerName2).then(
                            (secResponse) => {
                                let player = {
                                    name: '',
                                    points: 0,
                                    rebounds: 0,
                                    assists: 0,
                                    steals: 0,
                                    blocks: 0,
                                    turnovers: 0,
                                    fg_percent: 0,
                                    threes_percent: 0,
                                    ft_percent: 0,
                                    off_rebounds: 0,
                                    fouls: 0,
                                    dunks: 0

                                };
                                player.name = playerName2;
                                player.points = secResponse.data.points;
                                player.rebounds = secResponse.data.rebounds;
                                player.assists = secResponse.data.assists;
                                player.steals = secResponse.data.steals;
                                player.blocks = secResponse.data.blocks;
                                player.turnovers = secResponse.data.turnovers;
                                player.fg_percent = Math.round(10000 * secResponse.data.fgm / secResponse.data.fga)/100;
                                player.threes_percent = Math.round(10000 * secResponse.data.threes_made / secResponse.data.threes_attempted)/100;
                                player.ft_percent = Math.round(10000 * secResponse.data.ftm / secResponse.data.fta)/100;
                                player.off_rebounds = secResponse.data.off_rebounds;
                                player.fouls = secResponse.data.fouls;
                                player.dunks = secResponse.data.dunks;
                                this.players.push(player);

                                let playerName3 = response.data[2].name;
                                service.getPlayerStats(playerName3).then(
                                    (secResponse) => {
                                        let player = {
                                            name: '',
                                            points: 0,
                                            rebounds: 0,
                                            assists: 0,
                                            steals: 0,
                                            blocks: 0,
                                            turnovers: 0,
                                            fg_percent: 0,
                                            threes_percent: 0,
                                            ft_percent: 0,
                                            off_rebounds: 0,
                                            fouls: 0,
                                            dunks: 0

                                        };
                                        player.name = playerName3;
                                        player.points = secResponse.data.points;
                                        player.rebounds = secResponse.data.rebounds;
                                        player.assists = secResponse.data.assists;
                                        player.steals = secResponse.data.steals;
                                        player.blocks = secResponse.data.blocks;
                                        player.turnovers = secResponse.data.turnovers;
                                        player.fg_percent = Math.round(10000 * secResponse.data.fgm / secResponse.data.fga)/100;
                                        player.threes_percent = Math.round(10000 * secResponse.data.threes_made / secResponse.data.threes_attempted)/100;
                                        player.ft_percent = Math.round(10000 * secResponse.data.ftm / secResponse.data.fta)/100;
                                        player.off_rebounds = secResponse.data.off_rebounds;
                                        player.fouls = secResponse.data.fouls;
                                        player.dunks = secResponse.data.dunks;
                                        this.players.push(player);

                                        let playerName4 = response.data[3].name;
                                        service.getPlayerStats(playerName4).then(
                                            (secResponse) => {
                                                let player = {
                                                    name: '',
                                                    points: 0,
                                                    rebounds: 0,
                                                    assists: 0,
                                                    steals: 0,
                                                    blocks: 0,
                                                    turnovers: 0,
                                                    fg_percent: 0,
                                                    threes_percent: 0,
                                                    ft_percent: 0,
                                                    off_rebounds: 0,
                                                    fouls: 0,
                                                    dunks: 0

                                                };
                                                player.name = playerName4;
                                                player.points = secResponse.data.points;
                                                player.rebounds = secResponse.data.rebounds;
                                                player.assists = secResponse.data.assists;
                                                player.steals = secResponse.data.steals;
                                                player.blocks = secResponse.data.blocks;
                                                player.turnovers = secResponse.data.turnovers;
                                                player.fg_percent = Math.round(10000 * secResponse.data.fgm / secResponse.data.fga)/100;
                                                player.threes_percent = Math.round(10000 * secResponse.data.threes_made / secResponse.data.threes_attempted)/100;
                                                player.ft_percent = Math.round(10000 * secResponse.data.ftm / secResponse.data.fta)/100;
                                                player.off_rebounds = secResponse.data.off_rebounds;
                                                player.fouls = secResponse.data.fouls;
                                                player.dunks = secResponse.data.dunks;
                                                this.players.push(player);


                                                let playerName5 = response.data[4].name;
                                                service.getPlayerStats(playerName5).then(
                                                    (secResponse) => {
                                                        let player = {
                                                            name: '',
                                                            points: 0,
                                                            rebounds: 0,
                                                            assists: 0,
                                                            steals: 0,
                                                            blocks: 0,
                                                            turnovers: 0,
                                                            fg_percent: 0,
                                                            threes_percent: 0,
                                                            ft_percent: 0,
                                                            off_rebounds: 0,
                                                            fouls: 0,
                                                            dunks: 0

                                                        };
                                                        player.name = playerName5;
                                                        player.points = secResponse.data.points;
                                                        player.rebounds = secResponse.data.rebounds;
                                                        player.assists = secResponse.data.assists;
                                                        player.steals = secResponse.data.steals;
                                                        player.blocks = secResponse.data.blocks;
                                                        player.turnovers = secResponse.data.turnovers;
                                                        player.fg_percent = Math.round(10000 * secResponse.data.fgm / secResponse.data.fga)/100;
                                                        player.threes_percent = Math.round(10000 * secResponse.data.threes_made / secResponse.data.threes_attempted)/100;
                                                        player.ft_percent = Math.round(10000 * secResponse.data.ftm / secResponse.data.fta)/100;
                                                        player.off_rebounds = secResponse.data.off_rebounds;
                                                        player.fouls = secResponse.data.fouls;
                                                        player.dunks = secResponse.data.dunks;
                                                        this.players.push(player);
                                                        console.log(this.players);
                                                        this.isLoaded = true;
                                                    }
                                                );

                                            }
                                        );
                                    }
                                );
                            }
                        );
                    }
                
                );
            }
            ).catch(
                (error) => {
                    if(error.response){
                        console.log(error.response);
                    } else if(error.request){
                        window.alert("Server Error");
                    }
                }
            );
        }
    }
}
</script>

<style scoped>

</style>
