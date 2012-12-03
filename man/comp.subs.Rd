\name{comp.subs}
\alias{comp.subs}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
comp.subs
}
\description{
 The function implements the parametric rate comparison test. The function iterates through all subtrees of a phylogenetic tree and compares the distribution of branch lengths in the subtree to the "remainder" tree. It is intended to be used with a chronogram in order to test whether diversification rates differ among clades within a broader phylogeny. A variety of truncated distributions can be used and compared via likelihood.
}
\usage{
comp.subs(tree, thr = 6, srt = "drop", min.val = 0.01,
mod.id = c(1, 0, 0, 0),verbose=TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{tree}{
An object of class \code{phylo}. To test variation in diversification rates, this should be a chronogram.
}
  \item{thr}{
Threshold subtree or remainder tree size below which comparisons should not be performed. \code{thr} is the minimum number of edges (in either the subtree or remainder tree) for a comparison to be made.
}
  \item{srt}{
Treatment of subtree root edge. Default is "drop" meaning the edge subtending each subtree will be left out of the comparison for that subtree. Alternatives "in" or "out" classify the subtree root edge as part of the subtree or part of the remainder tree, respectively.
}
  \item{min.val}{
Replacement of zero-length branches with a small positive number to avoid spurious zeros in likelihood calculations. This value is treated as a fraction of the maximum branch (it is multiplied by the maximum edge length and that resultant is substituted for zero-length branches in \code{tree}
}
  \item{mod.id}{
Indicator vector specifying statistical distributions to be fit to the data. In order, the distributions are exponential, Weibull, lognormal, and variable rates \cite{Venditti et al. 2010}. Default is exponential only.
}
  \item{verbose}{
A logical indicating whether progress is updated on the screen}
}
\details{
 All distributions are fit using the likelihood for the truncated form %\cite{our paper}. Lognormal is known to give biased estimates of the mean for fat-tailed or multimodal distributions. The variable rates distribution is defined for alpha greater than or equal to 1 because the expectation is undefined for alpha less than one %\cite{our paper}. 

}
\value{
A data frame containing up to 15 variables for each subtree of \code{tree}. Each row corresponds to a subtree and the order is that returned by the function \code{subtrees}. Subtrees that are not tested (owing to failure to meet the \code{thr} threshold) have NA's for all variables:

  \item{Par1.tot }{First estimated parameter of the best fit model for the pooled edge lengths of the subtree and remainder tree. For exponential, this is the rate. For Weibull it is the "shape" parameter. For lognormal it is mu. For the variable rates distribution it is alpha.}
  \item{Par2.tot}{Second estimated parameter of the best fit model for the pooled edge lengths. For exponential, it is NA. For Weibull it is the "scale" parameter. For lognormal, it is sigma. For variable rates, it is beta.}
  \item{Par1.tr1}{First estimated parameter for the best fit model for the subtree}
  \item{Par2.tr1}{Second estimated parameter for the best fit model for the subtree}
  \item{Par1.tr2}{First estimated parameter for the best fit model for the remainder tree}
  \item{Par2.tr2}{Second estimated parameter for the best fit model for the remainder tree}
  \item{llk.1r}{log likelihood of the best fit model for the pooled set of edges: the one-rate model.}
  \item{llk.2r}{log likelihood for the best two-rate model}
  \item{mod.1r.tot}{Best fit distribution for the one-rate model: 1=exponential, 2=Weibull, 3=lognormal, 4=variable rates}
  \item{mod.2r.tr1}{Best fit distribution for the subtree under the two-rate model}
  \item{mod.2r.tr2}{Best fit distribution for the remainder tree under the two-rate model}
  \item{node1}{Identifies the node corresponding to the most recent common ancestor of the subtree and its sister clade. That is, the node ancestral to the branch along which a rate change might have occured.}
  \item{node2}{Identifies the most recent common ancestor of all taxa in the subtree. That is, the descendant node of the branch along which a rate chage might have occurred.}
  \item{p.val}{P-value from the likelihood ratio test of the two-rate vs. one-rate model for the subtree defined by \code{node2}}
  \item{EvidRatio}{The evidence ratio from the AICc scores of the two-rate vs. one-rate model for the subtree defined by \code{node2}}
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
Shah, P., B. M. Fitzpatrick, and J. A. Fordyce. 2013 A parametric method for assessing diversification rate variation in phylogenetic trees. Evolution 67:368-377. 
Venditti, C., A. Meade, and M. Pagel, 2010. Phylogenies reveal new interpretation of speciation and the red queen. Nature 463:349-352.
%add our paper
}
\author{
Premal Shah, James A. Fordyce, Benjamin M. Fitzpatrick
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\examples{
data(geospiza)
attach(geospiza)
comp.subs(geospiza.tree)

}
