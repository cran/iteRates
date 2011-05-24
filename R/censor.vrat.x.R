censor.vrat.x <-
function(delta,x,min.branch){
	x[x==0] <- min.branch
	est <- optim(c(2,1),min.vrat, delta=delta, x=x)
	par <- est$par
	LL <- -est$value
	
	a <- data.frame(t(par),LL)
	return(a)
	}

