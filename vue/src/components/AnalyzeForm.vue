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
                <div class = "offline" v-if="serverOffline">
                    Server is Offline
                 </div>
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
                            <th>FGM</th>
                            <th>FGA</th>
                            <th>FG%</th>
                            <th>3PTM</th>
                            <th>3PTA</th>
                            <th>3PT%</th>
                            <th>FTM</th>
                            <th>FTA</th>
                            <th>FT%</th>
                            <th>OReb</th>
                            <th>Fouls</th>
                            <th>Dunks</th>
                        </tr>
                    </thead>
                    
                    <tbody>
                        <tr class = "odd-row">
                            <td>{{players[0].name}}</td>
                            <td>{{players[0].points}}</td>
                            <td>{{players[0].rebounds}}</td>
                            <td>{{players[0].assists}}</td>
                            <td>{{players[0].steals}}</td>
                            <td>{{players[0].blocks}}</td>
                            <td>{{players[0].turnovers}}</td>
                            <td>{{players[0].fgm}}</td>
                            <td>{{players[0].fga}}</td>
                            <td>{{players[0].fg_percent}}</td>
                            <td>{{players[0].threes_made}}</td>
                            <td>{{players[0].threes_attempted}}</td>
                            <td>{{players[0].threes_percent}}</td>
                            <td>{{players[0].ftm}}</td>
                            <td>{{players[0].fta}}</td>
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
                            <td>{{players[1].fgm}}</td>
                            <td>{{players[1].fga}}</td>
                            <td>{{players[1].fg_percent}}</td>
                            <td>{{players[1].threes_made}}</td>
                            <td>{{players[1].threes_attempted}}</td>
                            <td>{{players[1].threes_percent}}</td>
                            <td>{{players[1].ftm}}</td>
                            <td>{{players[1].fta}}</td>
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
                            <td>{{players[2].fgm}}</td>
                            <td>{{players[2].fga}}</td>
                            <td>{{players[2].fg_percent}}</td>
                            <td>{{players[2].threes_made}}</td>
                            <td>{{players[2].threes_attempted}}</td>
                            <td>{{players[2].threes_percent}}</td>
                            <td>{{players[2].ftm}}</td>
                            <td>{{players[2].fta}}</td>
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
                            <td>{{players[3].fgm}}</td>
                            <td>{{players[3].fga}}</td>
                            <td>{{players[3].fg_percent}}</td>
                            <td>{{players[3].threes_made}}</td>
                            <td>{{players[3].threes_attempted}}</td>
                            <td>{{players[3].threes_percent}}</td>
                            <td>{{players[3].ftm}}</td>
                            <td>{{players[3].fta}}</td>
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
                            <td>{{players[4].fgm}}</td>
                            <td>{{players[4].fga}}</td>
                            <td>{{players[4].fg_percent}}</td>
                            <td>{{players[4].threes_made}}</td>
                            <td>{{players[4].threes_attempted}}</td>
                            <td>{{players[4].threes_percent}}</td>
                            <td>{{players[4].ftm}}</td>
                            <td>{{players[4].fta}}</td>
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
            serverOffline: false,
            players: [
                {
                    name: '',
                    points: 0,
                    rebounds: 0,
                    assists: 0,
                    steals: 0,
                    blocks: 0,
                    turnovers: 0,
                    fgm: 0,
                    fga: 0,
                    fg_percent: 0,
                    threes_made: 0,
                    threes_attempted: 0,
                    threes_percent: 0,
                    ftm: 0,
                    fta: 0,
                    ft_percent: 0,
                    off_rebounds: 0,
                    fouls: 0,
                    dunks: 0

                },

                {
                    name: '',
                    points: 0,
                    rebounds: 0,
                    assists: 0,
                    steals: 0,
                    blocks: 0,
                    turnovers: 0,
                    fgm: 0,
                    fga: 0,
                    fg_percent: 0,
                    threes_made: 0,
                    threes_attempted: 0,
                    threes_percent: 0,
                    ftm: 0,
                    fta: 0,
                    ft_percent: 0,
                    off_rebounds: 0,
                    fouls: 0,
                    dunks: 0

                },

                {
                    name: '',
                    points: 0,
                    rebounds: 0,
                    assists: 0,
                    steals: 0,
                    blocks: 0,
                    turnovers: 0,
                    fgm: 0,
                    fga: 0,
                    fg_percent: 0,
                    threes_made: 0,
                    threes_attempted: 0,
                    threes_percent: 0,
                    ftm: 0,
                    fta: 0,
                    ft_percent: 0,
                    off_rebounds: 0,
                    fouls: 0,
                    dunks: 0

                },

                {
                    name: '',
                    points: 0,
                    rebounds: 0,
                    assists: 0,
                    steals: 0,
                    blocks: 0,
                    turnovers: 0,
                    fgm: 0,
                    fga: 0,
                    fg_percent: 0,
                    threes_made: 0,
                    threes_attempted: 0,
                    threes_percent: 0,
                    ftm: 0,
                    fta: 0,
                    ft_percent: 0,
                    off_rebounds: 0,
                    fouls: 0,
                    dunks: 0

                },

                {
                    name: '',
                    points: 0,
                    rebounds: 0,
                    assists: 0,
                    steals: 0,
                    blocks: 0,
                    turnovers: 0,
                    fgm: 0,
                    fga: 0,
                    fg_percent: 0,
                    threes_made: 0,
                    threes_attempted: 0,
                    threes_percent: 0,
                    ftm: 0,
                    fta: 0,
                    ft_percent: 0,
                    off_rebounds: 0,
                    fouls: 0,
                    dunks: 0

                }
            ],
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
                        
                        this.players[0].name = playerName;
                        this.players[0].points = secResponse.data.points;
                        this.players[0].rebounds = secResponse.data.rebounds;
                        this.players[0].assists = secResponse.data.assists;
                        this.players[0].steals = secResponse.data.steals;
                        this.players[0].blocks = secResponse.data.blocks;
                        this.players[0].turnovers = secResponse.data.turnovers;
                        this.players[0].fgm = secResponse.data.fgm;
                        this.players[0].fga = secResponse.data.fga;
                        this.players[0].fg_percent = Math.round(10000 * secResponse.data.fgm / secResponse.data.fga)/100;
                        this.players[0].threes_made = secResponse.data.threes_made;
                        this.players[0].threes_attempted= secResponse.data.threes_attempted;
                        this.players[0].threes_percent = Math.round(10000 * secResponse.data.threes_made / secResponse.data.threes_attempted)/100;
                        this.players[0].ftm = secResponse.data.ftm;
                        this.players[0].fta = secResponse.data.fta;
                        this.players[0].ft_percent = Math.round(10000 * secResponse.data.ftm / secResponse.data.fta)/100;
                        this.players[0].off_rebounds = secResponse.data.off_rebounds;
                        this.players[0].fouls = secResponse.data.fouls;
                        this.players[0].dunks = secResponse.data.dunks;
                    

                        let playerName2 = response.data[1].name;
                        service.getPlayerStats(playerName2).then(
                            (secResponse) => {
                                
                                this.players[1].name = playerName2;
                                this.players[1].points = secResponse.data.points;
                                this.players[1].rebounds = secResponse.data.rebounds;
                                this.players[1].assists = secResponse.data.assists;
                                this.players[1].steals = secResponse.data.steals;
                                this.players[1].blocks = secResponse.data.blocks;
                                this.players[1].turnovers = secResponse.data.turnovers;
                                this.players[1].fgm = secResponse.data.fgm;
                                this.players[1].fga = secResponse.data.fga;
                                this.players[1].fg_percent = Math.round(10000 * secResponse.data.fgm / secResponse.data.fga)/100;
                                this.players[1].threes_made = secResponse.data.threes_made;
                                this.players[1].threes_attempted= secResponse.data.threes_attempted;
                                this.players[1].threes_percent = Math.round(10000 * secResponse.data.threes_made / secResponse.data.threes_attempted)/100;
                                this.players[1].ftm = secResponse.data.ftm;
                                this.players[1].fta = secResponse.data.fta;this.players[1].ft_percent = Math.round(10000 * secResponse.data.ftm / secResponse.data.fta)/100;
                                this.players[1].off_rebounds = secResponse.data.off_rebounds;
                                this.players[1].fouls = secResponse.data.fouls;
                                this.players[1].dunks = secResponse.data.dunks;

                                let playerName3 = response.data[2].name;
                                service.getPlayerStats(playerName3).then(
                                    (secResponse) => {
                                        this.players[2].name = playerName3;
                                        this.players[2].points = secResponse.data.points;
                                        this.players[2].rebounds = secResponse.data.rebounds;
                                        this.players[2].assists = secResponse.data.assists;
                                        this.players[2].steals = secResponse.data.steals;
                                        this.players[2].blocks = secResponse.data.blocks;
                                        this.players[2].turnovers = secResponse.data.turnovers;
                                        this.players[2].fgm = secResponse.data.fgm;
                                        this.players[2].fga = secResponse.data.fga;
                                        this.players[2].fg_percent = Math.round(10000 * secResponse.data.fgm / secResponse.data.fga)/100;
                                        this.players[2].threes_made = secResponse.data.threes_made;
                                        this.players[2].threes_attempted= secResponse.data.threes_attempted;
                                        this.players[2].threes_percent = Math.round(10000 * secResponse.data.threes_made / secResponse.data.threes_attempted)/100;
                                        this.players[2].ftm = secResponse.data.ftm;
                                        this.players[2].fta = secResponse.data.fta;this.players[2].ft_percent = Math.round(10000 * secResponse.data.ftm / secResponse.data.fta)/100;
                                        this.players[2].off_rebounds = secResponse.data.off_rebounds;
                                        this.players[2].fouls = secResponse.data.fouls;
                                        this.players[2].dunks = secResponse.data.dunks;

                                        let playerName4 = response.data[3].name;
                                        service.getPlayerStats(playerName4).then(
                                            (secResponse) => {
                                                this.players[3].name = playerName4;
                                                this.players[3].points = secResponse.data.points;
                                                this.players[3].rebounds = secResponse.data.rebounds;
                                                this.players[3].assists = secResponse.data.assists;
                                                this.players[3].steals = secResponse.data.steals;
                                                this.players[3].blocks = secResponse.data.blocks;
                                                this.players[3].turnovers = secResponse.data.turnovers;
                                                this.players[3].fgm = secResponse.data.fgm;
                                                this.players[3].fga = secResponse.data.fga;
                                                this.players[3].fg_percent = Math.round(10000 * secResponse.data.fgm / secResponse.data.fga)/100;
                                                this.players[3].threes_made = secResponse.data.threes_made;
                                                this.players[3].threes_attempted= secResponse.data.threes_attempted;
                                                this.players[3].threes_percent = Math.round(10000 * secResponse.data.threes_made / secResponse.data.threes_attempted)/100;
                                                this.players[3].ftm = secResponse.data.ftm;
                                                this.players[3].fta = secResponse.data.fta;this.players[3].ft_percent = Math.round(10000 * secResponse.data.ftm / secResponse.data.fta)/100;
                                                this.players[3].off_rebounds = secResponse.data.off_rebounds;
                                                this.players[3].fouls = secResponse.data.fouls;
                                                this.players[3].dunks = secResponse.data.dunks;


                                                let playerName5 = response.data[4].name;
                                                service.getPlayerStats(playerName5).then(
                                                    (secResponse) => {
                                                        this.players[4].name = playerName5;
                                                        this.players[4].points = secResponse.data.points;
                                                        this.players[4].rebounds = secResponse.data.rebounds;
                                                        this.players[4].assists = secResponse.data.assists;
                                                        this.players[4].steals = secResponse.data.steals;
                                                        this.players[4].blocks = secResponse.data.blocks;
                                                        this.players[4].turnovers = secResponse.data.turnovers;
                                                        this.players[4].fgm = secResponse.data.fgm;
                                                        this.players[4].fga = secResponse.data.fga;
                                                        this.players[4].fg_percent = Math.round(10000 * secResponse.data.fgm / secResponse.data.fga)/100;
                                                        this.players[4].threes_made = secResponse.data.threes_made;
                                                        this.players[4].threes_attempted= secResponse.data.threes_attempted;
                                                        this.players[4].threes_percent = Math.round(10000 * secResponse.data.threes_made / secResponse.data.threes_attempted)/100;
                                                        this.players[4].ftm = secResponse.data.ftm;
                                                        this.players[4].fta = secResponse.data.fta;this.players[4].ft_percent = Math.round(10000 * secResponse.data.ftm / secResponse.data.fta)/100;
                                                        this.players[4].off_rebounds = secResponse.data.off_rebounds;
                                                        this.players[4].fouls = secResponse.data.fouls;
                                                        this.players[4].dunks = secResponse.data.dunks;
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
                        this.serverOffline = true;
                    }
                }
            );
        }
    }
}
</script>

<style scoped>

</style>
