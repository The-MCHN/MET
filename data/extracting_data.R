install.packages("worldfootballR")

mapped_players <- player_dictionary_mapping()

START.YEAR <- 2022

team_urls <- tm_league_team_urls(country_name = "Poland", start_year = START.YEAR)
ekstraklasa_players <- tm_squad_stats(team_url = team_urls)

team_urls <- tm_league_team_urls(country_name = "Czech Republic", start_year = START.YEAR)
czech_I <- tm_squad_stats(team_url = team_urls)

team_urls <- tm_league_team_urls(start_year = START.YEAR, league_url = "https://www.transfermarkt.com/league-one/startseite/wettbewerb/SLO1")
slovakia_I <- tm_squad_stats(team_url = team_urls)

team_urls <- tm_league_team_urls(start_year = START.YEAR, league_url = "https://www.transfermarkt.com/league-one/startseite/wettbewerb/UNG1")
hung_I <- tm_squad_stats(team_url = team_urls)

team_urls <- tm_league_team_urls(country_name = "Austria", start_year = START.YEAR)
austr_I <- tm_squad_stats(team_url = team_urls)

team_urls <- tm_league_team_urls(start_year = START.YEAR, league_url = "https://www.transfermarkt.com/league-one/startseite/wettbewerb/SL1")
slovenia <- tm_squad_stats(team_url = team_urls)

team_urls <- tm_league_team_urls(start_year = START.YEAR, league_url = "https://www.transfermarkt.com/league-one/startseite/wettbewerb/KR1")
croatia <- tm_squad_stats(team_url = team_urls)

team_urls <- tm_league_team_urls(start_year = START.YEAR, league_url = "https://www.transfermarkt.com/league-one/startseite/wettbewerb/BOS1")
bosnia <- tm_squad_stats(team_url = team_urls)

team_urls <- tm_league_team_urls(country_name = "Serbia", start_year = START.YEAR)
serbia <- tm_squad_stats(team_url = team_urls)

team_urls <- tm_league_team_urls(start_year = START.YEAR, league_url = "https://www.transfermarkt.com/efbet-liga/startseite/wettbewerb/BU1")
bulgaria <- tm_squad_stats(team_url = team_urls)

team_urls <- tm_league_team_urls(start_year = START.YEAR, league_url = "https://www.transfermarkt.com/prva-makedonska-fudbalska-liga/startseite/wettbewerb/MAZ1")
macedonia <- tm_squad_stats(team_url = team_urls)

team_urls <- tm_league_team_urls(start_year = START.YEAR, league_url = "https://www.transfermarkt.com/telekom-1-cfl/startseite/wettbewerb/MNE1")
montenegro <- tm_squad_stats(team_url = team_urls)

team_urls <- tm_league_team_urls(start_year = START.YEAR, league_url = "https://www.transfermarkt.com/kategoria-superiore/startseite/wettbewerb/ALB1")
albania <- tm_squad_stats(team_url = team_urls)

team_urls <- tm_league_team_urls(start_year = START.YEAR, league_url = "https://www.transfermarkt.com/kategoria-superiore/startseite/wettbewerb/GR1")
greece_I <- tm_squad_stats(team_url = team_urls)

team_urls <- tm_league_team_urls(start_year = START.YEAR, league_url = "https://www.transfermarkt.com/kategoria-superiore/startseite/wettbewerb/GR2")
greece_II <- tm_squad_stats(team_url = team_urls)

all_tables <- rbind(ekstraklasa_players, czech_I, slovakia_I, hung_I, austr_I, slovenia, croatia, bosnia, serbia, bulgaria, macedonia, montenegro, albania, greece_I, greece_II)

df <-data.frame(all_tables)

write.csv(all_tables, "C:\\Users\\wmachon\\DataspellProjects\\MiddleEuropeanTalents\\data.csv", row.names=FALSE)

players_bios <- tm_player_bio(all_tables$player_url)
write.csv(players_bios, "C:\\Users\\wmachon\\DataspellProjects\\MiddleEuropeanTalents\\players_bio_data.csv", row.names=FALSE)