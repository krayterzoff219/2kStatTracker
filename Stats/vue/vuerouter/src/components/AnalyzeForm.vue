<template>
    <div>
        <form class = "analyze-form">
                    <div class = "form-entry" id = "stat-entry">
                        <label for="stat">Stat: </label>
                        <select name="stat" id="stat">
                            <option value = "stat-points">Points</option>
                            <option value = "stat-rebounds">Rebounds</option>
                            <option value = "stat-rebounds">Assists</option>
                            <option value = "stat-rebounds">Steals</option>
                            <option value = "stat-rebounds">Blocks</option>
                            <option value = "stat-rebounds">Turnovers</option>
                            <!-- <option value = "stat-rebounds">FTA</option>
                            <option value = "stat-rebounds">FTM</option>
                            <option value = "stat-rebounds">3PTA</option>
                            <option value = "stat-rebounds">3PTM</option>
                            <option value = "stat-rebounds">FTA</option>
                            <option value = "stat-rebounds">FTM</option> -->
                            <option value = "stat-rebounds">Off. Rebounds</option>
                            <option value = "stat-rebounds">Fouls</option>
                            <option value = "stat-rebounds">Dunks</option>
                            <option value = "stat-fgp">FG%</option>
                            <option value = "stat-3ptp">3PT%</option>
                            <option value = "stat-ftp">FT%</option>
                        </select>
                    </div>

                    <div class = "form-entry" id = "analyze-submit-entry">
                        <input id = "analyze-form-submit" type="submit"/>  
                    </div>
                </form>
    </div>
</template>

<script>
export default {

}
</script>

<style scoped>

</style>
