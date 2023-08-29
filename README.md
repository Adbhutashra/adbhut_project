
# adbhut_application
### Screenshots
![Alt text](/assets/Screenshot/add_employee.png?raw=true)
![Alt text](/assets/Screenshot/bottomsheet.png?raw=true)
![Alt text](/assets/Screenshot/calendar.png?raw=true)
![Alt text](/assets/Screenshot/edit_employee.png?raw=true)
![Alt text](/assets/Screenshot/employee_list.png?raw=true)
![Alt text](/assets/Screenshot/employee_list2.png?raw=true)
![Alt text](/assets/Screenshot/no_employee.png?raw=true)

### System requirements

Dart SDK Version 2.18.0 or greater.
Flutter SDK Version 3.3.0 or greater.
### Application structure

After successful build, your application structure should look like this:

```
.
├── android                         - It contains files required to run the application on an Android platform.
├── assets                          - It contains all images and fonts of your application.
├── ios                             - It contains files required to run the application on an iOS platform.
├── lib                             - Most important folder in the application, used to write most of the Dart code..
    ├── main.dart                   - Starting point of the application
    ├── core
    │   ├── app_export.dart         - It contains commonly used file imports
    │   ├── constants               - It contains static constant class file
    │   └── utils                   - It contains common files and utilities of the application
    ├── presentation                - It contains widgets of the screens 
    ├── routes                      - It contains all the routes of the application
    └── theme                       - It contains app theme and decoration classes
    └── widgets                     - It contains all custom widget classes
```
### Libraries and tools used

- BLoC - State management
  https://bloclibrary.dev
- cached_network_image - For storing internet image into cache
  https://pub.dev/packages/cached_network_image
