###############################################################################
#                Phase 1 for Logistic Regression Homework                     #
#                Due September 6                                              #
#                Team Blue 5                                                  #
###############################################################################
library('haven')#for read_sas()
#load data
setwd("C:/Users/Iqra Munawar/Documents/Python Scripts/Fall_1_Team_Work/Logistic Regression/Data")
dataTrain <- read_sas('insurance_t.sas7bdat')
setwd('/Users/michaelzabawa/Documents/GitHub/Fall\ 1\ Team\ Work/Logistic\ Regression/Data')
#modifies BRANCH and RES to factors for analysis
dataTrain$BRANCH <- as.factor(dataTrain$BRANCH)
dataTrain$RES <- as.factor(dataTrain$RES)
#Looks at the 5 number summary of the data
summary(dataTrain)
length(levels(dataTrain$BRANCH))
head(dataTrain$ACCTAGE, n= 10)
#binary? DDA, DIRDEP, NSF, SAV, ATM, CD, IRA, LOC, INV, ILS, MM, MTG, CC, SDB, HMOWN, MOVED, INAREA, (INS <- Target)
#NA's ACCTAGE, PHONE, POS, POSAMT, INV, INVBAL, CC, CCBAL, CCPURC, INCOME, HMOWN, LORES, HMVAL, AGE, CRSCORE

# Bullet point 1:
# Verify alpha
# Run simple logistic/test of association on all variables - pulling out the significant ones

#defining an empty list

#Test to see if models(next code) is working
lmod = glm(INS ~ ACCTAGE,data = dataTrain, family = binomial(link="logit"))

#fitting every  model with ins regressed on every independent variable individually
models = sapply(setdiff(names(dataTrain),"INS"),
         function(x) summary(glm(reformulate(x,response="INS"),
                              data=dataTrain,family=binomial)))

# extracting the p-value from the model
for (i in seq_along(models)){
  models[[1]]$coefficients[2,4]
  }



# Bullet point 2:
# Find the binary variables
# Run the odds
# Create a table
# Talk about the largest one (include any additional interesting findings)

# Bullet point 3:
# Test the linearity assumptions for continuous variables (logit stuff?)
# Qq plots 
# Y = log odds (logits)
# X = predictor variable (continuous)

# Bullet point 4:
# Visual representation of missing values
# Examine multicollinearity 
# Write the report 
 


#test






