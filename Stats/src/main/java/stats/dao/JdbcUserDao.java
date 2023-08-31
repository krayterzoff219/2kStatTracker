package stats.dao;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
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
    public List<Game> getGamesByTeams(Team team1, Team team2) {
        return null;
    }

    @Override
    public void addStatsForPlayer(IndGame stats) {

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
        String sql = "SELECT (SUM(?) / COUNT(?)) AS stat FROM ind_game WHERE name = ?;";
        return 0;
    }

    @Override
    public TotalPlayerStats getPlayerStats(String playerName) {
        return null;
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
