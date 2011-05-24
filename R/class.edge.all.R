class.edge.all <-
function(tree,subtree,subroot="drop"){
	# subtree is the index of the subtree
	# identify edges not in the subtree
	tree$edge.length <- as.numeric(make.unique(as.character(tree$edge.length),""))
	subtree <- subtrees(tree)[[subtree]]
	labs <- is.na(match(tree$edge.length, subtree$edge.length))
	# identify edges with no descendant nodes in the subtree
	ls <- is.na(match(tree$edge.length,subtree$edge.length))*is.na(match(tree$edge[,2],subtree$node.label))
	if(subroot=="in"){labs <- labs}
	if(subroot=="out"){labs <- ls==1}
	if(subroot=="drop"){labs[labs>ls] <- NA}
	labs
	}

