function setTeamDropdown (){
    const option = document.createElement("option");
    option.setAttribute("value", "Bucks");
    option.innerText = "Milwaukee Bucks";

    const select = document.getElementById("team");
    select.appendChild(option);
}



function setPlayerDropdown(team){

    const playerDropdown = document.getElementById("player");

    for(let i = playerDropdown.options.length - 1; i >= 0; i--){
        playerDropdown.remove(i);
    }
    const option = document.createElement("option");
    option.setAttribute("value", "new-player");
    option.innerText = "Add New Player..."
    playerDropdown.appendChild(option);
}



function setHomeTable () {

}


function getBestByStat(stat){

}







document.addEventListener("DOMContentLoaded", 
    () => {
        document.getElementById("player").addEventListener("change", 
            (event) => {
                if(event.target.value === "new-player"){
                    document.getElementById("add-player").style.display = "block";
                } else {
                    document.getElementById("add-player").style.display = "none";
                }
            }
        )

        document.getElementById("add-submit").addEventListener("click", 
            () => {
                document.getElementById("add-player").style.display = "none";
            }
        )

        document.getElementById("team").addEventListener("change", setPlayerDropdown);

        setTeamDropdown();
        setHomeTable();
    }
)