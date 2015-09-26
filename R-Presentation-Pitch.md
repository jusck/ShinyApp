Iris Identification System (IIS)
========================================================
author: jusck
date: 26-Sept-2015
font-family: 'Helvetica'

Problem being addressed:
========================================================
For years now people have struggled with the thorny 
issue of wanting to identify an Iris type by using a
few simple measurements.

Finally the wait is over and the ShinyApp "IIS" is ready.

Turn the page to find out more.


Background:
========================================================

The famous (Fisher's or Anderson's) iris data set has 
been run into a Random Forest model to allow predictions
of the type of IRIS to be made from four simple 
measurements.

- The Sepal Length
- The Sepal Width
- The Petal Length
- The Petal Width

These can be easily set on the application and on the right
the type will be identified. Try it at https://jusck.shinyapps.io/ShinyApp


Code used for the model:
========================================================

The code to produce the model is shown below for convenience...

```r
library(datasets) 
library(caret)
library(randomForest)
library(e1071)
data(iris)
model <-  train(Species ~ ., data = iris, method="rf", trControl=trainControl(method='cv',number=4))
```

Model Accuracy (training data):
========================================================
<small>

```

Call:
 randomForest(x = x, y = y, mtry = param$mtry) 
               Type of random forest: classification
                     Number of trees: 500
No. of variables tried at each split: 3

        OOB estimate of  error rate: 4%
Confusion matrix:
           setosa versicolor virginica class.error
setosa         50          0         0        0.00
versicolor      0         47         3        0.06
virginica       0          3        47        0.06
```
</small>
