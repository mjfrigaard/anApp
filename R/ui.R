#' Shiny UI
#' 
#' Core UI of package.
#' 
#' @param req The request object.
#' 
#' @import shiny
#' @importFrom bslib bs_theme
#' 
#' @keywords internal
ui <- function(req){
	navbarPage(
		theme = bs_theme(version = 4),
		header = list(assets()),
		title = "anApp",
		id = "main-menu",
		tabPanel(
			"First tab",
			shiny::h1("First tab")
		),
		tabPanel(
			"Second tab",
			shiny::h1("Second tab")
		)
	)
}

#' Assets
#' 
#' Includes all assets.
#' This is a convenience function that wraps
#' [serveAssets] and allows easily adding additional
#' remote dependencies (e.g.: CDN) should there be any.
#' 
#' @param ignore A vector of files to ignore.
#' This can be useful for scripts that should not be 
#' placed in the `<head>` of the HTML.
#' 
#' @importFrom shiny tags
#' 
#' @keywords internal
assets <- function(ignore = NULL){
	list(
		serveAssets(ignore = ignore), # base assets (assets.R)
		tags$head(
			# Place any additional depdendencies here
			# e.g.: CDN
		)	
	)
}
