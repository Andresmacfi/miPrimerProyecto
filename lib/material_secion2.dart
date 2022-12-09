import 'package:flutter/material.dart';

void main() {
  runApp(const DiarioApp());
}

const List<Color> colorOptions = [
  Colors.pink,
  Colors.blue,
  Colors.yellow,
  Colors.orange,
  Colors.teal,
  Colors.green,
];

class DiarioApp extends StatefulWidget {
  const DiarioApp({Key? key}) : super(key: key);

  @override
  State<DiarioApp> createState() => _DiarioAppState();
}

class _DiarioAppState extends State<DiarioApp> {
  var useLightMode = false;
  int colorSelected = 5;
  Color colorScheme = Colors.green;

  AppBar createAppBar() {
    return AppBar(
      leading: IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
      title: const Text("Diario"),
      actions: [
        IconButton(
            icon: useLightMode
                ? const Icon(Icons.wb_sunny_outlined)
                : const Icon(Icons.wb_sunny),
            onPressed: () {
              setState(() {
                useLightMode = !useLightMode;
              });
            }),
        PopupMenuButton(
          icon: const Icon(Icons.more_vert),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          itemBuilder: (context) {
            return List.generate(colorOptions.length, (index) {
              return PopupMenuItem(
                  value: index,
                  child: Icon(
                    index == colorSelected
                        ? Icons.circle
                        : Icons.circle_outlined,
                    color: colorOptions[index],
                  ));
            });
          },
          onSelected: (int value) {
            setState(() {
              colorSelected = value;
              colorScheme = colorOptions[colorSelected];
            });
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: colorScheme,
        brightness: useLightMode ? Brightness.light : Brightness.dark,
      ),
      title: "Misión TIC",
      home: Scaffold(
        appBar: createAppBar(),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          children: [
            const Text("Mis Notas",
                style: TextStyle(color: Colors.black, fontSize: 32)),
            for (var c = 0; c < 15; c++)
              Card(
                child: ListTile(
                  leading: CircleAvatar(child: Text("$c")),
                  title: const Text('Septiembre'),
                  subtitle: Text('Flutter impresionante $c'),
                ),
              )
          ],
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {}, child: const Icon(Icons.add)),
        bottomNavigationBar: NavigationBar(
          selectedIndex: 2,
          destinations: const <Widget>[
            NavigationDestination(icon: Icon(Icons.star), label: 'Favoritos'),
            NavigationDestination(icon: Icon(Icons.home), label: 'Inicio'),
            NavigationDestination(
                icon: Icon(Icons.add_location_alt), label: 'Sitios'),
          ],
        ),
      ),
    );
  }
}
