
data_url <- "C:\\Users\\Akram Tabet\\Documents\\Datavis\\2020(1).csv"
# Loading into a dataframe
df <- read.csv(data_url)
df

colnames(df)

dim(df)[1]
dim(df)[2]
any(is.na(df))
sapply(df, class)

max(df$Happiness.Scores, na.rm = TRUE)
min(df$Happiness.Scores, na.rm = TRUE)
mean(df$Happiness.Scores, na.rm = TRUE)

numeric_columns <- df[, c('Happiness.Scores', 'Social.Support', 'Healthy.Life.Expectancy','Freedom.to.Make.Life.Choices','Generosity','Perceptions.of.Corruption')]

# Calculate Pearson correlation matrix
correlation <- cor(numeric_columns, method = "pearson")

print(correlation)

sorted_correlation <- sort(abs(correlation['Happiness.Scores']), decreasing = TRUE)

# Print the sorted absolute correlation values
print(sorted_correlation)

max(df$Happiness.Scores, na.rm = TRUE)

df[1, ]
summary(df)

cor(numeric_columns, method = "pearson")
install.packages("gplots")
library(gplots)
# Assuming 'df' is your dataframe
correlation_matrix <- cor(numeric_columns, method = "pearson")

# Create a heatmap
heatmap.2(correlation_matrix,
          col = colorRampPalette(c("blue", "white", "red"))(100),
          main = 'Correlations of Country Data Features',
          cex.main = 1.2, margins = c(5, 10),
          symm = TRUE, scale = 'none', 
          key = TRUE, key.title = 'Correlation',
          key.xlab = 'Pearson Correlation Coefficient',
          trace = 'none', dendrogram = 'none',
          density.info = 'none', na.rm = TRUE,
          notecol = 'black', notecex = 0.8)


