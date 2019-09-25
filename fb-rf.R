library(randomForest)

trainset <- read.csv(file = "C:\\Users\\Administrator\\Desktop\\trainset754.csv")
#View(trainset)
set.seed(1245)
rf.model <- randomForest(type ~ .,data = trainset,importance = TRUE)
rf.model
plot(rf.model,type="l",main="l")

x <- subset(trainset, select = -type)
y <- trainset$type
rf.pred = predict(rf.model,x)
table(rf.pred,y)


value <- importance(rf.model,2)
varImpPlot(rf.model)

margins.rf = margin(rf.model,trainset)
plot(margins.rf)
hist(margins.rf,main = "Margines of Random Forest for my dataset")
boxplot(margins.rf ~ y,main = "Margines of Random Forest for my dataset by type")


