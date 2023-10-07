





SELECT pg_terminate_backend(pid)
FROM pg_stat_activity
WHERE datname = '2kstats';

DROP DATABASE IF EXISTS 2kstats;

DROP USER postgres;
DROP USER postgres_appuser;