# BOOTSTRAP CHEAT SHEET FOR SHINY ----
# DS4B 202-R ----

# LIBRARIES ----
library(shiny)
library(tidyverse)
library(plotly)

# USER INTERFACE ----
ui <- shiny::fluidPage(
    title = "Bootstrap Cheat Sheet for Shiny", 
    
    div(
        class = "container",
        id    = "page",
        
        # HEADER ----
        h1(class = "page-header", "Bootstrap Cheat Sheet", tags$small("For Shiny")),
        p(
            class = "lead",
            "This cheat sheet is the first part of the ", 
            a(href = "https://university.business-science.io/", target = "_blank", "Expert Shiny Application Development Course"), 
            "by Business Science"
        ),
        
        # 1.0 BOOTSTRAP GRID SYSTEM ----
        h2("1.0 Bootstrap Grid System"),
        div(
            class = "container text-center",
            fluidRow(
                column(
                    width = 4,
                    class = "bg-primary",
                    p("Grid Width 4")
                ),
                column(
                    width = 4,
                    class = "bg-warning",
                    p("Grid Width 4")
                ),
                column(
                    width = 4,
                    class = "bg-danger",
                    p("Grid Width 4")
                )
            ),
            fluidRow(
                column(
                    width = 3,
                    class = "bg-primary",
                    p("Grid Width 3")
                ),
                column(
                    width = 9,
                    class = "bg-info",
                    p("Grid Width 9")
                )
            )
        ),
        
        hr(),
        
        # 2.0 WORKING WITH TEXT ----
        h2("2.0 Working With Text"),
        
        p(class = "lead", "Business Science University helps us learn Shiny"),
        
        fluidRow(
            column(
                width = 6,
                p("We are creating a Boostrap for Shiny cheat sheet."),
                p(strong("In section 1"), "we learned about the", strong(em("Bootstrap Grid System."))),
                p(tags$mark("In section 2"),  ", we learned about working with text in", code("bootstrap"), ".")
            ),
            column(
                width = 6,
                tags$blockquote(
                    class = "blockquote-reverse",
                    p("When learning data science, consistency is more important than quantity."),
                    tags$footer("Quote by", tags$cite(title = "Matt Dancho", "Matt Dancho"))
                )
            )
        ),
        
        hr(),
        
        # 3.0 TEXT ALIGNMENT ----
        h2("3.0 Text Alignment"),
        div(
            class = "container", 
            id    = "text_alignment_1",
            p(class = "text-left text-lowercase",   "Left-Aligned Lowercase Text"),
            p(class = "text-center text-uppercase", "Center-Aligned Uppercase Text"),
            p(class = "text-right text-capitalize", "Right-Aligned capitalized text")
        ),
        div(
            class = "container", 
            id    = "text_alignment_2",
            fluidRow(
                p(class = "text-left text-lowercase",   "Left-Aligned Lowercase Text") %>% column(width = 4, class = "bg-primary"),
                p(class = "text-center text-uppercase", "Center-Aligned Uppercase Text") %>% column(width = 4, class = "bg-success"),
                p(class = "text-right text-capitalize", "Right-Aligned capitalized text") %>% column(width = 4, class = "bg-info")
            )
        ),
        
        hr(),
        
        # 4.0 LISTS ----
        h2("4.0 Lists"),
        tags$ul(
            tags$li("Item 1"),
            tags$li("Item 2"),
            tags$li("Item 3"),
            tags$li("Item 4")
        ),
        tags$ol(
            tags$li("Item 1"),
            tags$li("Item 2"),
            tags$li("Item 3"),
            tags$li("Item 4")
        ),
        tags$ul(
            class = "list-inline",
            tags$li("Item 1"),
            tags$li("Item 2"),
            tags$li("Item 3"),
            tags$li("Item 4")
        ),
        
        hr(),
        
        # 5.0 CONTEXTUAL COLORS & BACKGROUNDS ----
        h2("5.0 Contextual Colors & Backgrounds"),
        p(class = "text-primary", "Hello R"),
        p(class = "text-success", "Hello R"),
        p(class = "text-info", "Hello R"),
        p(class = "text-warning", "Hello R"),
        p(class = "text-danger", "Hello R"),
        
        p(class = "bg-primary", "Hello R"),
        p(class = "bg-success", "Hello R"),
        p(class = "bg-info", "Hello R"),
        p(class = "bg-warning", "Hello R"),
        p(class = "bg-danger", "Hello R"),
        
        hr(),
        
        # 6.0 BUTTONS ----
        h2("6.0 Buttons"),
        
        h3("Contextual Buttons"),
        div(
            class = "container",
            a(href = "https://www.business-science.io/", class = "btn btn-default", "Go to Business Science"),
            a(href = "https://www.business-science.io/", class = "btn btn-primary", "Go to Business Science"),
            a(href = "https://www.business-science.io/", class = "btn btn-success", "Go to Business Science"),
            a(href = "https://www.business-science.io/", class = "btn btn-warning", "Go to Business Science"),
            a(href = "https://www.business-science.io/", class = "btn btn-danger", "Go to Business Science"),
            a(href = "https://www.business-science.io/", class = "btn btn-info", "Go to Business Science")
        ),
        
        br(),
        
        h3("Sizing Buttons"),
        div(
            class = "container",
            a(href = "https://www.business-science.io/", class = "btn btn-default btn-lg", "Go to Business Science"),
            a(href = "https://www.business-science.io/", class = "btn btn-primary btn-md", "Go to Business Science"),
            a(href = "https://www.business-science.io/", class = "btn btn-success btn-sm", "Go to Business Science"),
            a(href = "https://www.business-science.io/", class = "btn btn-warning btn-xs", "Go to Business Science")
        ),
        
        br(),
        
        h3("Shiny Buttons"),
        div(
            class = "container",
            shiny::actionButton(
                inputId = "btn_1", 
                label   = "Shiny Button - Click Me!", 
                class   = "btn-primary btn-lg", 
                icon    = icon("sync", class = "fa-1x", lib = "font-awesome")),
            shiny::textOutput(outputId = "btn_1_txt")
        ),
        
        hr(),
        
        # 7.0 IMAGES ----
        h2("7.0 Images"),
        div(
            class = "container",
            column(
                width = 4, 
                img(class = "thumbnail img-responsive", src = "business-science-logo.png", style = "width:200px;") 
            ),
            column(
                width = 4,
                img(class = "img-rounded img-responsive", src = "matt-pic.jpg", style = "width:200px;")
            ),
            column(
                width = 4,
                img(class = "img-circle img-responsive", src = "matt-pic.jpg", style = "width:200px;")
            )
        ),
        
        hr(),
        
        # 8.0 THUMBNAILS ----
        h2("8.0 Thumbnails"),
        fluidRow(
            column(
                width = 4,
                div(
                    class = "thumbnail text-center",
                    style = "padding: 20px;",
                    img(class = "img-rounded img-responsive", src = "matt-pic.jpg"),
                    h3("Thumbnail Label"),
                    p("Text about this thumbnail"),
                    a(class = "btn btn-primary btn-sm", href = "#", "Learn More")
                )
            ),
            column(
                width = 4,
                div(
                    class = "thumbnail text-center",
                    style = "padding: 20px;",
                    img(class = "img-rounded img-responsive", src = "matt-pic.jpg"),
                    h3("Thumbnail Label"),
                    p("Text about this thumbnail"),
                    a(class = "btn btn-primary btn-sm", href = "#", "Learn More")
                )
            ),
            column(
                width = 4,
                div(
                    class = "thumbnail text-center",
                    style = "padding: 20px;",
                    img(class = "img-rounded img-responsive", src = "matt-pic.jpg"),
                    h3("Thumbnail Label"),
                    p("Text about this thumbnail"),
                    a(class = "btn btn-primary btn-sm", href = "#", "Learn More")
                )
            )
        ),
        
        
        div(style = "height: 400px;")
        
    )
)

# SERVER ----
server <- function(input, output, session) {
    
    counter <<- 0
    btn_1_click <- eventReactive(input$btn_1, {
        TRUE
        counter <<- counter + 1
    })
    
    output$btn_1_txt <- renderText({
        if (btn_1_click()) {
            str_glue("You clicked me {counter} times!")
        } 
    })
    
    
}

shinyApp(ui = ui, server = server)
