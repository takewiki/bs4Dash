% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/useful-items.R
\name{userMessages}
\alias{userMessages}
\title{AdminLTE3 user message container}
\usage{
userMessages(..., status, width = 4)
}
\arguments{
\item{...}{Slot for \link{userMessage}.}

\item{status}{Messages status. See here for a list of valid colors 
\url{https://adminlte.io/themes/AdminLTE/pages/UI/general.html}.}

\item{width}{Container width: between 1 and 12.}
}
\description{
Create a user message container
}
\note{
Better to include in a \link{bs4Card}.
}
\examples{
if (interactive()) {
 library(shiny)
 library(bs4Dash)
 shinyApp(
  ui = bs4DashPage(
    bs4DashNavbar(),
    bs4DashSidebar(),
    bs4DashControlbar(),
    bs4DashBody(
     userMessages(
      status = "success",
      userMessage(
       author = "Alexander Pierce",
       date = "20 Jan 2:00 pm",
       src = "https://adminlte.io/themes/AdminLTE/dist/img/user1-128x128.jpg",
       side = NULL,
       "Is this template really for free? That's unbelievable!"
      )
     )
    ),
    title = "user Message"
  ),
  server = function(input, output) { }
 )
}

}
\author{
David Granjon, \email{dgranjon@ymail.com}
}
