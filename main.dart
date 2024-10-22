/*import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("TRAFFIC CONTROL APP",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,
            color: Colors.cyan),
            ),
          ),

        ),
        body: TwoLanes(),
      ),
    );
  }
}

class TwoLanes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Left Lane
        Expanded(
          child: Container(
            height: double.infinity,
            color: Colors.greenAccent,
            child: Center(
              child: Text(
                'Left Lane',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        // Right Lane
        Expanded(
          child: Container(
            height: double.infinity,
            color: Colors.lightBlueAccent,
            child: Center(
              child: Text(
                'Right Lane',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ],
    );
  }
*/



/*import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Two Lane Road with Signals")),
          backgroundColor: Colors.cyanAccent,
        ),
        body: TwoLaneRoad(),
    ),
    );
  }
}

class TwoLaneRoad extends StatefulWidget {
  @override
  _TwoLaneRoadState createState() => _TwoLaneRoadState();
}

class _TwoLaneRoadState extends State<TwoLaneRoad> with TickerProviderStateMixin {
  AnimationController? lane1Controller;
  AnimationController? lane2Controller;
  Animation<double>? lane1Animation;
  Animation<double>? lane2Animation;

  @override
  void initState() {
    super.initState();

    // Lane 1: Animation from bottom to top
    lane1Controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 4),
    );
    lane1Animation = Tween<double>(begin: 1.0, end: 0.0).animate(lane1Controller!)
      ..addListener(() {
        setState(() {});
      });
    lane1Controller!.repeat(reverse: false);

    // Lane 2: Animation from left to right
    lane2Controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 4),
    );
    lane2Animation = Tween<double>(begin: 0.0, end: 1.0).animate(lane2Controller!)
      ..addListener(() {
        setState(() {});
      });
    lane2Controller!.repeat(reverse: false);
  }

  @override
  void dispose() {
    lane1Controller?.dispose();
    lane2Controller?.dispose();
    super.dispose();
  }

  // Function to determine the color of the signal
  Color signalColor(bool isOpen) {
    return isOpen ? Colors.green : Colors.red;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          // Lane 1 (Vertical lane with left margin)
          Positioned(
            left: 50, // Left margin for Lane 1
            top: 100, // Adjust top position to your needs
            child: Column(
              children: [
                Container(
                  width: 60,
                  height: 650,
                  color: Colors.black, // Vertical road color
                  child: Center(
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text("Lane 1", style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                CircleAvatar(
                  radius: 20,
                  backgroundColor: signalColor(true), // Green if signal is open
                ),
              ],
            ),
          ),

          // Lane 2 (Horizontal lane at the top)
          Positioned(
            top: 150, // Align this with the top of the vertical lane
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width -53, // Full width minus margin
                  height: 70,
                  color: Colors.black, // Horizontal road color
                  child: Center(
                    child: Text("Lane 2", style: TextStyle(color: Colors.white)),
                  ),
                ),
                SizedBox(width: 10),
                CircleAvatar(
                  radius: 20,
                  backgroundColor: signalColor(false), // Red if signal is closed
                ),
              ],
            ),
          ),

          // Moving object in Lane 2 (Left to right animation)
          Positioned(
            left: 20 + lane2Animation!.value * (MediaQuery.of(context).size.width - 100), // Move horizontally
            top: 175, // Same top margin as Lane 2
            child: CircleAvatar(
              radius: 10,
              backgroundColor: Colors.yellowAccent,
            ),
          ),
        ],
      ),
    );
  }
}*/

/*import 'package:flutter/material.dart';
//import 'counter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Two Lane Road with Signals")),
          backgroundColor: Colors.cyanAccent,
        ),
        body: TwoLaneRoad(),
      ),
    );
  }
}

class TwoLaneRoad extends StatefulWidget {
  @override
  _TwoLaneRoadState createState() => _TwoLaneRoadState();
}

class _TwoLaneRoadState extends State<TwoLaneRoad> with TickerProviderStateMixin {
  AnimationController? lane1Controller;
  AnimationController? lane2Controller;
  Animation<double>? lane1Animation;
  Animation<double>? lane2Animation;

  @override
  void initState() {
    super.initState();

    // Lane 1: Animation from bottom to top
    lane1Controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 4),
    );
    lane1Animation = Tween<double>(begin: 1.0, end: 0.0).animate(lane1Controller!)
      ..addListener(() {
        setState(() {});
      });
    lane1Controller!.repeat(reverse: false);

    // Lane 2: Animation from left to right
    lane2Controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 4),
    );
    lane2Animation = Tween<double>(begin: 0.0, end: 1.0).animate(lane2Controller!)
      ..addListener(() {
        setState(() {});
      });
    lane2Controller!.repeat(reverse: false);
  }

  @override
  void dispose() {
    lane1Controller?.dispose();
    lane2Controller?.dispose();
    super.dispose();
  }

  // Function to determine the color of the signal
  Color signalColor(bool isOpen) {
    return isOpen ? Colors.green : Colors.red;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          // Lane 1 (Vertical lane with left margin)
          Positioned(
            left: 50, // Left margin for Lane 1
            top: 100, // Adjust top position to your needs
            child: Column(
              children: [
                Container(
                  width: 60,
                  height: 650,
                  color: Colors.black, // Vertical road color
                  child: Center(
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text("Lane 1", style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                CircleAvatar(
                  radius: 20,
                  backgroundColor: signalColor(true), // Green if signal is open
                ),
              ],
            ),
          ),

          // Lane 2 (Horizontal lane at the top)
          Positioned(
            top: 150, // Align this with the top of the vertical lane
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width -53, // Full width minus margin
                  height: 70,
                  color: Colors.black, // Horizontal road color
                  child: Center(
                    child: Text("Lane 2", style: TextStyle(color: Colors.white)),
                  ),
                ),
                SizedBox(width: 10),
                CircleAvatar(
                  radius: 20,
                  backgroundColor: signalColor(false), // Red if signal is closed
                ),
              ],
            ),
          ),

          // Moving object in Lane 1 (Bottom to top animation)
          Positioned(
            left: 70, // Same left margin as Lane 1
            top: 90 + lane1Animation!.value * 650, // Move the object vertically
            child: CircleAvatar(
              radius: 10,
              backgroundColor: Colors.yellowAccent,
            ),
          ),

          // Moving object in Lane 2 (Left to right animation)
          Positioned(
            left: 20 + lane2Animation!.value * (MediaQuery.of(context).size.width - 100), // Move horizontally
            top: 175, // Same top margin as Lane 2
            child: CircleAvatar(
              radius: 10,
              backgroundColor: Colors.yellowAccent,
            ),
          ),
        ],
      ),
    );
  }
}*/



import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(TrafficSignalApp());
}

class TrafficSignalApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TrafficSignalScreen(),
    );
  }
}

class TrafficSignalScreen extends StatefulWidget {
  @override
  _TrafficSignalScreenState createState() => _TrafficSignalScreenState();
}

class _TrafficSignalScreenState extends State<TrafficSignalScreen> with TickerProviderStateMixin {
  // Timer variables for lane signals
  String _currentLight1 = "Green";
  int _countdown1 = 10;
  Timer? _timer1;

  String _currentLight2 = "Red";
  int _countdown2 = 10;
  Timer? _timer2;

  // Animation controllers for moving objects
  AnimationController? lane1Controller;
  AnimationController? lane2Controller;
  Animation<double>? lane1Animation;
  Animation<double>? lane2Animation;

  @override
  void initState() {
    super.initState();

    // Start timers for traffic signals
    _startTimer1();
    _startTimer2();

    // Lane 1: Animation from bottom to top
    lane1Controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 4),
    );
    lane1Animation = Tween<double>(begin: 1.0, end: 0.0).animate(lane1Controller!)
      ..addListener(() {
        setState(() {});
      });
    lane1Controller!.repeat(reverse: false);

    // Lane 2: Animation from left to right
    lane2Controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 4),
    );
    lane2Animation = Tween<double>(begin: 0.0, end: 1.0).animate(lane2Controller!)
      ..addListener(() {
        setState(() {});
      });
    lane2Controller!.repeat(reverse: false);
  }

  // Timer 1 methods
  void _startTimer1() {
    _timer1?.cancel();
    _countdown1 = 10;
    _currentLight1 = "Green";

    _timer1 = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_countdown1 > 0) {
          _countdown1--;
        } else {
          _changeLight1();
        }
      });
    });
  }

  void _changeLight1() {
    if (_currentLight1 == "Green") {
      _currentLight1 = "Yellow";
      _countdown1 = 3;
    } else if (_currentLight1 == "Yellow") {
      _currentLight1 = "Red";
      _countdown1 = 10;
    } else if (_currentLight1 == "Red") {
      _currentLight1 = "Green";
      _countdown1 = 10;
    }
    setState(() {});
  }

  // Timer 2 methods
  void _startTimer2() {
    _timer2?.cancel();
    _countdown2 = 10;
    _currentLight2 = "Red";

    _timer2 = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_countdown2 > 0) {
          _countdown2--;
        } else {
          _changeLight2();
        }
      });
    });
  }

  void _changeLight2() {
    if (_currentLight2 == "Red") {
      _currentLight2 = "Yellow";
      _countdown2 = 3;
    } else if (_currentLight2 == "Yellow") {
      _currentLight2 = "Green";
      _countdown2 = 10;
    } else if (_currentLight2 == "Green") {
      _currentLight2 = "Red";
      _countdown2 = 10;
    }
    setState(() {});
  }

  @override
  void dispose() {
    _timer1?.cancel();
    _timer2?.cancel();
    lane1Controller?.dispose();
    lane2Controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Traffic Signal with Two Lanes')),
        backgroundColor: Colors.cyanAccent,
      ),
      body: Center(
        child: Stack(
          children: [
            // Lane 1 (Vertical lane with left margin)
            Positioned(
              left: 50,
              top: 100,
              child: Column(
                children: [
                  Container(
                    width: 60,
                    height: 650,
                    color: Colors.black,
                    child: Center(
                      child: RotatedBox(
                        quarterTurns: 3,
                        child: Text("Lane 1", style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  CircleAvatar(
                    radius: 20,
                    // Change color based on _currentLight2 for Lane 2
                    backgroundColor: _currentLight2 == "Yellow"
                        ? Colors.yellow
                        : (_currentLight1 == "Green" ? Colors.green : Colors.red),
                  ),
                ],
              ),
            ),

            // Lane 2 (Horizontal lane at the top)
            Positioned(
              top: 150,
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width - 53,
                    height: 70,
                    color: Colors.black,
                    child: Center(
                      child: Text("Lane 2", style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  SizedBox(width: 10),
                  CircleAvatar(
                    radius: 20,
                    // Change color based on _currentLight2 for Lane 2
                    backgroundColor: _currentLight2 == "Yellow"
                        ? Colors.yellow
                        : (_currentLight2 == "Green" ? Colors.green : Colors.red),
                  ),
                ],
              ),
            ),

            // Moving object in Lane 1 (Bottom to top animation)
            Positioned(
              left: 70,
              top: 90 + lane1Animation!.value * 650,
              child: CircleAvatar(
                radius: 10,
                backgroundColor: Colors.yellowAccent,
              ),
            ),

            // Moving object in Lane 2 (Left to right animation)
            Positioned(
              left: 20 + lane2Animation!.value * (MediaQuery.of(context).size.width - 100),
              top: 175,
              child: CircleAvatar(
                radius: 10,
                backgroundColor: Colors.yellowAccent,
              ),
            ),

            // Display for second traffic light
            Positioned(
              top: 220,
              left: 220,
              child: Text(
                'Lane-2 - $_currentLight2: $_countdown2',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),

            // Display for first traffic light
            Positioned(
              top: 720,
              left: 115,
              child: Transform.rotate(
                angle: -1.58, // Rotation angle in radians
                alignment: Alignment.topLeft, // Fixes rotation point
                child: Text(
                  'Lane-1 - $_currentLight1: $_countdown1',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}





