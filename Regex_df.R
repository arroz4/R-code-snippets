

#### Find rows where a string appears and turn it null
df.clean.org$`Primary Email`[grepl("^-@",df.clean.org$`Primary Email`)]=NA


##Remove punctuation marks from df column
df.clear$`Work Phone`[grepl("[[:punct:]]", df.clear$`Work Phone`)]= gsub("[[:punct:]]","",df.clear$`Work Phone`[grepl("[[:punct:]]", df.clear$`Work Phone`)])

## Remove symbol and onwards in a string
df.emails$`Work Phone`[grepl("#", df.emails$`Work Phone`)]=gsub("#.*","",df.emails$`Work Phone`[grepl("#", df.emails$`Work Phone`)])


## "." the dot means any character in a regex like _ in sql 
# ".*" means any string in a regex like % in sql

## ".*@.*" means every string with @ in the middle like emails



## USE SAPPLY when working with columns it retuns a df and its easier to handle than apply

df.emails$`Work Phone`[sapply(df.emails$`Work Phone`,FUN=nchar)<14]

## USEFUL FUNCTIONS
sapply
gsub()
grepl()
collpase()