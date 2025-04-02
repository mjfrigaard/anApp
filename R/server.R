#' Server
#'
#' Core server function.
#'
#' @param input,output Input and output list objects
#' containing said registered inputs and outputs.
#' @param session Shiny session.
#'
#' @noRd
#' @keywords internal
server <- function(input, output, session){
    send_message <- make_send_message(session)
    # send a message to show an alert
    send_message("show-packer", text = "HELLO!")
}
