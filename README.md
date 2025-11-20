# Flutter Data Playground (skeleton)

Project generated from user's module. Contains demos for:
- SharedPreferences (prefs_demo.dart)
- File I/O (file_demo.dart)
- SQLite with sqflite (db_helper.dart + task_sqflite_page.dart)
- Floor ORM example (Floor files + task_floor_page.dart)
- Retrofit/Dio model & service skeleton

## How to run

1. Install Flutter SDK and set up device/emulator.
2. Extract project.
3. Run:
   ```
   flutter pub get
   flutter run
   ```
4. To generate Floor/Retrofit/JSON code:
   ```
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

Notes:
- `assets/db/tasks.db` is a placeholder empty file. If you want a preloaded DB, replace it with a real SQLite file.
- API tab is a placeholder; wire TaskApiService to a real backend to test CRUD.
# tugas-modul-4
