import 'package:flutter/material.dart';
import 'package:newApp/Models/user.dart';
import 'package:newApp/Screens/Authenticate/authenticate.dart';
import 'package:newApp/Screens/Home/home.dart';
import 'package:provider/provider.dart';
import 'package:newApp/Services/app_localizations.dart';
import 'package:newApp/Services/geolocator_service.dart';
import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

// This is where the code will decide to either show the home page or sign in page

class Wrapper extends StatelessWidget {
  final geoService = GeolocatorService();

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);

        return FutureProvider(
          create: (context) => geoService.getInitialLocation(),
          child: MaterialApp(

        supportedLocales: [
          Locale('en', 'US'),
          Locale('fr', 'FR'),
        ],
        // These delegates make sure that the localization data for the proper language is loaded
        localizationsDelegates: [
          // THIS CLASS WILL BE ADDED LATER
          // A class which loads the translations from JSON files
          AppLocalizations.delegate,
          // Built-in localization of basic text for Material widgets
          GlobalMaterialLocalizations.delegate,
          // Built-in localization for text direction LTR/RTL
          GlobalWidgetsLocalizations.delegate,
        ],
        // Returns a locale which will be used by the app
        localeResolutionCallback: (locale, supportedLocales) {
          // Check if the current device locale is supported
          for (var supportedLocale in supportedLocales) {
            if (supportedLocale.languageCode == locale.languageCode &&
                supportedLocale.countryCode == locale.countryCode) {
              return supportedLocale;
            }
          }
          // If the locale of the device is not supported, use the first one
          // from the list (English, in this case).
          return supportedLocales.first;
        },
        
          home: user==null ?  Authenticate() : Home(),
        ),
    );
  }
}

