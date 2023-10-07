<template>
    <div class = "wrap">
       
            
            <div class = "text">
                <h2>Update Stats</h2>
                <form class = "update-form">
                    <div class = "form-entry" id = "team-name-update">
                        <label for="team-update">Team Name: </label>
                        <select name="team-update" id="team-update">
                            <option value = "team-select">Select a Team: </option>
                        </select>
                    </div>

                    <div class = "form-entry" id = "game-update">
                        <label for="game-update">Game: </label>
                        <select name="game-update" id="game-update">
                            <option value = "game-select">Select a Game: </option>
                        </select>
                    </div>
                    
                    <div class = "form-entry" id = "player-name-update">
                        <label for="player-update">Player Name:</label>
                        <select name="player-update" id="player-update">
                            <option value = "player-select">Select a Player: </option>
                            <option value = "new-player">Add New Player...</option>
                        </select>
                    </div>
                    
                    <div class = "form-entry" id = "points-update">
                        <label for="points-update">Points: </label>
                        <input name="points-update" id="points-update" type = "number"/>
                    </div>

                    <div class = "form-entry" id = "rebounds-update">
                        <label for="rebounds-update">Rebounds: </label>
                        <input name="rebounds-update" id="rebounds-update" type = "number"/>
                    </div>




                    <div class = "form-entry" id = "assists-entry-update">
                        <label for="assists-update">Assists: </label>
                        <input name="assists-update" id="assists-update" type = "number"/>
                    </div>

                    <div class = "form-entry" id = "steals-entry-update">
                        <label for="steals-update">Steals: </label>
                        <input name="steals-update" id="steals-update" type = "number"/>
                    </div>

                    <div class = "form-entry" id = "blocks-entry-update">
                        <label for="blocks-update">Blocks: </label>
                        <input name="blocks-update" id="blocks-update" type = "number"/>
                    </div>

                    <div class = "form-entry" id = "turnovers-entry-update">
                        <label for="turnovers-update">Turnovers: </label>
                        <input name="turnovers-update" id="turnovers-update" type = "number"/>
                    </div>

                    <div class = "form-entry" id = "fgm-entry-update">
                        <label for="fgm-update">FGM: </label>
                        <input name="fgm-update" id="fgm-update" type = "number"/>
                    </div>

                    <div class = "form-entry" id = "fga-entry-update">
                        <label for="fga-update">FGA: </label>
                        <input name="fga-update" id="fga-update" type = "number"/>
                    </div>

                    <div class = "form-entry" id = "threes-made-entry-update">
                        <label for="threes-made-update">3PTM: </label>
                        <input name="threes-made-update" id="threes-made-update" type = "number"/>
                    </div>

                    <div class = "form-entry" id = "threes-attempted-entry-update">
                        <label for="threes-attempted-update">3PTA: </label>
                        <input name="threes-attempted-update" id="threes-attempted-update" type = "number"/>
                    </div>

                    <div class = "form-entry" id = "ftm-entry-update">
                        <label for="ftm-update">FTM: </label>
                        <input name="ftm-update" id="ftm-update" type = "number"/>
                    </div>

                    <div class = "form-entry" id = "fta-entry-update">
                        <label for="fta-update">FTA: </label>
                        <input name="fta-update" id="fta-update" type = "number"/>
                    </div>

                    <div class = "form-entry" id = "off-rebounds-entry-update">
                        <label for="off-rebounds-update">Off. Rebounds: </label>
                        <input name="off-rebounds-update" id="off-rebounds-update" type = "number"/>
                    </div>

                    <div class = "form-entry" id = "fouls-entry-update">
                        <label for="fouls-update">Fouls: </label>
                        <input name="fouls-update" id="fouls-update" type = "number"/>
                    </div>

                    <div class = "form-entry" id = "dunks-entry-update">
                        <label for="dunks-update">Dunks: </label>
                        <input name="dunks-update" id="dunks-update" type = "number"/>
                    </div>

                    <div class = "form-entry" id = "submit-entry-update">
                        <input id = "form-submit-update" type="submit"/>  
                    </div>
                </form>
            </div>
            
        
    </div>
</template>

<script>
export default {

}
</script>

<style scoped>

</style>
