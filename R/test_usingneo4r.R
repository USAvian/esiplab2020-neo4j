# install.packages("neo4r")

library(neo4r)
neo4r::

# demo --------------------------------------------------------------------
con <- neo4j_api$new(
    url = "http://localhost:7474",
    user = "neo4j",
    password = "password"
)

# Note that play_movies is only available for versions >= 0.1.3
play_movies() %>%
    call_neo4j(con)

