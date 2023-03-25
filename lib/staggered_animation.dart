import 'package:flutter/material.dart';

class MyStaggeredAnimation extends StatefulWidget {
  final String title;
  const MyStaggeredAnimation({required this.title, super.key});

  @override
  State<MyStaggeredAnimation> createState() => _MyStaggeredAnimationState();
}

class _MyStaggeredAnimationState extends State<MyStaggeredAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> heightAnimation;
  late Animation<double> widthAnimation;
  late Animation<double> opacityAnimation;
  late Animation<double> radiusAnimation;
  late Animation<Color?> colorAnimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 3,
      ),
    );
    animationController.addListener(() {
      // HERE WE CAN USE (..) CASCADE OPERATOR ALSO
      setState(() {});
    });
    animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        animationController.reverse();
      }
    });
    // Width Animation
    widthAnimation = Tween(begin: 100.0, end: 400.0).animate(
      CurvedAnimation(
        parent: animationController,
        curve: const Interval(0.0, 0.2),
      ),
    );
    // Height Animation
    heightAnimation = Tween(begin: 100.0, end: 400.0).animate(
      CurvedAnimation(
        parent: animationController,
        curve: const Interval(0.2, 0.4),
      ),
    );
    // Opacity Animation
    opacityAnimation = Tween(begin: 1.0, end: 0.0).animate(
      CurvedAnimation(
        parent: animationController,
        curve: const Interval(0.9, 1.0),
      ),
    );
    // Color Animation
    colorAnimation = ColorTween(
      begin: Colors.red,
      end: Colors.amber,
    )
        .chain(
          Tween(begin: 0.0, end: 1.0),
        )
        .animate(
          CurvedAnimation(
            parent: animationController,
            curve: const Interval(0.4, 0.6),
          ),
        );

    radiusAnimation = Tween(begin: 20.0, end: 100.0).animate(
      CurvedAnimation(
        parent: animationController,
        curve: const Interval(0.6, 0.8),
      ),
    );
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
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
                    'SEARCHING..............',
                  ),
                ),
              );
            },
            icon: const Icon(
              Icons.search,
              size: 32,
            ),
          ),
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text(
                    'DEVELOPER..............',
                  ),
                ),
              );
            },
            icon: const Icon(
              Icons.person,
              size: 32,
            ),
          ),
        ],
      ),
      body: myStaggeredAnimation(),
      drawer: myDrawer(),
      floatingActionButton: myFloatingActionButton(),
      bottomNavigationBar: myBottomNavigationBar(),
    );
  }

  Widget myStaggeredAnimation() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Opacity(
            opacity: opacityAnimation.value,
            child: Container(
              height: heightAnimation.value,
              width: widthAnimation.value,
              decoration: BoxDecoration(
                color: colorAnimation.value,
                borderRadius: BorderRadius.circular(
                  radiusAnimation.value,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        SizedBox(
          height: 60,
          width: 130,
          child: ElevatedButton(
            onPressed: () {
              animationController.forward();
            },
            style: ButtonStyle(
              shadowColor: MaterialStateProperty.all(Colors.brown),
              backgroundColor: MaterialStateProperty.all(colorAnimation.value),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(radiusAnimation.value),
                  side: BorderSide(
                    color: colorAnimation.value!,
                    width: 1.5,
                  ),
                ),
              ),
            ),
            child: const Text(
              'CLICK ON',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
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
          onPressed: () {},
          tooltip: 'Increment',
          child: const Icon(
            Icons.add,
            size: 32,
          ),
        ),
        FloatingActionButton(
          onPressed: () {},
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
