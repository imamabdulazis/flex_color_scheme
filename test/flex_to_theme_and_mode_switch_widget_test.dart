import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';

//****************************************************************************
// FlexThemeModeSwitch and FlexColorScheme.toTheme Widget tests.
//
//****************************************************************************
void main() {
  group('FTMS1: WITH FlexThemeModeSwitch and FlexColorScheme', () {
    debugDefaultTargetPlatformOverride = null;

    testWidgets('FTMS1.01: Finds FlexThemeModeSwitch LightMode',
        (WidgetTester tester) async {
      await tester.pumpWidget(const ThemeSwitchApp(
        themeMode: ThemeMode.light,
        labelAbove: true,
        selected: true,
      ));

      final Finder themeSwitch = find.byKey(const ValueKey<String>('switch'));
      await tester.tap(themeSwitch);
      await tester.pump();
      expect(themeSwitch, findsOneWidget);

      final Finder optionButton = find.byKey(const ValueKey<String>('option'));
      await tester.tap(optionButton);
      await tester.pump();
      expect(optionButton, findsOneWidget);
    });

    testWidgets('FTMS1.02: Finds FlexThemeModeSwitch DarkMode',
        (WidgetTester tester) async {
      await tester.pumpWidget(const ThemeSwitchApp(
        themeMode: ThemeMode.dark,
        labelAbove: false,
        selected: false,
      ));

      final Finder themeSwitch = find.byKey(const ValueKey<String>('switch'));
      await tester.tap(themeSwitch);
      await tester.pump();
      expect(themeSwitch, findsOneWidget);

      final Finder optionButton = find.byKey(const ValueKey<String>('option'));
      await tester.tap(optionButton);
      await tester.pump();
      expect(optionButton, findsOneWidget);
    });

    testWidgets('FTMS1.03: Finds FlexThemeModeSwitch DarkMode',
        (WidgetTester tester) async {
      await tester.pumpWidget(const ThemeSwitchApp(
        themeMode: ThemeMode.system,
        labelAbove: false,
        selected: true,
      ));

      final Finder themeSwitch = find.byKey(const ValueKey<String>('switch'));
      await tester.tap(themeSwitch);
      await tester.pump();
      expect(themeSwitch, findsOneWidget);

      final Finder optionButton = find.byKey(const ValueKey<String>('option'));
      await tester.tap(optionButton);
      await tester.pump();
      expect(optionButton, findsOneWidget);
    });
  });

  group('FTMS2: WITH FlexThemeModeSwitch Assertions ', () {
    // Test null assertion combinations
    test(
        'FTMS2.01: GIVEN a FlexThemeModeSwitch with a required as null value '
        'EXPECT throws null assertion error.', () {
      expect(
          () => FlexThemeModeSwitch(
              themeMode: null,
              onThemeModeChanged: (ThemeMode value) {},
              flexSchemeData: FlexColor.schemes[FlexScheme.material],
              showSystemMode: false,
              labelAbove: false,
              selectedElevation: 1,
              unselectedElevation: 1,
              optionButtonBorderRadius: 1,
              height: 10,
              width: 10,
              borderRadius: 5),
          throwsAssertionError);
    });
    test(
        'FTMS2.02: GIVEN a FlexThemeModeSwitch with a required as null value '
        'EXPECT throws null assertion error.', () {
      expect(
          () => FlexThemeModeSwitch(
              themeMode: ThemeMode.light,
              onThemeModeChanged: null,
              flexSchemeData: FlexColor.schemes[FlexScheme.material],
              showSystemMode: false,
              labelAbove: false,
              selectedElevation: 1,
              unselectedElevation: 1,
              optionButtonBorderRadius: 1,
              height: 10,
              width: 10,
              borderRadius: 5),
          throwsAssertionError);
    });
    test(
        'FTMS2.03: GIVEN a FlexThemeModeSwitch with a required as null value '
        'EXPECT throws null assertion error.', () {
      expect(
          () => FlexThemeModeSwitch(
              themeMode: ThemeMode.light,
              onThemeModeChanged: (ThemeMode value) {},
              flexSchemeData: null,
              showSystemMode: false,
              labelAbove: false,
              selectedElevation: 1,
              unselectedElevation: 1,
              optionButtonBorderRadius: 1,
              height: 10,
              width: 10,
              borderRadius: 5),
          throwsAssertionError);
    });
    test(
        'FTMS2.04: GIVEN a FlexThemeModeSwitch with a required as null value '
        'EXPECT throws null assertion error.', () {
      expect(
          () => FlexThemeModeSwitch(
              themeMode: ThemeMode.light,
              onThemeModeChanged: (ThemeMode value) {},
              flexSchemeData: FlexColor.schemes[FlexScheme.material],
              showSystemMode: null,
              labelAbove: false,
              selectedElevation: 1,
              unselectedElevation: 1,
              optionButtonBorderRadius: 1,
              height: 10,
              width: 10,
              borderRadius: 5),
          throwsAssertionError);
    });
    test(
        'FTMS2.05: GIVEN a FlexThemeModeSwitch with a required as null value '
        'EXPECT throws null assertion error.', () {
      expect(
          () => FlexThemeModeSwitch(
              themeMode: ThemeMode.light,
              onThemeModeChanged: (ThemeMode value) {},
              flexSchemeData: FlexColor.schemes[FlexScheme.material],
              showSystemMode: false,
              labelAbove: null,
              selectedElevation: 1,
              unselectedElevation: 1,
              optionButtonBorderRadius: 1,
              height: 10,
              width: 10,
              borderRadius: 5),
          throwsAssertionError);
    });
    test(
        'FTMS2.06: GIVEN a FlexThemeModeSwitch with a required as null value '
        'EXPECT throws null assertion error.', () {
      expect(
          () => FlexThemeModeSwitch(
              themeMode: ThemeMode.light,
              onThemeModeChanged: (ThemeMode value) {},
              flexSchemeData: FlexColor.schemes[FlexScheme.material],
              showSystemMode: false,
              labelAbove: false,
              selectedElevation: null,
              unselectedElevation: 1,
              optionButtonBorderRadius: 1,
              height: 10,
              width: 10,
              borderRadius: 5),
          throwsAssertionError);
    });
    test(
        'FTMS2.07: GIVEN a FlexThemeModeSwitch with a required as null value '
        'EXPECT throws null assertion error.', () {
      expect(
          () => FlexThemeModeSwitch(
              themeMode: ThemeMode.light,
              onThemeModeChanged: (ThemeMode value) {},
              flexSchemeData: FlexColor.schemes[FlexScheme.material],
              showSystemMode: false,
              labelAbove: false,
              selectedElevation: 1,
              unselectedElevation: null,
              optionButtonBorderRadius: 1,
              height: 10,
              width: 10,
              borderRadius: 5),
          throwsAssertionError);
    });
    test(
        'FTMS2.08: GIVEN a FlexThemeModeSwitch with a required as null value '
        'EXPECT throws null assertion error.', () {
      expect(
          () => FlexThemeModeSwitch(
              themeMode: ThemeMode.light,
              onThemeModeChanged: (ThemeMode value) {},
              flexSchemeData: FlexColor.schemes[FlexScheme.material],
              showSystemMode: false,
              labelAbove: false,
              selectedElevation: 1,
              unselectedElevation: 1,
              optionButtonBorderRadius: null,
              height: 10,
              width: 10,
              borderRadius: 5),
          throwsAssertionError);
    });
    test(
        'FTMS2.09: GIVEN a FlexThemeModeSwitch with a required as null value '
        'EXPECT throws null assertion error.', () {
      expect(
          () => FlexThemeModeSwitch(
              themeMode: ThemeMode.light,
              onThemeModeChanged: (ThemeMode value) {},
              flexSchemeData: FlexColor.schemes[FlexScheme.material],
              showSystemMode: false,
              labelAbove: false,
              selectedElevation: 1,
              unselectedElevation: 1,
              optionButtonBorderRadius: 1,
              height: null,
              width: 10,
              borderRadius: 5),
          throwsAssertionError);
    });
    test(
        'FTMS2.10: GIVEN a FlexThemeModeSwitch with a required as null value '
        'EXPECT throws null assertion error.', () {
      expect(
          () => FlexThemeModeSwitch(
              themeMode: ThemeMode.light,
              onThemeModeChanged: (ThemeMode value) {},
              flexSchemeData: FlexColor.schemes[FlexScheme.material],
              showSystemMode: false,
              labelAbove: false,
              selectedElevation: 1,
              unselectedElevation: 1,
              optionButtonBorderRadius: 1,
              height: 10,
              width: null,
              borderRadius: 5),
          throwsAssertionError);
    });
    test(
        'FTMS2.11: GIVEN a FlexThemeModeSwitch with a required as null value '
        'EXPECT throws null assertion error.', () {
      expect(
          () => FlexThemeModeSwitch(
              themeMode: ThemeMode.light,
              onThemeModeChanged: (ThemeMode value) {},
              flexSchemeData: FlexColor.schemes[FlexScheme.material],
              showSystemMode: false,
              labelAbove: false,
              selectedElevation: 1,
              unselectedElevation: 1,
              optionButtonBorderRadius: 1,
              height: 10,
              width: 10,
              borderRadius: null),
          throwsAssertionError);
    });
  });

  group('FTMS3: WITH FlexThemeModeOptionButton Assertions ', () {
    // Test null assertion combinations
    test(
        'FTMS3.01: GIVEN a FlexThemeModeOptionButton with a required as null '
        'value EXPECT throws null assertion error.', () {
      expect(
          () => FlexThemeModeOptionButton(
              flexSchemeColor: null,
              backgroundColor: Colors.black,
              labelAbove: false,
              selected: false,
              onSelect: () {},
              elevation: 2,
              optionButtonBorderRadius: 1,
              height: 10,
              width: 10,
              borderRadius: 5),
          throwsAssertionError);
    });
    test(
        'FTMS3.02: GIVEN a FlexThemeModeOptionButton with a required as null '
        'value EXPECT throws null assertion error.', () {
      expect(
          () => FlexThemeModeOptionButton(
              flexSchemeColor: FlexColor.schemes[FlexScheme.material].dark,
              backgroundColor: null,
              labelAbove: false,
              selected: false,
              onSelect: () {},
              elevation: 2,
              optionButtonBorderRadius: 1,
              height: 10,
              width: 10,
              borderRadius: 5),
          throwsAssertionError);
    });
    test(
        'FTMS3.03: GIVEN a FlexThemeModeOptionButton with a required as null '
        'value EXPECT throws null assertion error.', () {
      expect(
          () => FlexThemeModeOptionButton(
              flexSchemeColor: FlexColor.schemes[FlexScheme.material].dark,
              backgroundColor: Colors.black,
              labelAbove: null,
              selected: false,
              onSelect: () {},
              elevation: 2,
              optionButtonBorderRadius: 1,
              height: 10,
              width: 10,
              borderRadius: 5),
          throwsAssertionError);
    });
    test(
        'FTMS3.04: GIVEN a FlexThemeModeOptionButton with a required as null '
        'value EXPECT throws null assertion error.', () {
      expect(
          () => FlexThemeModeOptionButton(
              flexSchemeColor: FlexColor.schemes[FlexScheme.material].dark,
              backgroundColor: Colors.black,
              labelAbove: false,
              selected: null,
              onSelect: () {},
              elevation: 2,
              optionButtonBorderRadius: 1,
              height: 10,
              width: 10,
              borderRadius: 5),
          throwsAssertionError);
    });
    test(
        'FTMS3.05: GIVEN a FlexThemeModeOptionButton with a required as null '
        'value EXPECT throws null assertion error.', () {
      expect(
          () => FlexThemeModeOptionButton(
              flexSchemeColor: FlexColor.schemes[FlexScheme.material].dark,
              backgroundColor: Colors.black,
              labelAbove: false,
              selected: false,
              onSelect: null,
              elevation: 2,
              optionButtonBorderRadius: 1,
              height: 10,
              width: 10,
              borderRadius: 5),
          throwsAssertionError);
    });
    test(
        'FTMS3.06: GIVEN a FlexThemeModeOptionButton with a required as null '
        'value EXPECT throws null assertion error.', () {
      expect(
          () => FlexThemeModeOptionButton(
              flexSchemeColor: FlexColor.schemes[FlexScheme.material].dark,
              backgroundColor: Colors.black,
              labelAbove: false,
              selected: false,
              onSelect: () {},
              elevation: null,
              optionButtonBorderRadius: 1,
              height: 10,
              width: 10,
              borderRadius: 5),
          throwsAssertionError);
    });
    test(
        'FTMS3.07: GIVEN a FlexThemeModeOptionButton with a required as null '
        'value EXPECT throws null assertion error.', () {
      expect(
          () => FlexThemeModeOptionButton(
              flexSchemeColor: FlexColor.schemes[FlexScheme.material].dark,
              backgroundColor: Colors.black,
              labelAbove: false,
              selected: false,
              onSelect: () {},
              elevation: 2,
              optionButtonBorderRadius: null,
              height: 10,
              width: 10,
              borderRadius: 5),
          throwsAssertionError);
    });
    test(
        'FTMS3.08: GIVEN a FlexThemeModeOptionButton with a required as null '
        'value EXPECT throws null assertion error.', () {
      expect(
          () => FlexThemeModeOptionButton(
              flexSchemeColor: FlexColor.schemes[FlexScheme.material].dark,
              backgroundColor: Colors.black,
              labelAbove: false,
              selected: false,
              onSelect: () {},
              elevation: 2,
              optionButtonBorderRadius: 1,
              height: null,
              width: 10,
              borderRadius: 5),
          throwsAssertionError);
    });
    test(
        'FTMS3.09: GIVEN a FlexThemeModeOptionButton with a required as null '
        'value EXPECT throws null assertion error.', () {
      expect(
          () => FlexThemeModeOptionButton(
              flexSchemeColor: FlexColor.schemes[FlexScheme.material].dark,
              backgroundColor: Colors.black,
              labelAbove: false,
              selected: false,
              onSelect: () {},
              elevation: 2,
              optionButtonBorderRadius: 1,
              height: 10,
              width: null,
              borderRadius: 5),
          throwsAssertionError);
    });
    test(
        'FTMS3.10: GIVEN a FlexThemeModeOptionButton with a required as null '
        'value EXPECT throws null assertion error.', () {
      expect(
          () => FlexThemeModeOptionButton(
              flexSchemeColor: FlexColor.schemes[FlexScheme.material].dark,
              backgroundColor: Colors.black,
              labelAbove: false,
              selected: false,
              onSelect: () {},
              elevation: 2,
              optionButtonBorderRadius: 1,
              height: 10,
              width: 10,
              borderRadius: null),
          throwsAssertionError);
    });
  });
}

class ThemeSwitchApp extends StatefulWidget {
  const ThemeSwitchApp({
    this.themeMode,
    this.labelAbove,
    this.selected,
    Key key,
  }) : super(key: key);
  final ThemeMode themeMode;
  final bool labelAbove;
  final bool selected;

  @override
  _ThemeSwitchAppState createState() => _ThemeSwitchAppState();
}

class _ThemeSwitchAppState extends State<ThemeSwitchApp> {
  ThemeMode mode;
  bool labelAbove;
  bool selected;

  @override
  void initState() {
    super.initState();
    mode = widget.themeMode;
    labelAbove = widget.labelAbove;
    selected = widget.selected;
  }

  @override
  Widget build(BuildContext context) {
    debugDefaultTargetPlatformOverride = null;
    return MaterialApp(
      title: 'Theme Switch',
      theme: FlexColorScheme.light(
              colors: FlexColor.schemes[FlexScheme.material].light)
          .toTheme,
      darkTheme: FlexColorScheme.dark(
              colors: FlexColor.schemes[FlexScheme.material].dark)
          .toTheme,
      themeMode: mode,
      home: Scaffold(
        appBar: AppBar(title: const Text('Theme Switch')),
        body: Column(
          children: <Widget>[
            FlexThemeModeSwitch(
                key: const ValueKey<String>('switch'),
                themeMode: mode,
                labelAbove: labelAbove,
                onThemeModeChanged: (ThemeMode value) {
                  setState(() {
                    mode = value;
                  });
                },
                flexSchemeData: FlexColor.schemes[FlexScheme.material]),
            FlexThemeModeOptionButton(
              key: const ValueKey<String>('option'),
              flexSchemeColor: FlexColor.schemes[FlexScheme.material].light,
              backgroundColor: Colors.white,
              selected: selected,
              onSelect: () {
                setState(() {
                  selected = !selected;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
