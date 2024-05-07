# Optomatica Task

This is a simple Flutter app that displays a list of races, can *search* races by name or country, and can *filter* races by distance, type, location, and date based on a selection from a dropdown menu.

## Overview

This app is a simple app that uses the bloc architecture to handle state management. It's a simple app that displays a list of races and filters them based on a selection from a dropdown menu.

## Features

- Displays a list of races
- Can search races by name or country
- Can filter races by distance, type, location, and date

## Dependencies

This app uses the following dependencies:

- `flutter_bloc`: used to handle state management
- `flutter_screenutil`: used to handle responsive design
- `flutter_typeahead`: used to display a search field
- `freezed`: used to generate code for freezed models
- `get_it`: used to inject dependencies
- `intl`: used to format dates

## Usage

To run the app, follow these steps:

1. Clone the repository

    ```bash
    git clone https://github.com/MohamedIbrahem/optomatica_task.git
    ```

2. Navigate to the cloned repository

    ```bash
    cd optomatica_task
    ```

3. Run `flutter pub get` to get the dependencies

    ```bash
    flutter pub get
    ```

4. Run the app

    ```bash
    flutter run
    ```
