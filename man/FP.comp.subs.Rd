\name{FP.comp.subs}
\alias{FP.comp.subs}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
FP.comp.subs
}
\description{
This function simulates pure birth trees with a given number of taxa and NA subtrees and calculates the null expectation for the number of significant rate differences.
}
\usage{
FP.comp.subs(tree.size, na.present, sims = 100, missing = 0, 
alpha = 0.05, verbose = FALSE, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{tree.size}{
A value for the number of terminal taxa in the tree to simulate.
}
  \item{na.present}{
A value for the number of NA subtrees in the simulated trees.
}
  \item{sims}{
A value for the number of trees to simulate.
}
  \item{missing}{
A value indicating the number of missing taxa from the tree.
}
  \item{alpha}{
A value indicating the threshold for statistical significance.
}
  \item{verbose}{
A boolean indicating whether a summary of the simulations is printed to the screen.
}
  \item{\dots}{
Arguments passed on to \code{comp.subs} function
}
}
\details{
This function is useful if the user wants to know the expected number of significant rate differences for a tree of a given size and number of NA subtrees. This function calls on \code{comp.subs}, and arguments can be passed on.
}
\value{
A list that consists of the following:
\item{tree.size}{The number of terminal taxa provided by the user.}
\item{missing}{The number of missing taxa from the tree.}
\item{sims}{The number of simulated trees.}
\item{FPRthres}{The number of significant rate difference detections expected based upon the alpha value provided by the user.}

%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{Shah, P., B. M. Fitzpatrick, and J. A. Fordyce. 2013. A parametric method for assessing diversification rate variation in phylogenetic trees. Evolution 67:368-377.
%% ~put references to the literature/web site here ~
}
\author{
Premal Shah, Benjamin Fitzpatrick and James Fordyce.
}
\note{
\code{comp.subs} is an exploratory data analysis tool and concerns of false positives should be considered accordingly. The argument "missing" can be used for trees with incomplete taxon sampling. Thus, if a group should have 100 taxa included, but only 90 are present in the tree, tree.size=100 and missing=10.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{comp.subs}
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
	\dontrun{
data(geospiza)
tree<-geospiza$geospiza.tree
na.count<-tree.na.Count(tree)
FP.comp.subs(tree.size=14,na.present=na.count,verbose=TRUE)
}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
