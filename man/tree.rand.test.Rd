\name{tree.rand.test}
\alias{tree.rand.test}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
tree.rand.test
}
\description{
This function performs a randomization test for rate variation among clades.
}
\usage{
tree.rand.test(tree, reps=1000, mod.id=c(1,0,0,0), trace=TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{tree}{
An ultrametric tree of object class phylo.
}
  \item{reps}{
Desired number of randomizations
}
  \item{mod.id}{
Indicator vector specifying statistical distributions to be fit to the data. In order, the distributions are exponential, Weibull, lognormal, and variable rates \cite{Venditti et al. 2010}. Default is exponential only.
}
  \item{trace}{
If true, progress will be indicated by printing to the screen.
}

}
\details{
This function addresses the potential for spurious inference of diversification rate variation when a phylogeny deviates from the pure birth model. Deviation from pure birth (e.g., when extinction is important or speciation probabilities change over time) distorts the distribution of branching times such that internode lengths do not satisfy the independent and identical distribution (iid) assumption of the PRC test. This function distinguishes among-clade rate variation from rate variation through time by holding the set of branching times constant and randomizing tree topologies. That is, it simulates the null hypothesis that speciation and extinction probabilities are constant across lineages at any given time. The function provides a null distribution for the false detection rate - the fraction of subtrees appearing to have deviant diversification rates when there is no true among-clade rate variation.
}
\value{
A list that consists of the following:
\item{tree}{The original tree as object class phylo.}
\item{obs.p}{Observed set of p-values from comp.subs.}
\item{ncs}{A (potentially large) list of output (p-values and evidence ratios) from each randomization.}
\item{obs.detection}{Detection rate for the observed tree. This is the fraction of qualified subtrees with rate variation according to a p-value less than 0.05}
\item{p.detection}{The fraction of null trees that have more detections than the observed.}

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

%% ~Make other sections like Warning with \section{Warning }{....} ~

\examples{
	\dontrun{
data(geospiza)
tree <- geospiza$geospiza.tree
tree.rand.test(tree,reps=50) # few reps used to illustrate without taking too much time
}}
