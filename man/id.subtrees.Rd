\name{id.subtrees}
\alias{id.subtrees}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
id.subtrees
}
\description{
This function identifies and numbers all subtrees within a tree of object class phylo. It creates the object required for function \code{comp.fit.subs}.
}
\usage{
id.subtrees(tree)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{tree}{
A tree of object class phylo.
}
}
\details{
This function identifies all the subtrees in a tree. These identifiers are used to identify the focal subtrees used in the \code{comp.fit.subs} function.
}
\value{
A list that consists of the following:
\item{tree}{The original tree as object class phylo with nodes labeled identifying the identification number for all subtrees.}
\item{subtree}{A list of all possible subtrees as object class phylo.}

%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\author{
Premal Shah, Benjamin Fitzpatrick and James Fordyce.
}
\note{
This function will rename all node labels.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{comp.fit.subs}
}
\examples{
data(hivtree.newick)
cat(hivtree.newick, file = "hivtree.phy", sep = "\n") 
tree.hiv <- read.tree("hivtree.phy") # load tree 
unlink("hivtree.phy") # delete the file "hivtree.phy" 

idHIV<-id.subtrees(tree.hiv)
plot(idHIV$tree,show.node.label=TRUE)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
