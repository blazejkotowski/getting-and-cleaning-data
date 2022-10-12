datadir = "UCI HAR Dataset"

# load and merge x
x_test <- read.table(paste0(datadir, "/test/X_test.txt"))
x_train <- read.table(paste0(datadir, "/train/X_train.txt"))
x <- rbind(x_test, x_train)

# load rename the feature columns to the feature names
features <- read.table(paste0(datadir, "/features.txt"))
names(x) <- features$V2

# load and merge y
y_test <- read.table(paste0(datadir, "/test/y_test.txt"))
y_train <- read.table(paste0(datadir, "/train/y_train.txt"))
y <- rbind(y_test, y_train)
names(y) <- c("activity_id")

# convert activity ids to named factors
activity_labels <- read.table(paste0(datadir, "/activity_labels.txt"))
fac <- factor(activity_labels$V2, activity_labels$V2)
activities <- data.frame(activity=fac[y$activity_id])

# load and merge subject ids
subject_test <- read.table(paste0(datadir, "/test/subject_test.txt"))
subject_train <- read.table(paste0(datadir, "/train/subject_train.txt"))
subject <- rbind(subject_test, subject_train)
names(subject) <- c("subject_id")

df <- cbind(subject, activities, x)

selected_columns <- grep("mean\\(\\)$|std\\(\\)$",names(df))
df <- df[, c(1, 2, selected_columns)]

library("reshape")
df.molten <- melt(df, id.vars=c("subject_id", "activity"))
df.cast <- cast(df.molten, subject_id+activity~..., fun.aggregate=mean)

write.csv(df, "complete_features.csv")
write.csv(df.molten, "averages.csv")