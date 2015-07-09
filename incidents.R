install.packages("ggplot2")
library(ggplot2)

birdstrikes = read.csv("~/anyagok/birdstrikes/birdstrikes.csv",header=FALSE,col.names=c('id','aircraft','state','size','cost'))
colnames(birdstrikes)

?aggregate
i.state = aggregate(list(incidents=birdstrikes$state), by=list(state=birdstrikes$state), FUN=length)

?order
order(i.state$incidents)
i.ordered = i.state[order(i.state$incidents, decreasing=TRUE),]
i.ordered

most.incidents = head(i.ordered,n=10)

?qplot
qplot(x=incidents,y=state,data=most.incidents) + theme_bw()
