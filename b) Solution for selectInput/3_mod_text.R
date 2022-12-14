###############################################################################
###############################################################################
###############################################################################

mod_text_ui <- function(id
){
  ns <- NS(id)
  tagList(
    
    ###########################################################################
    # UI ----------------------------------------------------------------------
    ###########################################################################
    
    textOutput(ns("text_sex"))
    
    ###########################################################################
    # -------------------------------------------------------------------------
    ###########################################################################
  )
}

###############################################################################

mod_text_server <- function(id,
                            # Parameters
                            i18n_r, sex, text
){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
    
    ###########################################################################
    # Server ------------------------------------------------------------------
    ###########################################################################
    
    output$text_sex <- renderText({ # >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
      
      # Reactive parametres ...................................................
      text <- text()
      sex <- sex()
      i18n_r <- i18n_r()
      
      # Calculations ..........................................................
      paste(i18n_r$t("You have selected"), 
            text,
            i18n_r$t("with code"), 
            sex
      )
    }) # End of text_sex()
    
    ###########################################################################
    # -------------------------------------------------------------------------
    ###########################################################################
    
  })
}

###############################################################################
###############################################################################
###############################################################################