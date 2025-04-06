# CredPal Assessment - Mobile Application Developer

This repository contains my implementation of the CredPal UI assessment for the Mobile Application Developer role. The project is a Flutter application that follows the Figma design provided in the assessment instructions.

## 📱 Screenshots



## 🚀 Features

- **Pay Later UI**: Implementation of the "Pay Later" homepage interface
- **Product Showcase**: Grid display of available products with pricing details
- **Featured Merchants**: Display of partner merchants with indicator badges
- **Search Component**: Functional search field with scan button
- **Responsive Design**: Adapts to various screen sizes

## 🛠️ Tech Stack

- **Flutter**: Framework used for building the application
- **Dart**: Programming language
- **Material Design**: UI components and styling
- **SVG**: Vector assets for icons

## 📋 Project Structure

```
credpal/
│
├── lib/
│   ├── constants/
│   │   └── paths.dart        # Asset path constants
│   │
│   ├── screens/
│   │   └── home_screen.dart  # Main home screen implementation
│   │
│   ├── widgets/
│   │   ├── merchant_icon.dart      # Featured merchant component
│   │   ├── product_card.dart       # Product display card
│   │   └── search_component.dart   # Search bar implementation
│   │
│   └── main.dart            # Entry point of the application
│
├── assets/
│   ├── icons/               # SVG icons
│   └── images/              # Image assets including product and merchant images
│       └── merchants/       # Merchant logos
```

## 🏁 Getting Started

### Prerequisites

- Flutter SDK (latest stable version)
- Dart SDK
- Android Studio / VS Code with Flutter extensions
- Android Emulator / iOS Simulator / Physical device

### Installation

1. Clone this repository:
   ```
   git clone https://github.com/[your-username]/credpal-assessment.git
   ```

2. Navigate to the project directory:
   ```
   cd credpal-assessment
   ```

3. Install dependencies:
   ```
   flutter pub get
   ```

4. Run the application:
   ```
   flutter run
   ```
## 🔍 Implementation Details

### Assumptions Made

1. **Scroll Behavior**: The product grid is horizontally scrollable while the merchant grid scrolls with the page.
2. **Responsive Design**: The UI adapts to different screen sizes while maintaining the design aesthetics.
3. **Dynamic Data**: In a real application, the product and merchant data would come from an API instead of being hardcoded.

### Design Decisions

1. **Component-Based Architecture**: Split the UI into reusable components for better maintainability.
2. **Proper Asset Management**: Organized assets with a central path reference system.
3. **Responsive Layouts**: Used flexible widgets and constraints to ensure the UI looks good on different devices.
4. **Performance Considerations**: Implemented efficient list rendering for scrollable content.


## 📄 License

This project is for assessment purposes only and is not licensed for public use or distribution.

---

Developed by [Esetobore Akpokiniovo] as part of the CredPal Mobile Application Developer assessment.