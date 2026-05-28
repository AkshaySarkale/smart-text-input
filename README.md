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


## Features

| Feature             | Supported |
| ------------------- | --------- |
| Email Validation    | ✅         |
| Password Validation | ✅         |
| OTP Validation      | ✅         |
| Mobile Validation   | ✅         |
| Prefix Icon         | ✅         |
| Suffix Icon         | ✅         |
| Custom Validator    | ✅         |
| Focus Border Color  | ✅         |
| Error Border Color  | ✅         |
| Password Toggle     | ✅         |

---
## Parameters

| Parameter             | Type                       | Default  | Description                         |
| --------------------- | -------------------------- | -------- | ----------------------------------- |
| txtCtrl               | TextEditingController      | Required | Controller for text input           |
| validator             | String? Function(String?)? | null     | Custom validation function          |
| autovalidateMode      | AutovalidateMode?          | null     | Controls auto validation behavior   |
| isPassword            | bool                       | false    | Enables password mode               |
| isGmail               | bool                       | false    | Enables email keyboard & validation |
| isMobNumber           | bool                       | false    | Enables mobile number validation    |
| isOtp                 | bool                       | false    | Enables OTP validation              |
| hintText              | String                     | ""       | Custom hint text                    |
| labelText             | String                     | ""       | Custom label text                   |
| isLabelText           | bool                       | false    | Show label text                     |
| readOnly              | bool                       | false    | Makes field read only               |
| enabled               | bool                       | true     | Enable/disable text field           |
| defaultMobileLength   | int                        | 10       | Mobile number length                |
| otpDigit              | int                        | 6        | OTP digit length                    |
| minimunPasswordlenght | int                        | 6        | Minimum password length             |
| showCounterText       | bool                       | false    | Show/hide max length counter        |
| showprefixIcon        | bool                       | false    | Show prefix icon                    |
| prefixIcon            | IconData?                  | null     | Custom prefix icon                  |
| showSuffixIcon        | bool                       | false    | Show suffix icon                    |
| suffixIcon            | IconData?                  | null     | Custom suffix icon                  |
| onSuffixTap           | VoidCallback?              | null     | Callback for suffix icon tap        |
| hintTextCol           | Color?                     | grey     | Hint text color                     |
| focusBorderColor      | Color?                     | green    | Focus border color                  |
| errorBorderColor      | Color?                     | red      | Error border color                  |


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
## License

MIT License

Copyright (c) 2026 Excelsior Technologies

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
