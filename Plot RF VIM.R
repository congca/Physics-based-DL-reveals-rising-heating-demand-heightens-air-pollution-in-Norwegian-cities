########Plot RF VIM
PM25_OSLO <- randomForest(PM25~.,data=PM25OSLO,mtyr=3,importance=T,proximity=F)
model <- PM25_OSLO
data <- PM25OSLO
set.seed(1701)
viviRf  <- vivi(fit = model, 
                data = data, 
                response = "PM25",
                gridSize = 50,
                importanceType = "agnostic",
                nmax = 500,
                reorder = TRUE,
                predictFun = NULL,
                numPerm = 4,
                showVimpError = FALSE)

# 如果需要添加图例
# 可能需要使用额外的函数来添加图例，这取决于热图函数的具体实现
# Save K-means clustering result with 4 centers
png('Importance of variables as determined by the random forest-PM25_OSLO.png', height = 15, width = 25, units = 'cm', res = 300)
plot.new()
viviHeatmap(mat = viviRf) 
dev.off()


library("network")
library("sna")
library("intergraph")
viviNetwork(mat = viviRf)
viviNetwork(mat = viviRf, intThreshold = 0.12, removeNode = FALSE)
viviNetwork(mat = viviRf, intThreshold = 0.12, removeNode = TRUE)
viviNetwork(mat = viviRf, 
            layout = cbind(c(1,1,1,1,2,2,2,2,2), c(1,2,4,5,1,2,3,4,5)))



PM25_Bergen <- randomForest(PM25~.,data=PM25Bergen,mtyr=3,importance=T,proximity=F)
model <- PM25_Bergen
data <- PM25Bergen
set.seed(1701)
viviRf  <- vivi(fit = model, 
                data = data, 
                response = "PM25",
                gridSize = 50,
                importanceType = "agnostic",
                nmax = 500,
                reorder = TRUE,
                predictFun = NULL,
                numPerm = 4,
                showVimpError = FALSE)

png('Importance of variables as determined by the random forest-PM25_Bergen.png', height = 15, width = 25, units = 'cm', res = 300)
plot.new()
viviHeatmap(mat = viviRf) 
dev.off()
 library("network")
library("sna")
library("intergraph")
viviNetwork(mat = viviRf)
viviNetwork(mat = viviRf, intThreshold = 0.12, removeNode = FALSE)
viviNetwork(mat = viviRf, intThreshold = 0.12, removeNode = TRUE)
viviNetwork(mat = viviRf, 
            layout = cbind(c(1,1,1,1,2,2,2,2,2), c(1,2,4,5,1,2,3,4,5)))





PM25_Trondheim <- randomForest(PM25~.,data=PM25Trondheim,mtyr=3,importance=T,proximity=F)
model <- PM25_Trondheim
data <- PM25Trondheim
set.seed(1701)
viviRf  <- vivi(fit = model, 
                data = data, 
                response = "PM25",
                gridSize = 50,
                importanceType = "agnostic",
                nmax = 500,
                reorder = TRUE,
                predictFun = NULL,
                numPerm = 4,
                showVimpError = FALSE)

png('Importance of variables as determined by the random forest-PM25_Trondheim.png', height = 15, width = 25, units = 'cm', res = 300)
plot.new()
viviHeatmap(mat = viviRf) 
dev.off()
 library("network")
library("sna")
library("intergraph")
viviNetwork(mat = viviRf)
viviNetwork(mat = viviRf, intThreshold = 0.12, removeNode = FALSE)
viviNetwork(mat = viviRf, intThreshold = 0.12, removeNode = TRUE)
viviNetwork(mat = viviRf, layout = cbind(c(1,1,1,1,2,2,2,2,2), c(1,2,4,5,1,2,3,4,5)))




NOx.rf <- randomForest(NOx~.,data=NOx,mtyr=3,importance=T,proximity=F)
model <- NOx.rf
data <- NOx
set.seed(1701)
viviRf  <- vivi(fit = model, 
                data = data, 
                response = "NOx",
                gridSize = 50,
                importanceType = "agnostic",
                nmax = 500,
                reorder = TRUE,
                predictFun = NULL,
                numPerm = 4,
                showVimpError = FALSE)
viviHeatmap(mat = viviRf)


png('Importance of variables as determined by the random forest-NOx.png', height = 15, width = 25, units = 'cm', res = 300)
plot.new()
viviHeatmap(mat = viviRf) 
dev.off()

library("network")
library("sna")
library("intergraph")
viviNetwork(mat = viviRf, intThreshold = 0.12, removeNode = FALSE)
viviNetwork(mat = viviRf, intThreshold = 0.12, removeNode = TRUE)
viviNetwork(mat = viviRf, layout = cbind(c(1,1,1,1,2,2,2,2,2), c(1,2,4,5,1,2,3,4,5)))



NOx_OSLO <- randomForest(NOx~.,data=NOxOSLO,mtyr=3,importance=T,proximity=F)
model <- NOx_OSLO
data <- NOxOSLO
set.seed(1701)
viviRf  <- vivi(fit = model, 
                data = data, 
                response = "NOx",
                gridSize = 50,
                importanceType = "agnostic",
                nmax = 500,
                reorder = TRUE,
                predictFun = NULL,
                numPerm = 4,
                showVimpError = FALSE)
viviHeatmap(mat = viviRf)

png('Importance of variables as determined by the random forest-NOx_OSLO.png', height = 15, width = 25, units = 'cm', res = 300)
plot.new()
viviHeatmap(mat = viviRf) 
dev.off()
library("network")
library("sna")
library("intergraph")
viviNetwork(mat = viviRf, intThreshold = 0.12, removeNode = FALSE)
viviNetwork(mat = viviRf, intThreshold = 0.12, removeNode = TRUE)
viviNetwork(mat = viviRf, layout = cbind(c(1,1,1,1,2,2,2,2,2), c(1,2,4,5,1,2,3,4,5)))



NOx_Trondheim <- randomForest(NOx~.,data=NOxTrondheim,mtyr=3,importance=T,proximity=F)
model <- NOx_Trondheim
data <- NOxTrondheim
set.seed(1701)
viviRf  <- vivi(fit = model, 
                data = data, 
                response = "NOx",
                gridSize = 50,
                importanceType = "agnostic",
                nmax = 500,
                reorder = TRUE,
                predictFun = NULL,
                numPerm = 4,
                showVimpError = FALSE)
png('Importance of variables as determined by the random forest-NOx_Trondheim.png', height = 15, width = 25, units = 'cm', res = 300)
plot.new()
viviHeatmap(mat = viviRf) 
dev.off()
library("network")
library("sna")
library("intergraph")
viviNetwork(mat = viviRf, intThreshold = 0.12, removeNode = FALSE)
viviNetwork(mat = viviRf, intThreshold = 0.12, removeNode = TRUE)
viviNetwork(mat = viviRf,  layout = cbind(c(1,1,1,1,2,2,2,2,2), c(1,2,4,5,1,2,3,4,5)))



NOx_Bergen <- randomForest(NOx~.,data=NOxBergen,mtyr=3,importance=T,proximity=F)
model <- NOx_Bergen
data <- NOxBergen
set.seed(1701)
viviRf  <- vivi(fit = model, 
                data = data, 
                response = "NOx",
                gridSize = 50,
                importanceType = "agnostic",
                nmax = 500,
                reorder = TRUE,
                predictFun = NULL,
                numPerm = 4,
                showVimpError = FALSE)
png('Importance of variables as determined by the random forest-NOx_Bergen.png', height = 15, width = 25, units = 'cm', res = 300)
plot.new()
viviHeatmap(mat = viviRf) 
dev.off()
library("network")
library("sna")
library("intergraph")
viviNetwork(mat = viviRf, intThreshold = 0.12, removeNode = FALSE)
viviNetwork(mat = viviRf, intThreshold = 0.12, removeNode = TRUE)
viviNetwork(mat = viviRf, layout = cbind(c(1,1,1,1,2,2,2,2,2), c(1,2,4,5,1,2,3,4,5)))

###Done


