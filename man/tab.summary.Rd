\name{tab.summary}
\alias{tab.summary}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
tab.summary
}
\description{
This function provides an abridged output of results obtained from the \code{comp.fit.subs} function by restricting the output to a user provided delta AIC threshold.
}
\usage{
tab.summary(res, daic = 2, show.rate = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{res}{
A dataframe obtained from \code{comp.fit.subs} function.
}
  \item{daic}{
A value indicating a threshold of delta AIC relative to the best fit model for each k to be included in the output.
}
  \item{show.rate}{
A boolean indicting whether the rate parameters are included in the output.
}
}
\details{
This function will provide a reduced output of the results provided by the \code{comp.fit.subs} function by allowing the user to choose a critical delta AIC for each value of k that determines which comparisons are included in the output. The best fit model for each k is included in the output regardless of delta AIC. The show.rate argument indicates whether the rate estimate for each of the subtrees is included in the output.
}
\value{
A dataframe that consists of the following:
\item{k}{The number of groups}
\item{Groups}{the groupings for each subtree numbered as 1 to the number of subtrees indicated. The numbering corresponds to the order in which subtrees are identified by focal. Groups are separated with 'vs.'.}
\item{gi_rate}{The rate for the ith group in the analysis.}
\item{LL}{The log likelihood for the entire model for a grouping scheme.}
\item{AIC}{Akaike information criterion score for the entire model for a grouping scheme.}
\item{AICc}{Akaike information criterion corrected for sample size.}
\item{dAICc}{The delta AIC across all grouping schemes and k values relative to the best fit model.}

%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Premal Shah, Benjamin Fitzpatrick and James Fordyce.
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{tab.summary}
\code{id.subtrees}

}
\examples{
data(hivtree.newick)
cat(hivtree.newick, file = "hivtree.phy", sep = "\n") 
tree.hiv <- read.tree("hivtree.phy") # load tree 
unlink("hivtree.phy") # delete the file "hivtree.phy" 

idHIV<-id.subtrees(tree.hiv)
plot(idHIV$tree,show.node.label=TRUE)
cfsHIV<-comp.fit.subs(idHIV$subtree,focal=c(153,119,96,5),k=4)
tab.summary(cfsHIV)
tab.summary(cfsHIV,daic=1)
tab.summary(cfsHIV,daic=0.01)



}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
