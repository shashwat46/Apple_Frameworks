# Apple Frameworks 🍎

An iOS application showcasing Apple frameworks in a grid view, built with SwiftUI. Users can explore various frameworks, view detailed descriptions, and access additional information through embedded Safari links.

## Features ✨

- **Grid View of Frameworks:** Browse a collection of Apple frameworks displayed in a flexible, three-column grid.
- **Detailed Descriptions:** Tap on any framework to view its description and other details.
- **Learn More Links:** Open external resources for each framework in Safari, embedded within the app.
- **Dismissal Controls:** Full-screen detail views can be easily dismissed using custom buttons.

## Technologies Used 🛠️

- **SwiftUI:** Primary UI framework for declarative layout and structure.
- **UIKit (SafariView):** Used for displaying web content via `SFSafariViewController`.
- **MVVM Architecture:** Clean separation between UI and business logic using `FrameworkGridViewModel`.
- **Swift Property Wrappers:**
  - `@StateObject` for managing view model instances.
  - `@Published` for observable state in `FrameworkGridViewModel`.
  - `@Binding` for seamless data passing between views.


## Requirements 📋

- **iOS 15.0+**
- **Xcode 13.0+**
- **Swift 5.5+**

## Installation 💻

Clone the repository:

```bash
git clone https://github.com/shashwat46/Apple-Frameworks.git
```
Open the project on Xcode : 
```
cd Apple-Frameworks 
open Apple-Frameworks.xcodeproj
```
## Architecture 🏗️

The app follows the MVVM (Model-View-ViewModel) architecture:

- **Models:** Data structures for storing framework details.
- **Views:** SwiftUI views for the user interface, including grid and detail views.
- **ViewModels:** `FrameworkGridViewModel` manages the state for selected frameworks and controls the visibility of detail views.

## Key Components 🔑

### FrameworkGridView
Displays frameworks in a grid layout using a flexible, three-column grid. Tapping a framework opens a detail view with more information.

### FrameworkDetailView
Provides detailed information about the selected framework, including a "Learn More" button that opens a Safari view with relevant links.

### SafariView
A `UIViewControllerRepresentable` struct using `SFSafariViewController` to display web pages within the app, written in UIKit for compatibility with SwiftUI.
