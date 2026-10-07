Himitra Android app (WebView wrapper)
======================================

This is a normal Android Studio project. It shows your full Himitra
demo inside a native app using a WebView, so it installs and runs like
a real app, opens to a launcher icon, and works offline once installed
(fonts need internet the first time; everything else is local).

HOW TO OPEN

1. Unzip this folder anywhere on your computer.
2. Open Android Studio.
3. Choose "Open" and select the Himitra-Android folder (the one
   with settings.gradle in it).
4. Android Studio will say the Gradle wrapper is missing and offer to
   create it. Click OK / Yes. It downloads Gradle automatically.
5. Wait for Gradle sync to finish (bottom status bar).
6. Press the green Run button, pick an emulator or a connected phone.

WHAT'S INSIDE

- app/src/main/assets/himitra-demo.html
    Your whole demo (HTML, CSS, JS), unchanged, loaded straight from
    the app's assets.
- app/src/main/res/layout/activity_main.xml
    The screen layout: one full-screen WebView.
- app/src/main/java/com/himitra/app/MainActivity.kt
    A single Activity that inflates that layout, points the WebView
    at the demo file, with JavaScript and local storage turned on,
    and the Android back button wired to go back inside the app.
- app/src/main/res/
    App name ("Himitra"), launcher icon (the pentagon mountain and
    sun mark from your logo) and the status bar color.

UPDATING THE DEMO LATER

If you change himitra-demo.html again, just replace the file at
app/src/main/assets/himitra-demo.html with the new version and
re-run the app. No other changes needed.

NOTES

- Package name is com.himitra.app (renamed from the earlier
  com.treksaathi.app).
- minSdk is 26 (Android 8.0+), which covers the vast majority of
  devices.
- The app needs internet only to load the Google Fonts used for
  headings; if offline, it falls back to the system font and still
  works fully.
- This wraps your existing demo rather than rewriting it as native
  Kotlin UI, so behavior matches the web version exactly. Converting
  it to fully native screens later is possible but is a much larger,
  separate project.
