# Hierarchical Clustering

# Importing the dataset
dataset = read.csv('C:/DA/Content/CareerNow/ML/Machine Learning-A-Z-Codes-Datasets/Machine Learning A-Z (Codes and Datasets)/Part 4 - Clustering/Section 24 - K-Means Clustering/R/mall.csv')
X = dataset[4:5]

# Using the dendrogram to find the optimal number of clusters
dendrogram = hclust(d = dist(X, method = 'euclidean'),
                    method = 'ward.D')
plot(dendrogram,
     main = paste('Dendrogram'),
     xlab = 'Customers',
     ylab = 'Euclidean distances')

# Fitting Hierarchical Clustering to the dataset
hc = hclust(d = dist(X, method = 'euclidean'),
            method = 'ward.D')
y_hc = cutree(hc, 5)

# Visualising the clusters
library(cluster)
clusplot(x = X,
         clus = y_hc,
         lines = 0,
         shade = TRUE,
         color = TRUE,
         labels= 2,
         plotchar = FALSE,
         span = TRUE,
         main = paste('Clusters of customers'),
         xlab = 'Annual Income',
         ylab = 'Spending Score')
