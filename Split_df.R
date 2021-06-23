## SPLit a data frame into limited rows and write files with changing names


######### ARCHive
### Make file partitions of 10 000
chunk = 10000
n = length(df.archive$`Care Pack Serial Number`)
r = rep(1:ceiling(n/chunk),each=chunk)[1:n]

partitions = split(df.archive$`Care Pack Serial Number`,r)


##Write files to folders each with different name

z = 1
for(files in partitions){
  write.table(files,paste0("C:/Users/barrerao/Desktop/X/Archive/ARCH_CCP_Split",z,".csv"),row.names = F,col.names = F)
  
  #writexl::write_xlsx(,,col_names = F,format_headers = F)
  z=z+1
}
