## Instructions

1. Open the project: `animals_flutter_app` and open the `main.dart` file.

2. We need to replace the values in our `Text` widgets with variables.

```dart
        Container(
            color:colors.amber,
            margin: EdgeInsets.only(top: 20, left: 40),
            child: Text("Name: Panda"),
          ),
        Container(
            color: Colors.teal,
            margin: EdgeInsets.only(left: 40),
            child: Text("Age: 3"),
          ),
        Container(
            color: Colors.deepOrangeAccent,
            margin: EdgeInsets.only(left: 40),
            child: Text("Gender: Male"),
          )
```

3. In your `HomeScreen` widget, add the first variable for the `name`, make it `final` and of type `String`:

```dart
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  final String name = "Panda";
  @override
  Widget build(BuildContext context) {
[...]
```

4. In your first `Text` widget, inject the `name` variable using string interpolation:

```dart
        Container(
            color:colors.amber,
            margin: EdgeInsets.only(top: 20, left: 40),
            child: Text("Name: $name"),
          ),
```

5. Create your second variable for `age`, make it final and of type `int`:

```dart
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  final String name = "Panda";
  final int age = 3;
  @override
  Widget build(BuildContext context) {
[...]
```

6. In your second `Text` widget, inject the `age` variable using string interpolation:

```dart
        Container(
            color: Colors.teal,
            margin: EdgeInsets.only(left: 40),
            child: Text("Age: $age"),
          ),
```

7. Create your third variable for `gender`, make it final and of type `String`:

```dart
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  final String name = "Panda";
  final int age = 3;
  final String gender = "male";
  @override
  Widget build(BuildContext context) {
[...]
```

6. In your third `Text` widget, inject the `gender` variable using string interpolation:

```dart
        Container(
            color: Colors.teal,
            margin: EdgeInsets.only(left: 40),
            child: Text("Gender: $gender"),
          ),
```
