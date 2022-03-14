## Instructions

1. Create a new project call it: `animals_flutter_app` and set it up like you did in the previous task.

```dart
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold()
  }
}
```

2. Pick up an animal picture online and create a folder in your root file and call it `assets`.
3. And inside that folder create another folder named `images`.
4. Drag your image inside this folder.
5. Open `pubspec.yaml` and add your image path:

```yaml
assets:
  - assets/images/animal.png
```

⚠️ Make sure of your image name and type, maybe rename your image to `animal` and check the type ex: jpg, png, jpeg etc.

6. In your `Scaffold` `body` argument, pass it a `Column` widget.

```dart
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column()
    )
  }
```

7. In your `Column`s `children` argument, add an `Image.asset` widget.

```dart
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            children:[
                Image.asset("assets/images/animal.jpg"),
            ]
        )
    )
  }
```

8. Give your image a `height` and `width`.

```dart
        Image.asset(
              "assets/images/animal.jpg",
              width: 200,
              height: 200,
            ),
```

9. Add 3 `Text` widgets and fill them up with the name, age and gender.

```dart
        Column(
        children: [
            Image.asset(
              "assets/images/animal.jpg",
              width: 200,
              height: 200,
            ),
            Text("Name: Panda"),
            Text("Age: 3"),
            Text("Gender: Male"),
        ],
      ),
```

10. Add a `mainAxisAlignment` and `crossAxisAlignment` arguments to your `Column` widget.

```dart
    Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start, // <- Here
        children: [...]
    )
```

11. Wrap your `Image` widget with a `Container` widget.

```dart
    Container(
            child: Image.asset(
              "assets/images/animal.jpg",
              width: 200,
              height: 200,
            ),
          ),
```

12. Give it an `Alignment` argument.

```dart
Container(
            alignment: Alignment.center,
            child: Image.asset(
              "assets/images/animal.jpg",
              width: 200,
              height: 200,
            ),
          ),
```

13. Wrap each `Text` widget with a `Container` widget.

```dart
        Container(
            child: Text("Name: Panda"),
          ),
        Container(
            child: Text("Age: 3"),
          ),
        Container(
            child: Text("Gender: Male"),
          )
```

14. Give your first `Text` widget a margin from the `top` and from the `left`.

```dart
        Container(
            margin: EdgeInsets.only(top: 20, left: 40),
            child: Text("Name: Panda"),
          ),
```

15. Give the rest `Text` widgets a margin from the `left`.

```dart
          Container(
            margin: EdgeInsets.only(left: 40),
            child: Text("Age: 3"),
          ),
          Container(
            margin: EdgeInsets.only(left: 40),
            child: Text("Gender: Male"),
          )
```

### 🍋 Decoration

1. Give your each container a different color, and maybe style your text more 🖌️.

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

### 🌶 Row

1. Wrap your 3 `Container` with a `Text` in them with a `Row` widget.

```dart
Row(
            children: [
              Container(
                color: Colors.amber,
                margin: EdgeInsets.only(left: 40),
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
              ),
            ],
          )
```

2. Wrap your `Row` with a `Container` and give it a margin from the top.

```dart
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Row(...)
```
