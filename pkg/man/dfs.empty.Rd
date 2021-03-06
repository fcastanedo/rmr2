\name{dfs.empty}
\alias{dfs.empty}
\alias{dfs.size}
%\alias{dfs.mv}
%\alias{dfs.rmr}
\title{Backend-independent file manipulation}

\description{Check if a item is empty or return its size. Move an item or remove(recursively). Here item is a valid path or \code{\link{big.data.object}}}
 
\usage{
dfs.empty(fname)
dfs.size(fname)
%dfs.mv(from, to)
%dfs.size(fname)
}

\arguments{
  \item{fname}{A valid path or \code{\link{big.data.object}}}}
%  \item{to}{A valid path}
\value{For \code{dfs.size} a number of bytes; for \code{dfs.empty} a logical}

\details{
The size of a directory, for the sake of this commands, is the size of the files contained therein with the exception of hidden files starting with "." and "_". This is not well documented in Hadoop but there is a private call that implements this pattern.  }

\examples{
dfs.empty(mapreduce(to.dfs(1:10)))
dfs.size(mapreduce(to.dfs(1:10)))
}