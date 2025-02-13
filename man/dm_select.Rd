% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/select.R
\name{dm_select}
\alias{dm_select}
\title{Select columns}
\usage{
dm_select(dm, table, ...)
}
\arguments{
\item{dm}{A \code{dm} object.}

\item{table}{A table in the \code{dm}.}

\item{...}{One or more unquoted expressions separated by commas.
You can treat
variable names as if they were positions, and use expressions like x:y
to select the ranges of variables.

Use named arguments, e.g. new_name = old_name, to rename the selected variables.

The arguments in ... are automatically quoted and evaluated in a context where
column names represent column positions.
They also support unquoting and splicing.
See \code{vignette("programming", package = "dplyr")} for an introduction to those concepts.

See select helpers for more details, and the examples about tidyselect helpers, such as starts_with(), everything(), ...}
}
\value{
An updated \code{dm} with the columns of \code{table} reduced and/or renamed.
}
\description{
\ifelse{html}{\href{https://lifecycle.r-lib.org/articles/stages.html#stable}{\figure{lifecycle-stable.svg}{options: alt='[Stable]'}}}{\strong{[Stable]}}

Select columns of your \code{\link{dm}} using syntax that is similar to \code{dplyr::select()}.
}
\details{
If key columns are renamed, then the meta-information of the \code{dm} is updated accordingly.
If key columns are removed, then all related relations are dropped as well.
}
\examples{
\dontshow{if (rlang::is_installed("nycflights13")) (if (getRversion() >= "3.4") withAutoprint else force)(\{ # examplesIf}
dm_nycflights13() \%>\%
  dm_select(airports, code = faa, altitude = alt)
\dontshow{\}) # examplesIf}
}
