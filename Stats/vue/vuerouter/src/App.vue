<template>
  <header-nav/>
  <router-view/>
</template>

<script>
import HeaderNav from './components/HeaderNav.vue'

export default {
  components: {
    HeaderNav
  }
}
</script>


<style>

.offline {
    background-color: chartreuse;
}

.router-link-exact-active {
        border-bottom: 1px solid #123456;
        /* display: none; */
    }

body {
    font-size: large;
    font-family: Georgia, 'Times New Roman', Times, serif;
    background-color: blanchedalmond;
    padding: 5px;
}

.wrap{
    position: relative;
}

.wrap:before{
    z-index: 0;
    content: ' ';
    display: block;
    position: absolute;
    left:0;
    top:0;
    width: 100%;
    height: 100%;
    opacity: 0.4;
    background: url(https://wallpapercave.com/wp/wp7320347.jpg);
    background-size: cover;
    background-position: 50% 0;
}

header{
    height: 10vh;
    display: grid;
    grid-template-columns: 1fr 1fr;
    grid-template-areas: "title links";
}

header h1{
    grid-area: title;
    align-self: center;
}

header nav{
    display: flex;
    align-items: center;
}

header nav ul{
    grid-area: links;
    display: flex;
    justify-content: space-between;
    align-items: center;
    list-style: none;
    padding: 0px;
    flex-grow: 1;
}

header nav ul li{
    border-radius: 5px;
    border: none;
    background-color: lightblue;
    width: 20%;
    text-align: center;
    padding: 4px;
    font-weight: bold;
}

a{
    text-decoration: none;
    color: black;
}

.wrap {
    display: flex;
    height: 87vh;
    align-items: center;
}

.text{
    background-color: blanchedalmond;
    z-index: 1;
    width: 100%;
}

p{
    opacity: .99;
}

table{
    width: 100%;
}

th, td{
    text-align: center;
}

.head-row{
    background-color: gold;
}

.odd-row{
    background-color: cadetblue;
}

.even-row{
    background-color: cyan;
}



input, select{
    width: 40%;
}

label{
    display: block;
    width: 40%;
}

.form-entry{
    padding: 10px;
    width: 80%;
}

.add-form, .update-form, .add-game-score-form{
    display: grid;
    grid-template-columns: 1fr 1fr;
    grid-template-areas: 
    "team player"
    "points rebounds"
    "assists steals"
    "blocks turnovers"
    "fgm fga"
    "3pm 3pa"
    "ftm fta"
    "off fouls"
    "dunks submit";
}

#submit-entry{
    width: 40%;
}

.d-none{
    display: none;
}

#add-player {
    background-color: black;
    color: white;
    text-align: center;
}


@media only screen and (max-width: 900px) {
header{
    height: 12vh;
    display: grid;
    grid-template-columns: 1fr;
    grid-template-areas: "title"
    "links";
    padding-bottom: 10vh;
}

.wrap {
    height: 67vh;
}

header h1 {
    display: flex;
    justify-content: center;
    flex-wrap: wrap;
    font-size: 30px;
}

.add-form, .add-game-score-form{
    font-size: 12px;
}

.add-form .form-entry, label{
    padding: 5px;
    width: 90%;
}
}
</style>
