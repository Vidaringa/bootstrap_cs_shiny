# BOOTSTRAP CHEAT SHEET FOR SHINY ----
# DS4B 202 R ----

# LIBRARIES ----
library(shiny)
library(tidyverse)
library(plotly)
library(shinythemes)

# USER INTERFACE ----
ui <- fluidPage(
    title = "Bootstrap Cheat Sheet for Shiny",

    div(
        class = "container",
        id    = "page",

        # HEADER ----

        h1(class = "page-header", "Bootstrap Chear Sheet", tags$small("For Shiny")),
        p(class = "lead",
          "This cheat sheet is the first part of the ",
          a(href = "https://www.business-science.io/", target = "_blank", "Expert shiny application course"),
          "by business science"),

        # 1.0 BOOTSTRAP GRID SYSTEM ----
        h2("1.0 Bootstrap Grid System"),
        div(
            class = "container, text-center",
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

        p(class = "lead", "Business science Univercity helps us learn Shiny"),

        fluidRow(
            column(
                width = 6,
                p("We are creating a bootstrap for Shiny cheat sheet."),
                p(strong("In section 1"), "we learnd about the", strong(em("Bootstrap Grid System."))),
                p(tags$mark("In section 2"),  ", we learned about working with text and", code("bootstrap"), ".")
            ),
            column(
                width = 6,
                tags$blockquote(class = "blockquote-reverse",
                                p("When learning data science consistensy is more important than quantity."),
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
            p(class = "text-left text-lowercase",    "Left-Aligned Lowercase text"),
            p(class = "text-center text-uppercase",  "Center-Aligned Uppercase text"),
            p(class = "text-right text-capitalize",  "Right-Aligned capitalized text")
        ),

        div(
            class = "container",
            id    = "text_alignment_2",
            fluidRow(
                p(class = "text-left text-lowercase",    "Left-Aligned Lowercase text") %>% column(width = 4, class = "bg-primary"),
                p(class = "text-center text-uppercase",  "Center-Aligned Uppercase text") %>% column(width = 4, class = "bg-success"),
                p(class = "text-right text-capitalize",  "Right-Aligned capitalized text") %>% column(width = 4, class = "bg-info"))
            ),

        # 4.0 LISTS ----
        h2("4.0 Lists"),
        tags$ul(
            tags$li("Item 1"),
            tags$li("Item 2"),
            tags$li("Item 3"),
            tags$li("Item 4"),
            tags$li("Item 5")
        ),

        tags$ol(
            tags$li("Item 1"),
            tags$li("Item 2"),
            tags$li("Item 3"),
            tags$li("Item 4"),
            tags$li("Item 5")
        ),
        tags$ul(
            class = "list-inline",
            tags$li("Item 1"),
            tags$li("Item 2"),
            tags$li("Item 3"),
            tags$li("Item 4"),
            tags$li("Item 5")
        ),

        hr(),

        # 5.0 CONTEXTUAL COLORS & BACKGROUND ----
        h2("5.0 Contextual Colors & Backgrounds"),
        p(class = "text-primary","Hello R"),
        p(class = "text-success","Hello R"),
        p(class = "text-info","Hello R"),
        p(class = "text-warning","Hello R"),
        p(class = "text-danger","Hello R"),

        p(class = "bg-primary","Hello R"),
        p(class = "bg-success","Hello R"),
        p(class = "bg-info","Hello R"),
        p(class = "bg-warning","Hello R"),
        p(class = "bg-danger","Hello R"),

        hr(),

        # 6.0 BUTTONS ----
        h2("6.0 BUTTONS"),
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
            shiny::actionButton(inputId = "btn_1",
                                label   = "Shiny Button - Click Me!",
                                class   = "btn-primary btn-lg",
                                icon    = icon("sync", class ="fa-1x", lib = "font-awesome")),
            shiny::textOutput(outputId = "btn_1_txt")
        ),

        hr(),

        # 7.0 IMAGES ----
        h2("7.0 Images"),
        div(
            class = "container",
            column(
                width = 4,
                img(class = "thumbnail img-responsive",
                    src = "business-science-logo.png",
                    style = "width:200px;")
                ),
            column(
                width = 4,
                img(class = "img-rounded img-responsive",
                    src = "matt-pic.jpg",
                    style = "width:200px;")
                ),
            column(
                width = 4,
                img(class = "img-circle img-responsive",
                    src = "matt-pic.jpg",
                    style = "width:200px;")
                )
        ),

        hr(),

        # 8.0 THUMBNAILS ----
        h2("8.0 Thumbnails"),
        div(
            column(
                width = 4,
                div(
                    class = "thumbnail text-center",
                    # style = "padding: 20px;",
                    img(
                        class = "img-rounded img-responseive",
                        src = "matt-pic.jpg"),
                    h3("Thumbnail Label"),
                    p("Text about this thumbnail"),
                    a(class = "btn btn-primary btn-sm", href = "#", "Learn More")
                )
            ),
            column(
                width = 4,
                div(
                    class = "thumbnail text-center",
                    # style = "padding: 20px;",
                    img(
                        class = "img-rounded img-responseive",
                        src = "matt-pic.jpg"),
                    h3("Thumbnail Label"),
                    p("Text about this thumbnail"),
                    a(class = "btn btn-primary btn-sm", href = "#", "Learn More")
                )
            ),
            column(
                width = 4,
                div(
                    class = "thumbnail text-center",
                    # style = "padding: 20px;",
                    img(
                        class = "img-rounded img-responseive",
                        src = "matt-pic.jpg"),
                    h3("Thumbnail Label"),
                    p("Text about this thumbnail"),
                    a(class = "btn btn-primary btn-sm", href = "#", "Learn More")
                )
            ),
        ),

        hr(),

        # 9.0 NAVBAR ----
        h2("9.0 Navbars"),
        navbarPage(
            title = "Business Science",
            inverse = TRUE,
            collapsable = TRUE,
            tabPanel(
                title = "What is Shiny?",
                value = "page_1",
                h1("What is Shiny", tags$small("A framework for building web apps with R")),
                p("All of the cool features")
            ),
            tabPanel(
                title = "What is Bootstrap",
                value = "page_2",
                h1("What is Bootstrap", tags$small("A popular framework")),
                p("All of the cool features of bootstrap")
                ),

            navbarMenu(
                title = "Using Shiny and Bootstrap",
                tabPanel(title = "Make Plots"),
                tabPanel(title = "Add Shiny Components"),
                "----",
                tabPanel(title = "More Info")
                )
        ),


        hr(),

        # 10. NAVS ----

        h2("10. Navs"),

        h3("Tabset Panel"),
        tabsetPanel(
            id = "tabset_1",
            type = "tabs",
            tabPanel(
                title = "Tab 1",
                h3("What is Shiny?"),
                p("Shiny is awesome")
                ),
            tabPanel(
                title = "Tab 2",
                h3("What is Bootstrap?"),
                p("Bootstrap is awesome")
            )
            ),

        br(),

        h3("Navlist Panel"),
        navlistPanel(
            id = "navlist_1",
            tabPanel(
                title = "Tab 1",
                h3("What is Shiny?"),
                p("Shiny is awesome")
            ),
            tabPanel(
                title = "Tab 2",
                h3("What is Bootstrap?"),
                p("Bootstrap is awesome")
            )
        ),

        # 11. Sidebar Layout ----
        h2("11 Sidebar Layout"),
        sidebarLayout(
            sidebarPanel = sidebarPanel(
                width = 4,
                p("UI Elements Go Here"),
                dateInput(inputId = "daterange_1",
                          label = "Enter Date Range")
            ),

            mainPanel = mainPanel(
                width = 8,
                "Plot Elements"
            )
        ),

        hr(),

        # 12 JUMBOTRON ----
        h2("1 Jumbotron"),
        div(
            class = "jumbotron",
            style = "background:url('business-science-logo.png'); background-size:cover;",
            div(
                class = "container",
                style = "background-color:#9999999c;",
                h1("Learning Shiny"),
                p("It's your solution for building we application with", code("R")),
                "Learn more" %>% a(class = "btn btn-lg btn-primary", href = "#") %>% p()
            ),

        ),

        hr(),

        # 13 PANELS ----
        h2("13 Panels"),
        div(
            class = "panel panel-primary",
            div(
                class = "panel-heading",
                h3("Chart Title - hp against mpg")
            ),
            div(
                class = "panel-body bg-info",
                p("Inseert Chart"),
                plotlyOutput(outputId = "plotly_1")
            ),
            div(
                class = "panel-footer",
                p("Footer") %>% tags$small()
            )
        ),

        hr(),

        # 14 MOBLIE ----
        h2("14 Moblie"),
        fluidRow(
            class = "hidden-xs",
            div(
                class = "jumbotron",
                h1("Learning Shiny"),
                p(class = "lead", "Will help you distribute interactive data products"),
                a(class = "btn btn-primary btn-lg", href = "#", "Learn more")
            )
        ),
        fluidRow(
            class = "hidden-sm hidden-md hidden-lg",
            div(
                class = "thumbnail text-center",
                img(class = "img-responsive", style = "width:200px;", src = "business-science-logo.png"),
                h3("Learning Shiny"),
                p(class = "lead", "Will help you distribute interactive data products"),
                a(class = "btn btn-primary btn-sm", href = "#", "Learn more")
            )
        ),

        hr(),

        # 15 CSS & THEMES ----
        h2("15 CSS & THEME"),
        fluidPage(
            theme = shinytheme("flatly"),
            # themeSelector()
            tags$head(
               # tags$link(rel = "stylesheet", type = "text/css", href = "bootstrap.min.css"),
                tags$link(rel = "stylesheet", type = "text/css", href = "my_styles.css"),

            )
        ),

        div(style = "height: 400px;")

        )
    )


# SERVER ----
server <- function(input, output, session) {

    counter <<- 0
    btn_1_click <- eventReactive( input$btn_1, {
                                     TRUE
                                     counter <<- counter + 1
                                     })

    output$btn_1_txt <- renderText({
        if(btn_1_click()) {
            str_glue("You clicked my {counter} times!")
        }

    })

    # Plot mtcars
    output$plotly_1 <- renderPlotly({
        g <- ggplot(mtcars, aes(x = mpg, y = hp)) +
            geom_point()

        ggplotly(g)
    })

}

shinyApp(ui = ui, server = server)
