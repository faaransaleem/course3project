library("data.table")



##Play with standard files
	act <- read.table("UCI HAR Dataset/activity_labels.txt")[,2]
	features <- read.table("UCI HAR Dataset/features.txt")[,2]
	ourfeatures <- grepl("mean|std" , features)
	
##Play with Test files

	xtest <- read.table("./UCI HAR Dataset/test/X_test.txt")
	ytest <- read.table("./UCI HAR Dataset/test/y_test.txt")
	subtest <- as.data.table(read.table("./UCI HAR Dataset/test/subject_test.txt"))

	names(xtest) <- features	
	xtest <- xtest[,ourfeatures]
	ytest[,2] <- act[ytest[,1]]
	names(ytest) <- c( "V1" = "actcode" ,  "V2" = "actname") 
	names(subtest) <- c("V1" = "subject")

##one data set for test files
	datatest <- cbind(subtest,xtest,ytest)
	

##Play with Train files

	xtrain <- read.table("./UCI HAR Dataset/train/X_train.txt")
	ytrain <- read.table("./UCI HAR Dataset/train/y_train.txt")
	subtrain <- as.data.table(read.table("./UCI HAR Dataset/train/subject_train.txt"))
	names(xtrain) <- features	
	xtrain <- xtrain[,ourfeatures]
	ytrain[,2] <- act[ytrain[,1]]
	names(ytrain) <- c( "V1" = "actcode" ,  "V2" = "actname") 
	names(subtrain) <- c("V1" = "subject")

##one data set for train files
	datatrain <- cbind(subtrain,xtrain,ytrain)
	

##combining train and test files
	data <- rbind(datatest, datatrain)
	grouped <- melt(data, id = c("subject", "actcode", "actname"), measure.vars = setdiff(colnames(data),c("subject", "actcode", "actname")))

##step5
	clean <- dcast(grouped, subject + actname ~ variable, mean)

## writing files
write.table(clean, file = "./course3project.txt", row.name = FALSE)

