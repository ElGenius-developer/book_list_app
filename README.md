# 📚 Book Listing App

A Flutter mobile application to browse and search books from the Project Gutenberg Library using the Gutendex API.  
Built with **Clean Architecture**, **Cubit (flutter_bloc)** for state management, and **offline caching** with Hive.

## 🚀 Features

- View list of books from Gutendex
    - Infinite scrolling (pagination)
    - Search books with live results
    - Book item with:
        - Cover image
        - Title
        - Authors
        - 3-line collapsible summary with "See More" / "See Less"
    - Responsive layout (Mobile, Tablet)
    - Error handling and retry on failure
    - Offline support (cache books and search results)

---

## 🏛 Architecture

Follows **Clean Architecture** principles:

| Layer            | Responsibility                                             |
|------------------|------------------------------------------------------------|
| **Presentation** | UI widgets,Screens, Cubits (state management)              |
| **Domain**       | Repositories Entities, Use cases                           |
| **Data**         | Repositories,Models, Data sources (API + Hive)             |
| **Core**         | Networking, Utilities, Routing, Themes, Colors, and Styles |

**State Management**: Cubit (`flutter_bloc`)  
**Dependency Injection**: `GetIt`

---

## Tech Stack

| Package                | Purpose                                         |
|------------------------|-------------------------------------------------|
| `flutter`              | Core framework                                  |
| `flutter_bloc`         | State management (Cubit)                        |
| `get_it`               | Dependency Injection                            |
| `http`                 | API requests to Gutendex Api                    |
| `hive`                 | Local caching for offline support               |
| `cached_network_image` | Load and cache book image                       |
| `freezed`              | Immutable models and Code generation for models |
| `json_serializable`    | Model code generation                           |
| `connectivity_plus`    | Network status detection                        |
| `responsive_builder`   | Adaptive UI for multiple screen sizes           |

---

## 🛠 Getting Started

### Prerequisites

- Flutter SDK ( >= 3.27.0)
- Android Studio/Xcode (for emulator setup)

### Installation

1. **Clone the repository**:

   ```
   git clone https://github.com/ElGenius-developer/book_list_app

   cd book_list_app 
   ```

2. **Install dependencies**:

<<<<<<< HEAD
=======

>>>>>>> 860dc78d40b85053d2e5b9cf11d3b2adc1a062da
       flutter pub get

3. **Generate code and serialize models (if needed)**:

<<<<<<< HEAD
=======

>>>>>>> 860dc78d40b85053d2e5b9cf11d3b2adc1a062da
       flutter pub run build_runner build -d

4. **Run the app**:

       flutter run
<<<<<<< HEAD
=======

>>>>>>> 860dc78d40b85053d2e5b9cf11d3b2adc1a062da

---

## 🙌 Links

[![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev/)

[![GitHub](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/ElGenius-developer)

[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/ahmed-developer)

---

## 📸 Screenshots

![ Screenshot 1](https://github.com/ElGenius-developer/book_list_app/screen_shots/books_list.png?raw=true)

![Screenshot 2](https://github.com/ElGenius-developer/book_list_app/blob/main/screen_shots/loading.png?raw=true)

![Screenshot 3](https://github.com/ElGenius-developer/book_list_app/blob/main/screen_shots/book_details.png?raw=true)

![Screenshot 4](https://github.com/ElGenius-developer/book_list_app/blob/main/screen_shots/no_results.png?raw=true)

![Screenshot 5](https://github.com/ElGenius-developer/book_list_app/blob/main/screen_shots/result_with_full_summary.png?raw=true)

![Screenshot 6](https://github.com/ElGenius-developer/book_list_app/blob/main/screen_shots/result_with_loadmore.png?raw=true)

![Screenshot 7](https://github.com/ElGenius-developer/book_list_app/blob/main/screen_shots/search_result_on_mobile.png?raw=true)

![Screenshot 8](https://github.com/ElGenius-developer/book_list_app/blob/main/screen_shots/search_result_on_tablet.png?raw=true)

![Screenshot 9](https://github.com/ElGenius-developer/book_list_app/blob/main/screen_shots/details.png?raw=true)

![Screenshot 10](https://github.com/ElGenius-developer/book_list_app/blob/main/screen_shots/details_1_tablet.png?raw=true)

![Screenshot 11](https://github.com/ElGenius-developer/book_list_app/blob/main/screen_shots/details_2_tablet.png?raw=true)


<<<<<<< HEAD
---
=======
---
>>>>>>> 860dc78d40b85053d2e5b9cf11d3b2adc1a062da
