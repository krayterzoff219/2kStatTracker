package stats.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import stats.dao.UserDao;
import stats.model.Stat;

@RestController
@PreAuthorize("permitAll()")
@RequestMapping(path = "/2kstats")
public class AppController {

    @Autowired
    private UserDao userDao;

    @RequestMapping(path = "/max/{stat}", method = RequestMethod.GET)
    public Stat getMaxByStat (@PathVariable String stat){
        return userDao.getMaxByStat(stat);
    }
}
