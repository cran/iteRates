\name{comp.fit.subs}
\alias{comp.fit.subs}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
comp.fit.subs
}
\description{
This function compares rate estimates among defined subtrees and evaluates various groupings from 1 to k groups for these subtrees.
}
\usage{
comp.fit.subs(trees, focal, k, mod.id = c(1, 0, 0, 0), min.val = 0.01)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{trees}{
A list from from function \code{id.subtrees}.
}
  \item{focal}{
A vector indicating the subtrees to compare
}
  \item{k}{
A value indicting the maximum number of groupings of subtrees to examine
}
  \item{mod.id}{
A vector with four elements of 0 or 1 indicating which models to consider. 1 indicates that the model should be considered. 0 indicates the model is not considered. These for elements refer to an exponential, Weibel, lognormal, and rate variable, respectively.
}
  \item{min.val}{
A value for determining the minimum edge length for a tree scaled against the longest edge length. A value of 0.01 (the default) rescales the minimum edge length to 1% of the longest edge.
}
}
\details{
The list of possible subtrees is provided by the function \code{id.subtrees}. The function will explore all possible groupings of subtrees into k defined groups choosing the best fit model for each partition from among the models identified by mod.id. 
}
\value{
A dataframe that consists of the following:
\item{k}{The number of groups}
\item{Groups}{The groupings for each subtree numbered as 1 to the number of subtrees indicated. The numbering corresponds to the order in which subtrees are identified by focal. Groups are separated with vs.}
\item{gi_Pj}{The jth parameter value for the ith group in the analysis}
\item{gi_mod.id}{The best model chosen for the ith group}
\item{gi_n.param}{The number of parameters in the best model for the ith group}
\item{AIC}{Akaike information criterion score for the entire model for a grouping scheme}
\item{AICc}{Akaike information criterion corrected for sample size}
\item{dAICc}{The delta AIC across all grouping schemes and k values relative to the best fit model}

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
The output can get very large as k increases. Function tab.summary is useful for reducing the size of the result table.
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


}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
