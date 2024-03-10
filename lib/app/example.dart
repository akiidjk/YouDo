import 'package:flutter/material.dart';
import 'package:you_do/core/view/theme.dart';
import 'package:you_do/core/view/widgets/windowbar.dart';

class example extends StatefulWidget {
  const example({super.key});

  @override
  State<example> createState() => _exampleState();
}

class _exampleState extends State<example> {
  final MaterialStateProperty<Icon?> thumbIcon =
      MaterialStateProperty.resolveWith<Icon?>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
        return const Icon(Icons.check);
      }
      return const Icon(Icons.close);
    },
  );
  double _value = 0.0;
  int segmentedButton = 0;
  bool switchValue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bg_color,
        body: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Display Large",
                    style: Theme.of(context).textTheme.displayLarge),
                Text("Display Medium",
                    style: Theme.of(context).textTheme.displayMedium),
                Text("Display Small",
                    style: Theme.of(context).textTheme.displaySmall),
                Text("Title Large",
                    style: Theme.of(context).textTheme.titleLarge),
                Text("Title Medium",
                    style: Theme.of(context).textTheme.titleMedium),
                Text("Title Small",
                    style: Theme.of(context).textTheme.titleSmall),
                Text("Body Large",
                    style: Theme.of(context).textTheme.bodyLarge),
                Text("Body Medium",
                    style: Theme.of(context).textTheme.bodyMedium),
                Text("Body Small",
                    style: Theme.of(context).textTheme.bodySmall),
                Text("Headline Large",
                    style: Theme.of(context).textTheme.headlineLarge),
                Text("Headline Medium",
                    style: Theme.of(context).textTheme.headlineMedium),
                Text("Headline Small",
                    style: Theme.of(context).textTheme.headlineSmall),
                Text("Label Large",
                    style: Theme.of(context).textTheme.labelLarge),
                Text("Label Medium",
                    style: Theme.of(context).textTheme.labelMedium),
                Text("Label Small",
                    style: Theme.of(context).textTheme.labelSmall),
              ],
            ),
            Column(
              children: [
                // for disable substitute with 'null'
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FilledButton(
                    onPressed: () {
                      print("Filled Button");
                    },
                    child: const Text("Filled Button"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      print("Elevated Button");
                    },
                    child: const Text("Elevated Button"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OutlinedButton(
                    onPressed: () {
                      print("Outlined Button");
                    },
                    child: const Text("Outlined Button"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    onPressed: () {
                      print("Text Button");
                    },
                    child: const Text("Text Button"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    onPressed: () {
                      print("Icon Button");
                    },
                    icon: const Icon(Icons.abc),
                  ),
                ),
                Checkbox(
                    value: switchValue,
                    onChanged: (value) {
                      setState(() {
                        switchValue = value!;
                      });
                    }),
                Radio(
                    value: switchValue,
                    groupValue: false,
                    onChanged: (value) {
                      setState(() {
                        switchValue = !value!;
                      });
                    }),
                Switch(
                    thumbIcon: thumbIcon,
                    value: switchValue,
                    onChanged: (value) {
                      setState(() {
                        switchValue = value;
                      });
                    }),
                FloatingActionButton(
                    onPressed: () {}, child: const Icon(Icons.check)),
                Slider(
                  value: _value,
                  max: 100,
                  label: _value.round().toString(),
                  onChanged: (double value) {
                    setState(() {
                      _value = value;
                    });
                  },
                ),
                SegmentedButton(
                  showSelectedIcon: true,
                  segments: const [
                    ButtonSegment(value: 0, icon: Icon(Icons.ac_unit_rounded)),
                    ButtonSegment(value: 1, icon: Icon(Icons.home)),
                    ButtonSegment(value: 2, icon: Icon(Icons.downhill_skiing))
                  ],
                  selected: {segmentedButton},
                  onSelectionChanged: (value) {
                    setState(() {
                      segmentedButton = value.first;
                    });
                  },
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(width: 200, child: LinearProgressIndicator()),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                      width: 30,
                      height: 30,
                      child: CircularProgressIndicator()),
                ),
                ElevatedButton(
                    onPressed: () => _showMyDialog('Title',
                        <Widget>[const Text('Content')], Colors.red, 'Delete'),
                    child: const Text('Show Dialog')),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Chip(
                    avatar: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      foregroundColor: textColor,
                      child: Icon(
                        Icons.account_circle_rounded,
                        size: 18,
                      ),
                    ),
                    label: Text('Aaron Burr'),
                  ),
                ),
                const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: SizedBox(
                        width: 500,
                        child: TextField(
                            // enabled: false,
                            //Fill the parameter of textField no decoration
                            autocorrect: true,
                            enableSuggestions: true,
                            maxLength: 20,
                            decoration: InputDecoration(
                              labelText: 'password',
                              hintText: 'Enter a search term',
                              suffix: Text("Suffix"),
                              prefix: Text("Prefix"),
                              prefixIcon: Icon(Icons.abc),
                              suffixIcon: Icon(Icons.abc),
                              filled: false,
                            )))),
              ],
            )
          ],
        ));
  }

  //Simple dialog for action
  Future<void> _showMyDialog(String title, List<Widget> content,
      Color colorMainButton, String textMainButton) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Text(title),
          ),
          content: Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: SingleChildScrollView(
              child: ListBody(
                children: content,
              ),
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: OutlinedButton(
                style: ButtonStyle(
                    foregroundColor: MaterialStatePropertyAll<Color>(
                        Colors.white.withOpacity(0.6)),
                    side: MaterialStatePropertyAll<BorderSide>(
                        BorderSide(color: Colors.white.withOpacity(0.6)))),
                child: const Text('Cancel'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0, bottom: 10.0),
              child: FilledButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll<Color>(colorMainButton),
                    foregroundColor:
                        const MaterialStatePropertyAll<Color>(textColor)),
                child: Text(textMainButton),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
