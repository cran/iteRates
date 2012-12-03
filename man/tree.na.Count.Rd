\name{tree.na.Count}
\alias{tree.na.Count}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
tree.na.Count
}
\description{
This function will identify the number of NA subtrees present in a given phylogenetic tree.
}
\usage{
tree.na.Count(tree, thr = 6, srt = "drop", min.val = 0.01,
mod.id = c(1, 0, 0, 0))
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{tree}{
A tree of object class phylo.
}
  \item{thr}{
The threshold for the minimum number of edges to be used for calculating the rate of a subtree.
}
  \item{srt}{
Determines how the edge leading to a subtree is dealt with when calculating rates. The default, "drop", excludes the edge leading to the subtree from the analysis. "in" will include the edge as part of the subtree and "out" will include the edge as part of the remaining tree.
}
  \item{min.val}{
A value for determining the minimum edge length for a tree scaled against the longest edge length. A value of 0.01 (the default) rescales the minimum edge length to 1% of the longest edge.
}
  \item{mod.id}{
A vector with four elements of 0 or 1 indicating which models to consider. 1 indicates that the model should be considered. 0 indicates the model is not considered. These for elements refer to an exponential, Weibel, lognormal, and rate variable, respectively.
}
}
\details{
This function identifies the number of NA subtrees present in a given phylogenetic tree. This information might be useful if the user is interested in simulating trees with the same amount of information (i.e., useable edges) for calculating rates.
}
\value{
A number indicating the number of NAs in the given tree.
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

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{FP.comp.subs}
}
\examples{
	\dontrun{
data(geospiza)
tree<-geospiza$geospiza.tree
tree.na.Count(tree)
}
}
