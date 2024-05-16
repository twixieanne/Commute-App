import 'package:commute/jeep.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
void main() => runApp(NavigationBar(
      destinations: [],
    ));

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 235, 213, 172),
      appBar: AppBar(
        title: Text('Go Jeep'),
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: 37,
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: Color.fromARGB(255, 224, 165, 55),),
        bottomNavigationBar: NavigationBar(
            onDestinationSelected: (int index) {
              setState(() {
                currentPageIndex = index;
              });
            },
            indicatorColor: Colors.amber,
            selectedIndex: currentPageIndex,
            destinations: const <Widget>[
              NavigationDestination(
                selectedIcon: Icon(Icons.home),
                icon: Icon(Icons.home_outlined),
                label: 'Home',
              ),
              NavigationDestination(
                icon: Badge(
                  child: Icon(Icons.person),
                ),
                label: 'My Account',
              ),
            ]),
        body: <Widget>[
          Card(
            shadowColor: Colors.transparent,
            margin: const EdgeInsets.all(8.0),
            child: Center(
              child: FloatingActionButton.large(
                child: Icon(Icons.local_taxi_outlined),
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Jeep(),
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 224, 165, 55),
                      child: Text('AU',
                      style: TextStyle(
                        color: Colors.black87,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        fontSize: 40,
                      ),),
                      radius: 40,
                    ),
                    SizedBox(width: 25,),
                  Text('Anne Trixie Urbano',
                  style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w900,
                    fontSize: 18,
                  ),
                  )]
                ),
                SizedBox(
                  height: 60,
                  width: 10,
                  
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.person_2),
                    title: Text('Personal information'),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.money_rounded),
                    title: Text('Payment Methods'),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.settings),
                    title: Text('Settings'),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.help_center),
                    title: Text('Help Centre'),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.history),
                    title: Text('History'),
                    ),
                  ),
              ],
            ),
          ),
          ListView.builder(
              reverse: true,
              itemCount: 2,
              itemBuilder: (BuildContext context, int index) {
                if (index == 0) {
                  return Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      margin: const EdgeInsets.all(8.0),
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primary,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Text(
                        'Hello',
                        style: theme.textTheme.bodyLarge!
                            .copyWith(color: theme.colorScheme.onPrimary),
                      ),
                    ),
                  );
                }
                return Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: const EdgeInsets.all(8.0),
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Text(
                      'Hi!',
                      style: theme.textTheme.bodyLarge!
                          .copyWith(color: theme.colorScheme.onPrimary),
                    ),
                  ),
                );
              })
        ][currentPageIndex]);
  }
}
