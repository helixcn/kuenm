% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kuenm_mopagree.R
\name{kuenm_mopagree}
\alias{kuenm_mopagree}
\title{Agreement of extrapolative areas of MOP layers}
\usage{
kuenm_mopagree(mop.dir, in.format, out.format = "GTiff", current,
  time.periods, emi.scenarios, out.dir = "MOP_agremment")
}
\arguments{
\item{mop.dir}{(character) name of the folder in which MOP results are (e.g., the output
folder after using the \code{\link{kuenm_mmop}}) function.}

\item{in.format}{(character) format of model raster files. Options are "ascii", "GTiff", and "EHdr" = bil.}

\item{out.format}{(character) format of layers to be written in \code{out.dir}. Options are "ascii", "GTiff",
and "EHdr" = bil. Default = "GTiff".}

\item{current}{(character) if exist, pattern to look for when defining which is the scenario of current
projection to be excluded from calculations. If not defined, no current projection is assumed.}

\item{time.periods}{(character or numeric) pattern to be searched when identifying MOP layers for
distinct time projections. If not defined it is assumed that only one time period was considered.}

\item{emi.scenarios}{(character) pattern to be searched for identifying distinct emission
scenarios (e.g., RCP). If not defined it is asumed that only one emission scenario was used.}

\item{out.dir}{(character) name of the output directory to be created in which subdirectories
containing raster layers of strict extrapolative areas agreement will be written. Default = "MOP_agremment".}
}
\value{
Folders named as the set or sets of variables used to perform the MOP, containing raster layers in format
\code{out.format} that represent agreement of strict strapolative areas for each emission scenario
in a each time period. Folders will be written inside \code{out.dir}.
}
\description{
kuenm_mopagree calculates raster layers that represent the agreement of strict
extrapolative areas among two or more climate models of an emission scenario in a
given time period. Various emission scenarios and time periods can be processed.
}
\details{
Users must be specific when defining the patterns that the function will search for. This patterns
must be part of the mop layer names so the function can locate each file without problems.
This function uses this system of work to avoid high demands of RAM while perfomring these analyses.
}
\examples{
# MOP layers must be already created before using this function.

# Arguments
mop_dir <- "MOP_results"
format <- "GTiff"
curr <- "current"
time_periods <- 2050
emi_scenarios <- c("RCP4.5", "RCP8.5")
out_dir <- "MOP_agremment"

kuenm_mopagree(mop.dir = mop_dir, in.format = format, out.format = format,
               current = curr, time.periods = time_periods,
               emi.scenarios = emi_scenarios, out.dir = out_dir)
}
