fluidPage(
  title = "NYC High School Performance",
  titlePanel("NYC High School Performance"),
  sidebarLayout(
    sidebarPanel = sidebarPanel(
      h4("Viewable Statistics"),
      helpText("View how changing school parameters affects whether it does or doesn't meet standards"),
      selectInput("selection", "Select something", choices = c("School Size", "Teachers Rating", "Supportive Environment", "Leadership", "Community Ties", "Trust", "Percent English Language Learners", "Percent Students with Disabilities", "Percent Self-Contained Classrooms", "Percent Undercredited" , "Race - Asian", "Race - Black", "Race - Hispanic", "Race - White","Economic Need Index", "Principal Experience", "Instruction Rating", "Student Attendance Rate", "Teacher Attendance Rate")),
      conditionalPanel(
        "input.selection == 'School Size'",
        sliderInput("slider_enrollment", "Enrollment", min = min(data5$Enrollment), max = max(data5$Enrollment), value = 100, ticks = FALSE)
      ),
      conditionalPanel(
        "input.selection == 'Race - Asian'",
        sliderInput("slider_asian", "Asian Percentage", min = min(data5$Percent.Asian), max = max(data5$Percent.Asian), value = 50, ticks = FALSE)
      ),
      conditionalPanel(
        "input.selection == 'Race - Black'",
        sliderInput("slider_black", "Black Percentage", min = min(data5$Percent.Black), max = max(data5$Percent.Black), value = 50, ticks = FALSE)
      ),
      conditionalPanel(
        "input.selection == 'Economic Need Index'",
        sliderInput("slider_economic", "Economic Need Index", min = min(data5$Economic.Need.Index), max = max(data5$Economic.Need.Index), value = .5, ticks = FALSE)
      ),
      conditionalPanel(
        "input.selection == 'Principal Experience'",
        sliderInput("slider_principal", "Principal Experience", min = min(data5$Principal.Experience.yrs), max = max(data5$Principal.Experience.yrs), value = .5, ticks = FALSE)
      ),
      conditionalPanel(
        "input.selection == 'Instruction Rating'",
        sliderInput("slider_instruction", "Percent Approval of Instruction", min = min(data5$Instruction.Rating.pct), max = max(data5$Instruction.Rating.pct), value = .5, ticks = FALSE)
      ),
      conditionalPanel(
        "input.selection == 'Teachers Rating'",
        sliderInput("slider_teachers", "Percent Approval of Teachers", min = min(data5$Teachers.Rating.pct), max = max(data5$Teachers.Rating.pct), value = .5, ticks = FALSE)
      ),
      conditionalPanel(
        "input.selection == 'Supportive Environment'",
        sliderInput("slider_supportive", "Percent Approval that School Environment is Supportive", min = min(data5$Supportive.Environment.pct), max = max(data5$Supportive.Environment.pct), value = .5, ticks = FALSE)
      ),
      conditionalPanel(
        "input.selection == 'Leadership'",
        sliderInput("slider_leadership", "Percent Approval of Leadership in School", min = min(data5$Leadership.Rating.pct), max = max(data5$Leadership.Rating.pct), value = .5, ticks = FALSE)
      ),
      conditionalPanel(
        "input.selection == 'Community Ties'",
        sliderInput("slider_community", "Percent Belief that school has strong community ties", min = min(data5$Community.Ties.Rating.pct), max = max(data5$Community.Ties.Rating.pct), value = .5, ticks = FALSE)
      ),
      conditionalPanel(
        "input.selection == 'Trust'",
        sliderInput("slider_trust", "Percent Approval in Trust of School", min = min(data5$Trust...Percent.Positive), max = max(data5$Trust...Percent.Positive), value = .5, ticks = FALSE)
      ),
      conditionalPanel(
        "input.selection == 'Percent English Language Learners'",
        sliderInput("slider_esl", "Percent English Language Learners", min = min(data5$Percent.English.Language.Learners), max = max(data5$Percent.English.Language.Learners), value = .5, ticks = FALSE)
      ),
      conditionalPanel(
        "input.selection == 'Percent Students with Disabilities'",
        sliderInput("slider_swd", "Percent Students with Disabilities", min = min(data5$Percent.Students.with.Disabilities), max = max(data5$Percent.Students.with.Disabilities), value = .5, ticks = FALSE)
      ),
      conditionalPanel(
        "input.selection == 'Percent Self-Contained Classrooms'",
        sliderInput("slider_selfcontained", "Percent Self-Contained Classrooms", min = min(data5$Trust...Percent.Positive), max = max(data5$Trust...Percent.Positive), value = .5, ticks = FALSE)
      ),
      conditionalPanel(
        "input.selection == 'Percent Undercredited'",
        sliderInput("slider_undercredited", "Percent Undercredited", min = min(data5$Percent.Overage..Undercredited), max = max(data5$Percent.Overage..Undercredited), value = .5, ticks = FALSE)
      ),
      conditionalPanel(
        "input.selection == 'Race - Hispanic'",
        sliderInput("slider_hispanic", "Percent Hispanic", min = min(data5$Percent.Hispanic), max = max(data5$Percent.Hispanic), value = .5, ticks = FALSE)
      ),
      conditionalPanel(
        "input.selection == 'Race - White'",
        sliderInput("slider_white", "Percent White", min = min(data5$Percent.White), max = max(data5$Percent.White), value = .5, ticks = FALSE)
      ),
      conditionalPanel(
        "input.selection == 'Student Attendance Rate'",
        sliderInput("slider_studentattendance", "Student Attendance Rate", min = min(data5$Student.Attendance.Rate), max = max(data5$Student.Attendance.Rate), value = .5, ticks = FALSE)
      ),
      conditionalPanel(
        "input.selection == 'Teacher Attendance Rate'",
        sliderInput("slider_teacherattendance", "Teacher Attendance Rate", min = min(data5$Trust...Percent.Positive), max = max(data5$Trust...Percent.Positive), value = .5, ticks = FALSE)
      )
    ),
    mainPanel = mainPanel(
      textOutput("selected_var"),
      conditionalPanel(
        condition = "input.selection == 'School Size'",
        textOutput("probability_enrollment")
      ),
      conditionalPanel(
        condition = "input.selection == 'Race - Asian'",
        textOutput("probability_asian")
      ),
      conditionalPanel(
        condition = "input.selection == 'Race - Black'",
        textOutput("probability_black")
      ),
      conditionalPanel(
        condition = "input.selection == 'Principal Experience'",
        textOutput("probability_principal")
      ),
      conditionalPanel(
        condition = "input.selection == 'Economic Need Index'",
        textOutput("probability_economic")
      ),
      conditionalPanel(
        condition = "input.selection == 'Instruction Rating'",
        textOutput("probability_instruction")
      ),
      conditionalPanel(
        condition = "input.selection == 'Teachers Rating'",
        textOutput("probability_teachers")
      ),
      conditionalPanel(
        condition = "input.selection == 'Supportive Environment'",
        textOutput("probability_supportive")
      ),
      conditionalPanel(
        condition = "input.selection == 'Leadership'",
        textOutput("probability_leadership")
      ),
      conditionalPanel(
        condition = "input.selection == 'Community Ties'",
        textOutput("probability_community")
      ),
      conditionalPanel(
        condition = "input.selection == 'Trust'",
        textOutput("probability_trust")
      ),
      conditionalPanel(
        condition = "input.selection == 'Percent English Language Learners'",
        textOutput("probability_esl")
      ),
      conditionalPanel(
        condition = "input.selection == 'Percent Students with Disabilities'",
        textOutput("probability_swd")
      ),
      conditionalPanel(
        condition = "input.selection == 'Percent Self-Contained Classrooms'",
        textOutput("probability_selfcontained")
      ),
      conditionalPanel(
        condition = "input.selection == 'Percent Undercredited'",
        textOutput("probability_undercredited")
      ),
      conditionalPanel(
        condition = "input.selection == 'Race - Hispanic'",
        textOutput("probability_hispanic")
      ),
      conditionalPanel(
        condition = "input.selection == 'Race - White'",
        textOutput("probability_white")
      ),
      conditionalPanel(
        condition = "input.selection == 'Student Attendance Rate'",
        textOutput("probability_studentattendance")
      ),
      conditionalPanel(
        condition = "input.selection == 'Teacher Attendance Rate'",
        textOutput("probability_teacherattendance")
      ),
      conditionalPanel(
        condition = "input.selection == 'School Size'",
        plotOutput("enrollment_plot")
      ),
      conditionalPanel(
        condition = "input.selection == 'Race - Asian'",
        plotOutput("asian_plot")
      ),
      conditionalPanel(
        condition = "input.selection == 'Race - Black'",
        plotOutput("black_plot")
      ),
      conditionalPanel(
        condition = "input.selection == 'Principal Experience'",
        plotOutput("principal_plot")
      ),
      conditionalPanel(
        condition = "input.selection == 'Economic Need Index'",
        plotOutput("economic_plot")
      ),
      conditionalPanel(
        condition = "input.selection == 'Instruction Rating'",
        plotOutput("instruction_plot")
      ),
      conditionalPanel(
        condition = "input.selection == 'Teachers Rating'",
        plotOutput("teachers_plot")
      ),
      conditionalPanel(
        condition = "input.selection == 'Supportive Environment'",
        plotOutput("supportive_plot")
      ),
      conditionalPanel(
        condition = "input.selection == 'Leadership'",
        plotOutput("leadership_plot")
      ),
      conditionalPanel(
        condition = "input.selection == 'Community Ties'",
        plotOutput("community_plot")
      ),
      conditionalPanel(
        condition = "input.selection == 'Trust'",
        plotOutput("trust_plot")
      ),
      conditionalPanel(
        condition = "input.selection == 'Percent English Language Learners'",
        plotOutput("esl_plot")
      ),
      conditionalPanel(
        condition = "input.selection == 'Percent Students with Disabilities'",
        plotOutput("swd_plot")
      ),
      conditionalPanel(
        condition = "input.selection == 'Percent Self-Contained Classrooms'",
        plotOutput("selfcontained_plot")
      ),
      conditionalPanel(
        condition = "input.selection == 'Percent Undercredited'",
        plotOutput("undercredited_plot")
      ),
      conditionalPanel(
        condition = "input.selection == 'Race - Hispanic'",
        plotOutput("hispanic_plot")
      ),
      conditionalPanel(
        condition = "input.selection == 'Race - White'",
        plotOutput("white_plot")
      ),
      conditionalPanel(
        condition = "input.selection == 'Student Attendance Rate'",
        plotOutput("studentattendance_plot")
      ),
      conditionalPanel(
        condition = "input.selection == 'Teacher Attendance Rate'",
        plotOutput("teacherattendance_plot")
      ),
      textOutput("plot_explanation")
    )
  )
)