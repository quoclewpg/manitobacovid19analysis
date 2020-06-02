#read a csv file which is retrieving from Gov of MB site graph
cases_manitoba = read.csv("/Users/Q/Desktop/cases_manitoba.csv", header=T, fileEncoding = "UTF-8-BOM")

#attach a data to use
attach(cases_manitoba)

#plot the data
plot(Days, ActiveCases)
abline( lm(ActiveCases ~ Days), col="red")

#compute linear regression model
linear_model = lm(ActiveCases ~ Days)


#compute multiple regression model with additional Recovered Rate
multiple_model = lm (ActiveCases ~ Days + RecoveredRate)

#print out the analysis
summary(linear_model)

#print out the analysis



summary(multiple_model)

#t.test(ActiveCases, Days)
#cor.test(ActiveCases, Days)

#compute nonlinear model
#nonlinear_model = nls (ActiveCases ~ Days *exp(RecoveredRate * x))
#summary(nonlinear_model)

