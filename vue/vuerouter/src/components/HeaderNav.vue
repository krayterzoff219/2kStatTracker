<template>
    <div>
    <header>
        <h1>2024 2k Season Stats</h1>
        <nav>
            <ul>
                <li>
                    <router-link id="homeNav" v-bind:to= "{name: 'home'}">Home</router-link>
                </li>
                <li>
                    <router-link id="addNav" v-bind:to= "{name: 'add'}">Add Stats</router-link>
                </li>
                <li>
                    <router-link id="scoreNav" v-bind:to= "{name: 'add-scores'}">Add Game Score</router-link>
                </li>
                <li>
                    <router-link id="analyzeNav" v-bind:to= "{name: 'analyze'}">Analyze Stats</router-link>
                </li>
            </ul>
        </nav>
    </header>
    </div>
</template>

<script>
export default {

}
</script>

<style scoped>
h3 {
  margin: 40px 0 0;
}
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #42b983;
}
</style>
