% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_response.R
\name{get_response}
\alias{get_response}
\title{Retrieve GPT responses from CSV file}
\usage{
get_response(column, model)
}
\arguments{
\item{column}{The column for which to retrieve GPT responses. The name of this column
is used to locate the CSV file containing the saved responses.}

\item{model}{The name of the GPT model used for annotation.}
}
\value{
A data frame with columns:
\describe{
\item{id}{The "id" values from the original column.}
\item{annotated_text}{The GPT-generated annotations, retrieved from the saved CSV file.}
}
If the CSV file is not found, the function returns NULL and prints a warning message.
}
\description{
This function retrieves the GPT responses saved as a CSV file for a given column. It
returns a data frame containing the "id" values and the corresponding GPT-generated annotations.
}
\examples{
\dontrun{
my_data <- data.frame(
  id = c("1", "2", "3"),
  text = c("The cake is tasty", "The cake is terrible", "The cake is okay")
)

tag_gpt(my_data$id, "Classify the sentiment of this text as positive, negative or neutral.")

annotations <- get_response(my_data$id, "gpt-3.5-turbo-0125")
}

}
