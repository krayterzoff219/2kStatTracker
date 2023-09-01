package stats.dao;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.security.core.parameters.P;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;
import org.springframework.web.client.ResourceAccessException;
import stats.model.*;
import stats.model.security.User;

import javax.sql.DataSource;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@Component
public class JdbcUserDao implements UserDao {

    private JdbcTemplate jdbcTemplate;

    public JdbcUserDao (JdbcTemplate jdbcTemplate){
        this.jdbcTemplate = jdbcTemplate;
    }


    @Override
    public List<Game> getGamesByTeams(String team1, String team2) {
        String sql = "SELECT * FROM game WHERE home_team_id = " +
                "(SELECT id FROM team WHERE nickname = ?) " +
                " AND away_team_id = (SELECT id FROM team WHERE nickname = ?);";
        String reverseSQL = "SELECT * FROM game WHERE away_team_id = " +
                "(SELECT id FROM team WHERE nickname = ?) " +
                " AND home_team_id = (SELECT id FROM team WHERE nickname = ?);";
        List<Game> gameList = new ArrayList<>();
        try {
            SqlRowSet row = jdbcTemplate.queryForRowSet(sql, team1, team2);
            while(row.next()){
                Game game = new Game();

                game.setHomeName(getTeamById(row.getInt("home_team_id")));
                game.setAwayName(getTeamById(row.getInt("away_team_id")));
                game.setHomeScore(row.getInt("home_team_score"));
                game.setAwayScore(row.getInt("away_team_score"));
                gameList.add(game);
            }
            row = jdbcTemplate.queryForRowSet(reverseSQL, team1, team2);
            while(row.next()){
                Game game = new Game();
                game.setHomeName(getTeamById(row.getInt("home_team_id")));
                game.setAwayName(getTeamById(row.getInt("away_team_id")));
                game.setHomeScore(row.getInt("home_team_score"));
                game.setAwayScore(row.getInt("away_team_score"));
                gameList.add(game);
            }
        } catch (ResourceAccessException e){
            System.out.println(e.getMessage());
        }

        return gameList;
    }

    public boolean addPlayer (Player player){
        String sql = "INSERT INTO player (team_id, name) VALUES (?, ?) RETURNING id;";
        try {
            SqlRowSet row = jdbcTemplate.queryForRowSet(sql, getIdByTeam(player.getTeamName()), player.getName());
        } catch (ResourceAccessException e){
            System.out.println(e.getMessage());
            return false;
        }
        return true;
    }

    @Override
    public boolean addStatsForPlayer(IndGame stats) {
        String sql = "INSERT INTO ind_game (game_id, player_id, points, rebounds, assists, steals, blocks, turnovers, fga, fgm, threes_attempted, " +
                "threes_made, fta, ftm, off_rebounds, fouls, dunks) " +
                "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?) " +
                "RETURNING id;";
        try {
            int newId = jdbcTemplate.queryForObject(sql, Integer.class, stats.getGameId(), getIdByPlayer(stats.getPlayerName()), stats.getPoints(),
                    stats.getRebounds(), stats.getAssists(), stats.getSteals(), stats.getBlocks(), stats.getTurnovers(),
                    stats.getFga(), stats.getFgm(), stats.getThreesAttempted(), stats.getThreesMade(), stats.getFta(),
                    stats.getFtm(), stats.getOffRebounds(), stats.getFouls(), stats.getDunks());
            if (newId < 1){
                return false;
            }
        } catch (ResourceAccessException e) {
            System.out.println(e.getMessage());
            return false;
        } catch (NullPointerException e){
            return false;
        }

        return true;
    }

    public boolean addStatsForGame(Game game){
        String sql = "INSERT INTO game (home_team_id, home_team_score, away_team_id, away_team_score) VALUES (?, ?, ?, ?) RETURNING id;";
        try {
            int newId = jdbcTemplate.queryForObject(sql, Integer.class, getIdByTeam(game.getHomeName()), game.getHomeScore(),
                    getIdByTeam(game.getAwayName()), game.getAwayScore());
            if (newId < 1){
                return false;
            }
        } catch (ResourceAccessException e){
            System.out.println(e.getMessage());
            return false;
        } catch (NullPointerException e){
            return false;
        }
        return true;
    }

    @Override
    public Stat getMaxByStat(String stat) {
        String sql = "SELECT SUM(" + stat + ") AS total, name FROM ind_game JOIN player ON player_id = player.id GROUP BY name;";
        List<Stat> listTotal = new ArrayList<>();
        try{
            SqlRowSet row = jdbcTemplate.queryForRowSet(sql);
            while(row.next()){
                Stat newStat = new Stat();
                newStat.setStat(row.getInt("total"));
                newStat.setName(row.getString("name"));
                listTotal.add(newStat);
            }
        } catch (Exception e){
            System.out.println(e.getMessage());
        }

        double max = 0;
        int index = 0;
        for(int i = 0; i < listTotal.size(); i++){
            if(listTotal.get(i).getStat() > max){
                max = listTotal.get(i).getStat();
                index = i;
            }
        }


        return listTotal.get(index);
    }

    @Override
    public double getPerGameStat(String stat, String playerName) {
        String sql = "SELECT SUM(" + stat + ") AS total, COUNT(" + stat + ") AS games FROM ind_game JOIN player ON player_id = player.id " +
                "WHERE name = '" + playerName + "';";
        double perGame = 0.0;
        try {
            SqlRowSet row = jdbcTemplate.queryForRowSet(sql);
            if(row.next()){
                int total = row.getInt("total");
                int games = row.getInt("games");
                perGame = (double) total / games;
            }
        } catch (ResourceAccessException e){
            System.out.println(e.getMessage());
        }
        return perGame;
    }

    @Override
    public TotalPlayerStats getPlayerStats(String playerName) {
        String sql = "SELECT * FROM ind_game WHERE player_id = ?;";
        TotalPlayerStats stats = new TotalPlayerStats();
        try {
            SqlRowSet row = jdbcTemplate.queryForRowSet(sql, getIdByPlayer(playerName));
            while(row.next()){
                stats.setPlayerId(row.getInt("player_id"));
                stats.setPoints(stats.getPoints() + row.getInt("points"));
                stats.setAssists(stats.getAssists() + row.getInt("assists"));
                stats.setRebounds(stats.getRebounds() + row.getInt("rebounds"));
                stats.setSteals(stats.getSteals() + row.getInt("steals"));
                stats.setBlocks(stats.getBlocks() + row.getInt("blocks"));
                stats.setFouls(stats.getFouls() + row.getInt("fouls"));
                stats.setFga(stats.getFga() + row.getInt("fga"));
                stats.setFgm(stats.getFgm() + row.getInt("fgm"));
                stats.setThreesAttempted(stats.getThreesAttempted() + row.getInt("threes_attempted"));
                stats.setThreesMade(stats.getThreesMade() + row.getInt("threes_made"));
                stats.setFta(stats.getFta() + row.getInt("fta"));
                stats.setFtm(stats.getFtm() + row.getInt("ftm"));
                stats.setOffRebounds(stats.getOffRebounds() + row.getInt("off_rebounds"));
                stats.setTurnovers(stats.getTurnovers() + row.getInt("turnovers"));
                stats.setDunks(stats.getDunks() + row.getInt("dunks"));
            }
        } catch (ResourceAccessException e){
            System.out.println(e.getMessage());
        }
        return stats;
    }




    public String getTeamById(int id){
        String sql = "SELECT nickname FROM team WHERE id = ?;";
        String nickname = "";
        try {
            SqlRowSet row = jdbcTemplate.queryForRowSet(sql, id);
            if (row.next()){
                nickname = row.getString("nickname");
            }
        } catch (ResourceAccessException e){
            System.out.println(e.getMessage());
        }
        return nickname;
    }

    public int getIdByTeam (String nickname){
        String sql = "SELECT id FROM team WHERE nickname = ?;";
        int id = -1;
        try {
            SqlRowSet row = jdbcTemplate.queryForRowSet(sql, nickname);
            if (row.next()){
                id = row.getInt("id");
            }
        } catch (ResourceAccessException e){
            System.out.println(e.getMessage());
        }
        return id;
    }

    public int getIdByPlayer(String name){
        String sql = "SELECT id FROM player WHERE name = ?;";
        int id = -1;
        try {
            SqlRowSet row = jdbcTemplate.queryForRowSet(sql, name);
            if (row.next()){
                id = row.getInt("id");
            }
        } catch (ResourceAccessException e){
            System.out.println(e.getMessage());
        }
        return id;
    }


















    @Override
    public int findIdByUsername(String username) {
        String sql = "SELECT user_id FROM tenmo_user WHERE username ILIKE ?;";
        Integer id = jdbcTemplate.queryForObject(sql, Integer.class, username);
        if (id != null) {
            return id;
        } else {
            return -1;
        }
    }

    @Override
    public List<User> findAll() {
        List<User> users = new ArrayList<>();
        String sql = "SELECT user_id, username, password_hash FROM tenmo_user;";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql);
        while(results.next()) {
            User user = mapRowToUser(results);
            users.add(user);
        }
        return users;
    }

    @Override
    public User findByUsername(String username) throws UsernameNotFoundException {
        String sql = "SELECT user_id, username, password_hash FROM tenmo_user WHERE username ILIKE ?;";
        SqlRowSet rowSet = jdbcTemplate.queryForRowSet(sql, username);
        if (rowSet.next()){
            return mapRowToUser(rowSet);
        }
        throw new UsernameNotFoundException("User " + username + " was not found.");
    }

    @Override
    public boolean create(String username, String password) {

        // create user
        String sql = "INSERT INTO tenmo_user (username, password_hash) VALUES (?, ?) RETURNING user_id";
        String password_hash = new BCryptPasswordEncoder().encode(password);
        Integer newUserId;
        try {
            newUserId = jdbcTemplate.queryForObject(sql, Integer.class, username, password_hash);
            sql = "INSERT INTO account (user_id, balance) VALUES (?, ?);";
            int numberOfRows = jdbcTemplate.update(sql, newUserId, new BigDecimal(1000));
            if(numberOfRows!= 1){
                return false;
            }
        } catch (DataAccessException e) {
            return false;
        }

        return true;
    }
    private User mapRowToUser(SqlRowSet rs) {
        User user = new User();
        user.setId(rs.getInt("user_id"));
        user.setUsername(rs.getString("username"));
        user.setPassword(rs.getString("password_hash"));
        user.setActivated(true);
        user.setAuthorities("USER");
        return user;
    }
}
