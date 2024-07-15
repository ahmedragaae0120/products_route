# Product Listing using Route API and Dio

## Introduction

This project is part of a job application task where I implemented a product listing feature using the Route API with Dio package, following the Clean Architecture principles. The goal of this project is to demonstrate my ability to interact with APIs and build a well-structured, maintainable application using advanced software design patterns.

## Requirements

- [Flutter](https://flutter.dev/docs/get-started/install)
- [Dio](https://pub.dev/packages/dio)
- Route API credentials

## Architecture

The project is organized using Clean Architecture to ensure a clear separation of concerns and improve maintainability and testability. The project consists of the following layers:

- **Presentation Layer:** Contains the screens and widgets, relying on ViewModels to update the UI.
- **Domain Layer:** Contains the entities and use cases.
- **Data Layer:** Contains the implementation of repositories and data sources to interact with the API.

## Instructions

### Installing Requirements

1. Ensure that Flutter and Dart are installed on your machine.
2. Clone the repository to your local machine:

   ```bash
   git clone https://github.com/ahmedragaae0120/products_route.git
   cd product-listing
