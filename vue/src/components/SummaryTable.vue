<template>
    <div class="wrap">
        <div class = "text">
            <p>Welcome to the 2024 Season! Below are some of the top performers from this year.
                Follow the links above to add, update, or analyze stats.
<br><br>
                *ALL STATS ARE PER GAME STATS*
            </p>
            <div class = "offline" v-if="serverOffline">
                Server is Offline
            </div>
        <table v-if= "isLoaded">
            <thead>
                <tr class = "head-row">
                    <th>Name</th>
                    <th>Points</th>
                    <th>Rebounds</th>
                    <th>Assists</th>
                </tr>
            </thead>
            <tbody>
                <tr class = "odd-row">
                    <td>{{leadingScorer.name}}</td>
                    <td>{{leadingScorer.points}}</td>
                    <td>{{leadingScorer.rebounds}}</td>
                    <td>{{leadingScorer.assists}}</td>
                </tr>
                <tr class = "even-row">
                    <td>{{leadingRebounder.name}}</td>
                    <td>{{leadingRebounder.points}}</td>
                    <td>{{leadingRebounder.rebounds}}</td>
                    <td>{{leadingRebounder.assists}}</td>
                </tr>
                <tr class = "odd-row">
                    <td>{{leadingAssister.name}}</td>
                    <td>{{leadingAssister.points}}</td>
                    <td>{{leadingAssister.rebounds}}</td>
                    <td>{{leadingAssister.assists}}</td>
                </tr>
            </tbody>                
        </table>
        </div>
    </div>
</template>

<script>
import service from '../services/StatsService.js';

export default {
    data(){
        return{
            isLoaded: false,
            serverOffline: false,
            leadingScorer: {
                name: '',
                points: '',
                rebounds: '',
                assists: ''
            },
            leadingRebounder: {
                name: '',
                points: '',
                rebounds: '',
                assists: ''
            },
            leadingAssister: {
                name: '',
                points: '',
                rebounds: '',
                assists: ''
            }
        }
    },

    created(){
        console.log('opened');
        service.getMaxByStat('points').then(
            (response) => {
                let playerName = response.data[0].name;
                service.getPlayerStats(playerName).then(
                    (secResponse) => {
                        console.log('found player');
                        this.leadingScorer.name = playerName;
                        this.leadingScorer.points = secResponse.data.points;
                        this.leadingScorer.rebounds = secResponse.data.rebounds;
                        this.leadingScorer.assists = secResponse.data.assists;
                        this.isLoaded = true;
                    }
                )
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

        service.getMaxByStat('rebounds').then(
            (response) => {
                let playerName = response.data[0].name;
                service.getPlayerStats(playerName).then(
                    (secResponse) => {
                        console.log('found player');
                        this.leadingRebounder.name = playerName;
                        this.leadingRebounder.points = secResponse.data.points;
                        this.leadingRebounder.rebounds = secResponse.data.rebounds;
                        this.leadingRebounder.assists = secResponse.data.assists;
                        this.isLoaded = true;
                    }
                )
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

        service.getMaxByStat('assists').then(
            (response) => {
                let playerName = response.data[0].name;
                service.getPlayerStats(playerName).then(
                    (secResponse) => {
                        console.log('found player');
                        this.leadingAssister.name = playerName;
                        this.leadingAssister.points = secResponse.data.points;
                        this.leadingAssister.rebounds = secResponse.data.rebounds;
                        this.leadingAssister.assists = secResponse.data.assists;
                        this.isLoaded = true;
                    }
                )
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
</script>

<style scoped>

</style>
