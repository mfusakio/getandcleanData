run_Analysis <- function(){
  x_test <- read.table("./test/X_test.txt")
  y_test <- read.table("./test/y_test.txt")
  x_train <- read.table("./train/X_train.txt")
  y_train <- read.table("./train/y_train.txt")
  sub_train <- read.table("./train/subject_train.txt")
  sub_test <- read.table("./test/subject_test.txt")
  activity <- read.table("./activity_labels.txt")
  addActivity_train <- mutate(y_train, Activity = activity[y_train$V1,2])
  addActivity_test <- mutate(y_test, Activity = activity[y_test$V1,2])
  colnames(x_train) <- as.character(features[,2])
  colnames(x_test) <- as.character(features[,2])
  temp_train <- cbind(addActivity_train, sub_train)
  colnames(temp_train)[3] <- "Subject"
  temp_test <- cbind(addActivity_test, sub_test)
  colnames(temp_test)[3] <- "Subject"
  merge_test <- cbind(temp_test, x_test)
  merge_train <- cbind(temp_train, x_train)
  merged <- rbind(merge_train, merge_test)
  valid_column_names <- make.names(names=names(merged), unique = TRUE, allow_ = TRUE)
  names(merged) <- valid_column_names
  edited <- select(merged, Subject, Activity, contains("mean"), contains("std"), -contains("Freq"), -contains("gravityMean"))
  newSet <- group_by(edited, Subject, Activity)
  newSet2 <- newSet %>% summarise_each(funs(mean))
  write.table(newSet2, "./tidyData.txt", row.name=FALSE)	
  
  
}