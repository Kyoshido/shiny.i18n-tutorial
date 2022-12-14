###############################################################################
###############################################################################
###############################################################################

mod_selectInput_ui <- function(id
){
  ns <- NS(id)
  tagList(
    
    ###########################################################################
    # UI ----------------------------------------------------------------------
    ###########################################################################
    
    uiOutput(ns("selectInput_sex"))
    
    ###########################################################################
    # -------------------------------------------------------------------------
    ###########################################################################
  )
}

###############################################################################

mod_selectInput_server <- function(id,
                                   # Parameters
                                   i18n_r
){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
    
    ###########################################################################
    # Server ------------------------------------------------------------------
    ###########################################################################
    
    output$selectInput_sex <- renderUI({ # >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
    
      # Reactive parametres ...................................................
      i18n_r <- i18n_r()
      
      # Calculations ..........................................................
        selectInput(
        inputId = "sex",
        label = i18n_r$t("Select sex:"),
        width = "500px",
        choices = setNames(c(1,2,0), 
                           c(i18n_r$t("Males"),
                             i18n_r$t("Females"),
                             i18n_r$t("Both")
                           )
        )
      )
    }) # End of selectInput_sex()
    
    ###########################################################################
    # -------------------------------------------------------------------------
    ###########################################################################
    
  })
}

###############################################################################
###############################################################################
###############################################################################