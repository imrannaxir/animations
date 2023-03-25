import 'package:flutter/material.dart';

class MySlideTransition extends StatefulWidget {
  final String title;
  const MySlideTransition({required this.title, super.key});

  @override
  State<MySlideTransition> createState() => _MySlideTransitionState();
}

class _MySlideTransitionState extends State<MySlideTransition>
    with TickerProviderStateMixin {
  late Animation<Offset> slideAnimation;
  late AnimationController slideAnimationController;

  @override
  void initState() {
    super.initState();

    slideAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    );

    slideAnimation = Tween(
      begin: const Offset(-1, -1),
      end: const Offset(1, 1),
    ).animate(slideAnimationController.view);
  }

  // ignore: unused_field
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontStyle: FontStyle.italic,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text(
                    'F L U T T E R ...............',
                  ),
                ),
              );
            },
            icon: const Icon(
              Icons.person,
              size: 32,
            ),
          ),
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text(
                    'S E A R C H I N G ...............',
                  ),
                ),
              );
            },
            icon: const Icon(
              Icons.search,
              size: 32,
            ),
          ),
        ],
      ),
      body: mySlideTransition(),
      drawer: myDrawer(),
      floatingActionButton: myFloatingActionButton(),
      bottomNavigationBar: myBottomNavigationBar(),
    );
  }

  Widget mySlideTransition() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SlideTransition(
            position: slideAnimation,
            child: Container(
              height: 200,
              width: 200,
              color: Colors.brown,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 50,
            width: 100,
            child: ElevatedButton(
              onPressed: () {
                slideAnimationController.forward();
              },
              style: ButtonStyle(
                shadowColor: MaterialStateProperty.all(Colors.brown),
                backgroundColor: MaterialStateProperty.all(Colors.black),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      side: const BorderSide(
                        color: Colors.black,
                        width: 1.5,
                      )),
                ),
              ),
              child: const Text(
                'SHOW',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 50,
            width: 100,
            //    color: Colors.black,
            child: ElevatedButton(
              onPressed: () {
                slideAnimationController.reverse();
              },
              style: ButtonStyle(
                shadowColor: MaterialStateProperty.all(Colors.brown),
                backgroundColor: MaterialStateProperty.all(Colors.black),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                    side: const BorderSide(
                      color: Colors.black,
                      width: 1.5,
                    ),
                  ),
                ),
              ),
              // style: ElevatedButton.styleFrom(
              //   elevation: 50,
              //   shadowColor: Colors.blue,
              // ),
              child: const Text(
                'HIDE',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget myDrawer() {
    return Drawer(
      child: Column(
        children: [
          Container(
            color: Colors.black,
            child: const DrawerHeader(
              child: Center(
                child: Text(
                  'Drawer Header',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 30,
            ),
            child: ListTile(
              leading: CircleAvatar(
                //  backgroundColor: Colors.orange,
                radius: 20,
                foregroundImage: AssetImage(
                  'assets/images/view.jpg',
                ),
                // child: Icon(Icons.person),
              ),
              title: Text(
                'Name : ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Text(
                'Imran Nazeer',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 30,
            ),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.red,
                radius: 20,
                child: Icon(Icons.email),
              ),
              title: Text(
                'imrannazeer2015804@gmail.com',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Text(
                '',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 30,
            ),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 20,
                // backgroundImage: AssetImage(
                //   'assets/images/img.jpg',
                // ),
                child: Icon(Icons.password),
              ),
              title: Text(
                'Password : ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Text(
                'jagu@804',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget myFloatingActionButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: const Icon(
            Icons.add,
            size: 32,
          ),
        ),
        FloatingActionButton(
          onPressed: _decrementCounter,
          tooltip: 'Decrement',
          child: const Icon(
            Icons.remove,
            size: 32,
          ),
        ),
      ],
    );
  }

  Widget myBottomNavigationBar() {
    return SizedBox(
      height: 70,
      child: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.camera,
              size: 32,
            ),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.chat,
              size: 32,
            ),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.group,
              size: 32,
            ),
            label: 'Groups',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.stacked_bar_chart,
              size: 32,
            ),
            label: 'Status',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.call,
              size: 32,
            ),
            label: 'Calls',
          ),
        ],
      ),
    );
  }
}
