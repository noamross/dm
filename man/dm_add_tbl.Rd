% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/add-tbl.R
\name{dm_add_tbl}
\alias{dm_add_tbl}
\title{Add tables to a \code{\link{dm}}}
\usage{
dm_add_tbl(dm, ..., repair = "unique", quiet = FALSE)
}
\arguments{
\item{dm}{A \code{\link{dm}} object.}

\item{...}{One or more tables to add to the \code{dm}.
If no explicit name is given, the name of the expression is used.}

\item{repair}{Either a string or a function. If a string, it must
be one of \code{"check_unique"}, \code{"minimal"}, \code{"unique"}, or \code{"universal"}.
If a function, it is invoked with a vector of minimal names and must
return minimal names, otherwise an error is thrown.
\itemize{
\item Minimal names are never \code{NULL} or \code{NA}. When an element doesn't
have a name, its minimal name is an empty string.
\item Unique names are unique. A suffix is appended to duplicate
names to make them unique.
\item Universal names are unique and syntactic, meaning that you can
safely use the names as variables without causing a syntax
error.
}

The \code{"check_unique"} option doesn't perform any name repair.
Instead, an error is raised if the names don't suit the
\code{"unique"} criteria.}

\item{quiet}{By default, the user is informed of any renaming
caused by repairing the names. This only concerns unique and
universal repairing. Set \code{quiet} to \code{TRUE} to silence the
messages.

Users can silence the name repair messages by setting the
\code{"rlib_name_repair_verbosity"} global option to \code{"quiet"}.}
}
\value{
The initial \code{dm} with the additional table(s).
}
\description{
Adds one or more new tables to a \code{\link{dm}}.
Existing tables are not overwritten.
}
\examples{
dm() \%>\%
  dm_add_tbl(mtcars, flowers = iris)

# renaming table names if necessary (depending on the `repair` argument)
dm() \%>\%
  dm_add_tbl(new_tbl = mtcars, new_tbl = iris)
}
\seealso{
\code{\link[=dm_mutate_tbl]{dm_mutate_tbl()}}, \code{\link[=dm_rm_tbl]{dm_rm_tbl()}}
}
