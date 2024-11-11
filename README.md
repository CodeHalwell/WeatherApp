# Weather App Update for ZTM Dart: The Complete Developer's Guide

## Introduction

The original weather app was created in the ZTM Dart course. The app used the
metaweather API to get the weather data, however, this is no longer working.

This update will use the OpenWeatherMap API to get the weather data which differs from
the original code as a getLocationID is no longer required and the API call can
get the weather from the city name.

## Setup

To use the app, you will need to get an API key from OpenWeatherMap. You can sign up
for a free account and get an API key from [here](https://home.openweathermap.org/users/sign_up). You need 
to confirm your account via the email link before the API key is active and might take up to a couple
of hours (mine was more like 10 minutes).

Once you have the API key, you will either need to hardcode it in the app for personal use
if only ever running locally. I have chosen to just store it as an environment variable
in my system (Windows) and access it in the app.

To set an environment variable in Windows, you can use the following command in the command prompt:

### Windows
Set the Environment Variable:  
- Open the Start Menu and search for "Environment Variables".
- Click on "Edit the system environment variables".
- In the System Properties window, click on the "Environment Variables" button.
- In the Environment Variables window, click "New" under the "User variables" section.
- Set the "Variable name" to WEATHER_API_KEY and the "Variable value" to your API key (ba7f463e435caf2f672af17c45de492a).
- Click "OK" to save the new environment variable.

### Linux
Set the Environment Variable:
- Open the terminal and type `export WEATHER_API_KEY=b<YOUR_API_KEY>`.
- This will set the environment variable for the current session. To make it permanent, add the line to your `.bashrc` file.
- You can check the environment variable is set by typing `echo $WEATHER_API_KEY`.
- You will need to restart the terminal for the changes to take effect.
- You can also add the export command to your `.bashrc` file to make it permanent.

## Running the App

To run the app, you will need to have Dart installed. Clone the repository and navigate to the project folder in the terminal. 

Run the following command to get the dependencies:

```bash
dart pub get
```

Once the dependencies are installed, you can run the app with the following command:

```bash
dart bin/main.dart <LOCATION_GOES_HERE>
dart bin/main.dart London
```

## Conclusion

This update will allow the weather app to continue to work and provide the weather data for the city name. 
The app will display the weather data for the city name entered in the terminal. The response should look like the following:

```bash
The weather in London is Clear with a temperature of 10.0°C and feels like 8.0°C
```

Hope this gives you an easy fix for the course if you have taken it, just to have something working at the end of it.


