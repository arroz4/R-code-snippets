

## Delete null values
df.merge = df.merge[!is.na(df.merge$`Service End Date`),]