package stats.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;
import stats.dao.UserDao;
import stats.model.*;

import java.util.List;

@RestController
@CrossOrigin
@PreAuthorize("permitAll()")
@RequestMapping(path = "/2kstats")
public class AppController {

    @Autowired
    private UserDao userDao;


    @RequestMapping(path = "/max/{stat}", method = RequestMethod.GET)
    public List<Stat> getMaxByStat (@PathVariable String stat){
        return userDao.getMaxByStat(stat);
    }

    @RequestMapping(path = "/game/{team1}/{team2}", method = RequestMethod.GET)
    public List<Game> getGamesByTeam (@PathVariable String team1, @PathVariable String team2){
        return userDao.getGamesByTeams(team1, team2);
    }

    @RequestMapping(path = "/perGame", method = RequestMethod.GET)
    public double getPerGameStat (@RequestBody StatRequest request){
        return userDao.getPerGameStat(request.getStat(), request.getName());
    }

    @RequestMapping(path = "/stats/{name}", method = RequestMethod.GET)
    public TotalPlayerStats getPlayerStats (@PathVariable String name){
        return userDao.getPlayerStats(name);
    }

    @RequestMapping(path = "/stats/game", method = RequestMethod.POST)
    public boolean addGameStats (@RequestBody Game game){
        return userDao.addStatsForGame(game);
    }

    @RequestMapping(path = "/stats/player", method = RequestMethod.POST)
    public boolean addPlayerStats(@RequestBody IndGame stats){
        return userDao.addStatsForPlayer(stats);
    }

    @RequestMapping(path = "/player", method = RequestMethod.POST)
    public boolean addPlayer(@RequestBody Player player){
        return userDao.addPlayer(player);
    }

    @RequestMapping(path = "/{team}/players", method = RequestMethod.GET)
    public List<String> getPlayersByTeam(@PathVariable String team){
        return userDao.getPlayersByTeam(team);
    }
}
