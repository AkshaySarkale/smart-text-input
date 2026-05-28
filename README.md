# Smart Text Input

A reusable Flutter smart text input widget with built-in validations and customizable UI.

---
## When To Use

Use `SmartTextInput` when you need:

* Login Forms
* Signup Forms
* OTP Verification Screens
* Mobile Number Inputs
* Email Inputs
* Password Inputs
* Reusable Form Components
* Built-in Validations
* Clean and Consistent Input UI

This package helps reduce repetitive form validation code and provides a reusable smart text field solution for Flutter applications.

## Perfect For

✅ Authentication Screens
✅ Admin Panels
✅ Enterprise Apps
✅ Form-Based Applications
✅ Fast Flutter Development
✅ Reusable UI Systems


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

# MIT License

# Copyright (c) 2026 Excelsior Technologies

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
