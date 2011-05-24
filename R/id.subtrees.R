id.subtrees <-
function(tree){
	if((length(tree$edge.length)-length(tree$tip.label)+1!=length(tree$tip.label)+1)==FALSE)stop("\nTree not fully bifurcating")
	tree$node.label<-1:length(subtrees(tree))
	return(list(tree=tree,subtree=subtrees(tree)))
	}

