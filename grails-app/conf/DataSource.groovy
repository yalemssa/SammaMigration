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
            //dbCreate = "create-drop" // one of 'create', 'create-drop','update'
            url = "jdbc:postgresql://130.132.111.21:5433/SammaCustomer"
        }
    }
    test {
        dataSource {
            //dbCreate = "update"
            url = "jdbc:postgresql://"
        }
    }
    production {
        dataSource {
            //dbCreate = "update"
            url = "jdbc:postgresql://130.132.111.21:5433/SammaCustomer"
        }
    }
}
