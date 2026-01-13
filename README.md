# jiji_project

A Flutter Hiring Assessment Project

This is a single-screen Flutter implementation of the "Learn with Jiji" AI companion interface, developed as part of the VeidaLabs hiring assignment.

## Deliverables

- **UI Implementation:** A pixel-perfect replication of the provided design using Flutter.
- **Responsiveness:** Implemented using `CustomScrollView` and `SliverFillRemaining` to handle diverse screen sizes and keyboard interactions gracefully.
- **Architecture:** Modularized code with separate logic for widgets, theme, and validation.

## Technical Decisions

- **Slivers:** I chose `CustomScrollView` over a standard `Column` to ensure the "Jiji Says" card fills the available screen space on large devices while remaining scrollable on smaller screens or when the keyboard is active.
- **Theming:** A global `AppTheme` handles fonts (Poppins) and input decorations to maintain consistency.
- **Validation:** Implemented strict input validation to sanitize user queries, adhering to the security awareness requirements.

## How I Used AI Tools

Per the assignment instructions, I leveraged AI (Gemini) to propel my development process in the following ways:

1.  **Architecture Scaffolding:** I used AI to quickly generate the folder structure and boilerplate code for the `Sliver` implementation, saving time on setup.
2.  **Asset Extraction:** I used AI to analyze the design screenshot and extract the approximate hex codes for the teal and blue brand colors.
3.  **Refactoring:** When I encountered a layout overflow issue with the keyboard, I consulted AI to refactor the `Expanded` widget into a `SliverFillRemaining` widget, ensuring a robust responsive layout.
