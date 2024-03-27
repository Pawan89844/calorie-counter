**Calories Counter App**

          **App Features**
1. The user can set goals for calorie burn.
2. Calories Calculator.
3. Beautiful, Smooth, and Responsive UI/UX
4. A chart is available to track the set goals.

More Features are lined up and will be added soon...........

**DEV**
A Flutter and Dart Project built using Getx (State Management Solution) on MVVM clean architecture.
-- **Folder Structure**
    |
    |___ Components
    |
    |
    |___ Routes
    |                         
    |                         |‾‾‾‾‾ Bindings
    |___ View-----------------|‾‾‾‾‾ Controllers
    |                         |‾‾‾‾‾ Logics
    |                         |‾‾‾‾‾ Models
    |                         |‾‾‾‾‾
    |___ Widget
    |
    |
    |
    |--- main.dart


**Components: ** It contains unique widgets such as Bottom Navigation Bar, Heading, and NoteComponent.
**Routes: ** It has defined page navigation routes for example GOAL PAGE and HOME PAGE.
**View: ** Structured for UI Layer of the Application, consists of the Page name folder inside the folder with 3 different folders for Bindings, Controllers, Logic, and Model on every page, then view files.
          **BINDINGS** used for keeping Getx Page Binding.
          **Controllers** State manipulation variables and functions are defined only.
          **Logic** Methods defined that use complex logic on the application.
          **Model** Data Model or Parsing model in the future if REST API is Integrated.

**Widgets: ** keeps commonly used widgets in the app.

**DART FEATURE USED**

  --- Interfaces
  --- Inheritance
  --- Mixins
  --- Documentation Comments
  --- Extensions (In Future)
  --- Collections (To use ADT)

**FLUTTER PACKAGE USED**

  --- Google Fonts
  --- Flutter SVG
  --- GetX
  --- Collections
  --- Intl (for date time formatting)
