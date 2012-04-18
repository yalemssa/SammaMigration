dataSource {
    pooled = true
    driverClassName = "org.postgresql.Driver"
    dialect = org.hibernate.dialect.PostgreSQLDialect
    logSql = true
    username = "postgres"
    password = "postgres"
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = true
    cache.provider_class = 'net.sf.ehcache.hibernate.EhCacheProvider'
}
// environment specific settings
environments {
    development {
        dataSource {
            url = "jdbc:postgresql://yourIp:5433/SammaCustomer"
        }
    }
    test {
        dataSource {
            url = "jdbc:postgresql://yourIp:5433/SammaCustomer"
        }
    }
    production {
        dataSource {
            url = "jdbc:postgresql://yourIp:5433/SammaCustomer"
        }
    }
}
