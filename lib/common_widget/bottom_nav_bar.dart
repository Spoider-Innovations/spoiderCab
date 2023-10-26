import 'package:flutter/material.dart';
import '../view/history_screen/screen/history_screen.dart';
import '../view/home_screen/screen/home_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

int currentIndex = 0;
final screens = [
  const HomeScreen(),
  const ChatScreen()
  
];

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => setState(
          () => currentIndex = index,
        ),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        // backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Colors.blue,
            ),
            label: '',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.local_convenience_store),
          //   label: '',
          // ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.note_add_outlined),
          //   label: '',
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat,  color: Colors.amber,),

            label: '',
          ),
        ],
      ),
    );
  }
}
