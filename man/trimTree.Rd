\name{trimTree}
\alias{trimTree}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
trimTree
}
\description{
This function will trim a specified amount of time, or branch length, from the tips of an ultrametric tree.
}
\usage{
trimTree(phy, Time)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{phy}{
An ultrametric tree of object class phylo.
}
  \item{Time}{
A value indicating the amount of branch length (time) to be removed from the tips of the tree
}
}
\details{
This function is useful if there is some ambiguity regarding the resolution of the tips. This might include possible over-splitting of taxa, or incomplete taxon sampling. For example, it might be desirable to analyze a tree where the most recent 1 million years is excluded to account for the possibility of incomplete sampling. It is important to note that analyses conducted on the trimmed tree is based on lineages that are still extant and cannot account for lineages that might have been present at the time of the trimming but has subsequently gone extinct.
}
\value{
A list that consists of the following:
\item{o.tree}{The original tree as object class phylo.}
\item{t.tree}{The tree after the designated amount of branch length has been trimmed from the tips as object class phylo.}
\item{new.tip.clades}{A vector in the t.tree phylo object that gives the tip names following trimming that identifies the original tip names in the newly defined clades.}

%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{Shah, P., B. M. Fitzpatrick, and J. A. Fordyce. A parametric method for assessing diversification rate variation in phylogenetic trees. Evolution.
%% ~put references to the literature/web site here ~
}
\author{
Premal Shah, Benjamin Fitzpatrick and James Fordyce.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\examples{
data(hivtree.newick)
cat(hivtree.newick, file = "hivtree.phy", sep = "\n") 
tree.hiv <- read.tree("hivtree.phy") # load tree 
unlink("hivtree.phy") # delete the file "hivtree.phy" 

trim.hiv<-trimTree(phy=tree.hiv,Time=0.1)#trims 0.1 branchlength units from the tree
par(mfrow=c(1,2))
plot.phylo(trim.hiv$o.tree);plot.phylo(trim.hiv$t.tree)

# Identify the names of the original terminal taxa 
# that correspond to the newly defined, numbered tips.
trim.hiv$t.tree$new.tip.clades


}
