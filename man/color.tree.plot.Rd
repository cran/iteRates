\name{color.tree.plot}
\alias{color.tree.plot}
\title{
color.tree.plot
}
\description{
This function plots phylogenetic trees on the current graphical device and indicates potential regions of the tree that might have undergone a shift in diversification rate. 
}
\usage{
color.tree.plot(out, tree, p.thres = 1, evid.thres=0, PorE=1, show.node.label = FALSE, 
NODE = TRUE, PADJ = NULL, scale = 1, col.rank = TRUE, breaks = 50, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{out}{
the output object from \code{comp.subs}.
}
  \item{tree}{
an object of class "phylo" used in the \code{comp.subs} analysis.
}
  \item{p.thres}{
a numeric between 0 and 1 setting the threshold to plot rate-shifts with p-value<=\code{p.thres}. Default is 1.0.
}
  \item{evid.thres}{
a numeric setting the threshold to plot rate-shifts with evidence ratio >=\code{evid.thres}. Default is 0.
}
  \item{PorE}{
a switch to indicate whether rate-shifts are indicated based on the p-value (\code{PorE=1}) or the evidence ratio (\code{PorE=1}).
}
  \item{show.node.label}{
a logical indicating whether the node labels need to be plotted with the tree. Default is FALSE.
}
  \item{NODE}{
a logical switch between identifying rate-shifts on trees by coloring "nodes" or "branches". Default is TRUE.
}
  \item{PADJ}{
a character vector to adjust p-values from \code{comp.subs} for multiple comparison. Options are identical to the ones in  \code{p.adjust} in the \code{stats} package including "holm","hochberg", "hommel", "bonferroni", "BH", "BY", "fdr", "none". Default is NULL.
}
  \item{scale}{
a numeric that controls the size of the colored nodes or thickness of colored branch lengths used to indicate rate-shifts. Default is 1.
}
  \item{col.rank}{
a logical indicating whether various instances of potential rate-shifts should be colored based on the rank of the p-value or the absolute magnitude of the rate-shift. Default is TRUE indicating use of ranks instead of magnitude.
}
  \item{breaks}{
a numeric indicating the range of colors to be used for plotting. Choosing a smaller value will lead to big differences in colors while a bigger value will lead to finer variations in colors.
}
  \item{\dots}{
additional arguments to be passed to \code{plot.phylo} in the \code{ape} package.
}
}
\details{
When passing an object of class "phylo" (tree) follow the guidelines in \code{plot.phylo} in the \code{ape} package.
Also make sure that the tree passed to \code{color.tree.plot} is the same as the one used to generate \code{out} from \code{comp.subs}.
}
\value{
\code{color.tree.plot} returns only a graphical device output.
}
\references{
Shah, P., Fitzpatrick, B. and Fordyce, J. (2012) "A parametric method for assessing rate variation in phylogenetic trees."
}
\author{
Premal Shah, Benjamin Fitzpatrick and James A. Fordyce.
}
\seealso{
\code{\link{comp.subs}}, \code{\link{plot.phylo}}
}
\examples{
data(geospiza)
attach(geospiza)

output.geospiza <- comp.subs(geospiza.tree)

color.tree.plot(out=output.geospiza, tree= geospiza.tree)	
color.tree.plot(out=output.geospiza, tree= geospiza.tree, NODE=FALSE)	
color.tree.plot(out=output.geospiza, tree= geospiza.tree, p.thres=1)	
color.tree.plot(out=output.geospiza, tree= geospiza.tree, scale=2)	
}
