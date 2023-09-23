package stats.dao;

import stats.model.*;
import stats.model.security.User;

import java.util.List;

public interface UserDao {


    List<User> findAll();

    User findByUsername(String username);

    int findIdByUsername(String username);

    boolean create(String username, String password);


    List<Game> getGamesByTeams (String team1, String team2);
    boolean addPlayer (Player player);
    boolean addStatsForPlayer (IndGame stats);
    boolean addStatsForGame (Game game);
    List<Stat> getMaxByStat (String stat);
    List<Stat> getMaxPercentage(String stat);
    double getPerGameStat (String stat, String playerName);
    TotalPlayerStats getPlayerStats(String playerName);
    List<String> getPlayersByTeam(String team);

}
