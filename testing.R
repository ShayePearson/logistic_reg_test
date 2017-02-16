ncol(titanic_all)
caret::nearZeroVar(titanic_all)
colnames(titanic_all)[caret::nearZeroVar(titanic_all)]
pairs(titanic_all)

numericcols <- sapply(titanic_all, is.numeric)
titamic_all_numeric<-titanic_all[,numericcols]
cor(titamic_all_numeric, use = "complete.obs")
cor(titamic_all_numeric, use = "pairwise.complete.obs")
summary(titamic_all_numeric)
cor(na.omit(titamic_all_numeric)) # not used 

