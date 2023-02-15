urls <- c("https://fbref.com/en/comps/36/Ekstraklasa-Stats","https://fbref.com/en/comps/67/Bulgarian-First-League-Stats", "https://fbref.com/en/comps/27/Super-League-Greece-Stats",
          "https://fbref.com/en/comps/66/Czech-First-League-Stats", "https://fbref.com/en/comps/63/1-HNL-Stats",
          "https://fbref.com/en/comps/56/Austrian-Bundesliga-Stats", "https://fbref.com/en/comps/54/Serbian-SuperLiga-Stats")


# team_urls <- fb_teams_urls("https://fbref.com/en/comps/67/Bulgarian-First-League-Stats")
# fb_teams <- fb_team_match_results(team_url = team_urls)
#
# team_urls <- fb_teams_urls("https://fbref.com/en/comps/27/Super-League-Greece-Stats")
# fb_teams <- rbind(fb_teams, fb_team_match_results(team_url = team_urls))
#
# team_urls <- fb_teams_urls("https://fbref.com/en/comps/66/Czech-First-League-Stats")
# fb_teams <- rbind(fb_teams, fb_team_match_results(team_url = team_urls))
#
# team_urls <- fb_teams_urls("https://fbref.com/en/comps/63/1-HNL-Stats")
# fb_teams <- rbind(fb_teams, fb_team_match_results(team_url = team_urls))
#
# team_urls <- fb_teams_urls("https://fbref.com/en/comps/56/Austrian-Bundesliga-Stats")
# fb_teams <- rbind(fb_teams, fb_team_match_results(team_url = team_urls))
#
# team_urls <- fb_teams_urls("https://fbref.com/en/comps/54/Serbian-SuperLiga-Stats")
# fb_teams <- rbind(fb_teams, fb_team_match_results(team_url = team_urls))
#
# messi_primary <- fb_player_scouting_report(player_url = "https://fbref.com/en/players/8d78e732/Robert-Lewandowski")


all_clubs <-c()
for (el in urls){
  team_urls <- fb_teams_urls(el)
  all_clubs <-append(all_clubs, team_urls)
}

write.csv(all_clubs, "C:\\Users\\wmachon\\DataspellProjects\\MiddleEuropeanTalents\\data\\all_clubs_fbref.csv", row.names=FALSE)


