# Smart Text Input

A reusable Flutter smart text input widget with built-in validations and customizable UI.

---

# Features

✅ Built-in Email Validation
✅ Mobile Number Validation
✅ OTP Validation
✅ Password Validation
✅ Password Visibility Toggle
✅ Prefix & Suffix Icons
✅ Custom Validator Support
✅ Read Only Mode
✅ Enable/Disable Field
✅ Input Formatter Support
✅ Focus & Error Border Colors
✅ Counter Text Hide/Show

---

# Installation

Add dependency in `pubspec.yaml`

```yaml
dependencies:
  my_flutter_customtextfeild:
    git:
      url: https://github.com/AkshaySarkale/librariy_flutter_customtextfeild.git
```

---

# Import

```dart
import 'package:my_flutter_customtextfeild/smart_text_input.dart';
```

---

# Email Field Example

```dart
SmartTextInput(
  txtCtrl: emailController,
  isGmail: true,
  isLabelText: true,
)
```

---

# Password Field Example

```dart
SmartTextInput(
  txtCtrl: passwordController,
  isPassword: true,
)
```

---

# Mobile Number Example

```dart
SmartTextInput(
  txtCtrl: mobileController,
  isMobNumber: true,
)
```

---

# Custom Validation Example

```dart
SmartTextInput(
  txtCtrl: nameController,
  validator: (value) {
    if(value == null || value.isEmpty){
      return "Name Required";
    }
    return null;
  },
)
```

---

# Author

Akshay Sarkale
