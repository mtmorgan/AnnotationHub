# library(RSQLite)
# library(AnnotationHub)
# 
# # copy database
# ah <- AnnotationHub()
# conn <- dbConnect(RSQLite::SQLite(), dbname = ah@.db_path)
# con <- dbConnect(RSQLite::SQLite(), dbname = "ah_test.sqlite3")
# sqliteCopyDatabase(conn, con)
# dbListTables(con)
# 
# # create tables
# dcf <- read.dcf(file.path(R.home(), "share", "licenses", "license.db"))
# dcf <- data.frame(dcf)
# dcf <- cbind(id = 1:dim(dcf)[1], dcf)
# dbWriteTable(con, "licenses", dcf)
# 
# df <- data.frame(resource_id = 5012, license_id = 2)
# df <- rbind(df, c(5012, 3))
# dbWriteTable(con, "resources_licenses", df)
# dbGetQuery(con, "SELECT * FROM resources_licenses LIMIT 3")