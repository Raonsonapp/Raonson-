# Raonson — Modern Social App

Raonson як шабакаи иҷтимоии сабук ва муосир аст, ки ба версияи аввали Instagram (2010) монанд аст, вале бо UI муосир ва иҷрои тез.

## 🚀 Функсияҳои версияи 1.0

- Логин бо Email/Password
- Бор кардани акси Post
- Матни Post
- Тамошои Feed (Real-time)
- Профили оддӣ (версияи аввал)
- Firebase Authentication
- Firestore Database
- Firebase Storage
- Light & Dark Theme

## 📁 Сохтори проект

raonson/
 ├─ lib/
 ├─ android/
 ├─ ios/
 ├─ assets/
 ├─ pubspec.yaml
 └─ README.md

## 🔧 Firebase Config (IMPORTANT)

### Android:
Файлро гузор:
android/app/google-services.json

### iOS (опсионалӣ):
ios/Runner/GoogleService-Info.plist

## 🏗 Build APK (Codemagic)

1. Проектро дар GitHub бор кун
2. Codemagic → Add Application → GitHub → raonson
3. Файл соз: codemagic.yaml
4. Кодро дарун гузор:

workflows:
  android-release:
    name: Android Release Build
    environment:
      flutter: stable
      android:
        sdk: 34
    scripts:
      - flutter pub get
      - flutter build apk --release
    artifacts:
      - build/app/outputs/flutter-apk/app-release.apk

5. Build → APK Download

## 👨‍💻 Developer
Ehson (W.C.T)
Tajikistan 🇹🇯
