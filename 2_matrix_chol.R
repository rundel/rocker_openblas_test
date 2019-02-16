RhpcBLASctl::blas_set_num_threads(4)

set.seed(100)

exp_cov = function(d, sigma2=1, l=1, tau2=0.1) {
  stopifnot(nrow(d) == ncol(d))
  sigma2*exp(-(d*l)^2) + diag(tau2, nrow(d))
}

d = dist( 
  data.frame(
    x = runif(10000),
    y = runif(10000)
  )
) 

cov = exp_cov(as.matrix(d))

system.time(chol(cov))
