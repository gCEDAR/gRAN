% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/GRANonGRAN.R
\docType{methods}
\name{addPkg,GRANRepository-method}
\alias{addPkg,GRANRepository-method}
\title{addPkg}
\usage{
\S4method{addPkg}{GRANRepository}(x, ..., rows = makeManifest(...),
  versions = data.frame(name = manifest_df(rows)$name, version =
  NA_character_, stringsAsFactors = FALSE), replace = FALSE)
}
\arguments{
\item{x}{A GRANRepository object}

\item{\dots}{passed to manifest method for addPkg}

\item{rows}{data.frame or unspecified. passed to manifest method for addPkg}

\item{versions}{data.frame passed to manifest method for addPkg}

\item{replace}{logical. Should the information in \code{...}/\code{rows}
replace existing rows for the same pacakge? Defaults to FALSE, in which case
an error is thrown.}
}
\value{
\code{x} with the specified package(s) added to the associated manifest
}
\description{
Add a package to the manifest for a GRANRepository
}
\examples{
man = GithubManifest("gmbecker/switchr")
repo = GRANRepository(man, basedir = tempdir())
repo = addPkg(repo, rows = GithubManifest("gmbecker/rpath"))
}
