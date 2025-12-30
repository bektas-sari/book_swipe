# BookSwipe (Flutter App)

> Swipe to discover books in the most fun and fastest way.

## 📖 Table of Contents

1. [Overview](#overview)
2. [Features](#features)
3. [Screenshots](#screenshots)
4. [Installation](#installation)
5. [Usage](#usage)
6. [Project Structure](#project-structure)
7. [Dependencies](#dependencies)
8. [Development Process](#development-process)
9. [Contributing](#contributing)
10. [License](#license)
11. [🚀 Developer](#🚀-developer)

---

## 📝 Overview

BookSwipe is a Flutter application that lets book enthusiasts quickly mark titles as "read" or "skipped" using a Tinder-style swipe gesture. 
It leverages a JSON-based local Turkish book catalog and integrates with the Open Library Covers API to display cover images for a professional reading-tracking experience.

* **Platform:** Android (iOS support can be added easily)
* **Language:** Dart & Flutter
* **Status:** MVP (Minimum Viable Product)

---

## ✨ Features

* **Tinder-Style Swiping:** Swipe right → "Read", swipe left → "Skipped"
* **Local Turkish Book Data:** Uses `assets/books.json` for book information
* **Cover Images:** Fetches book covers via the Open Library Covers API using ISBN
* **Smooth Animations:** Powered by the SwipeCards package for a native look and feel
* **Quick Exit:** Single-tap exit button in the AppBar

---

## 🚀 Installation

Follow these steps to run the project locally:

1. Clone the repository:

   ```bash
   git clone https://github.com/bektas-sari/book_swipe.git
   cd book_swipe
   ```
2. Install Flutter dependencies:

   ```bash
   flutter pub get
   ```
3. Run the application:

   ```bash
   flutter run
   ```

> **Note:** To avoid Android NDK version conflicts, add `ndkVersion = "27.0.12077973"` to the `android/app/build.gradle.kts` file.

---

## 🎮 Usage

1. When the app opens, book cards appear stacked on the screen.
2. **Swipe right** → Mark as "Read"
3. **Swipe left** → Mark as "Skipped"
4. A snackbar appears when all books have been swiped.
5. Tap the exit icon in the AppBar to close the app.

---

## 🏗️ Project Structure

```
book_swipe/
├─ android/
├─ assets/
│  └─ books.json
├─ lib/
│  ├─ main.dart
│  ├─ models/
│  │  └─ book.dart
│  ├─ services/
│  │  └─ book_service.dart
│  ├─ screens/
│  │  └─ home_page.dart
│  └─ widgets/
│     └─ book_card.dart
├─ test/
└─ pubspec.yaml
```

---

## 📦 Dependencies

* **flutter:** sdk: flutter
* **swipe\_cards:** ^2.0.0
* **http:** ^0.13.6

---

## 🛠️ Development Process

1. Imported local book list via `assets/books.json`.
2. Created the `Book` model and implemented JSON parsing.
3. Integrated Open Library Covers API for cover images.
4. Designed swipe mechanics with the SwipeCards package.
5. Built the UI and added an exit button in the AppBar.
6. Performed performance and UX testing.

---

## 🤝 Contributing

1. Fork the repository: `https://github.com/bektas-sari/book_swipe/fork`
2. Create a new branch: `git checkout -b feature/YourFeature`
3. Commit your changes: `git commit -m "Add some feature"`
4. Push to the branch: `git push origin feature/YourFeature`
5. Open a Pull Request.

---

## 📜 License

This project is licensed under the MIT License. See the [LICENSE]

---

## 👤 Perception Architect

**Dr. Bektaş Sarı** | Perception Architect & Founder @ [KOGNITECT](https://kognitect.com)

I build bridges between **Human Nature** and **Digital Technology**.
My mission is to **construct** and **refine** rational, scientifically grounded products that establish **clarity, solidity, and trust**—not through manipulation, but through neuroscience and evolutionary psychology.

*PhD in Advertising (Focus: AI as a Design Tool)*

- 🌐 **Website:** [kognitect.com](https://kognitect.com)
- 📩 **Email:** [info@kognitect.com](mailto:info@kognitect.com)
- 🔗 **LinkedIn:** [linkedin.com/in/bektas-sari](https://www.linkedin.com/in/bektas-sari)
- 🔬 **ResearchGate:** [researchgate.net/profile/Bektas-Sari-3](https://www.researchgate.net/profile/Bektas-Sari-3)
- 🎓 **Academia:** [independent.academia.edu/bektassari](https://independent.academia.edu/bektassari)
