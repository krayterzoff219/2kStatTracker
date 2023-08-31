package stats.dao;

import stats.model.*;
import stats.model.security.User;

import java.util.List;

public interface UserDao {


    List<User> findAll();

    User findByUsername(String username);

    int findIdByUsername(String username);

    boolean create(String username, String password);


    List<Game> getGamesByTeams (Team team1, Team team2);
    void addStatsForPlayer (IndGame stats);
    Stat getMaxByStat (String stat);
    double getPerGameStat (String stat, String playerName);
    TotalPlayerStats getPlayerStats(String playerName);

}
