import 'package:flutter/material.dart';
import 'package:flutter_profile_app/screens/profile_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFeeeeee),
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text("My App"),
        centerTitle: true,
        elevation: 0,
      ),
      drawer: Drawer(
        // shape: RoundedRectangleBorder(borderRadius:
        // BorderRadius.circular(35)),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/manish1.png'),
                ),
                accountName: const Text('Manish Basnet'),
                accountEmail: const Text('mbasnet868@gmail.com'),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                ),
              ),
              getListTile(
                context,
                title: 'Home',
                icon: Icons.home_outlined,
              ),
              const SizedBox(
                height: 15,
              ),
              getListTile(context, title: 'Profile', icon: Icons.info_outlined,
                  function: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ProfilePage();
                    },
                  ),
                );
              }),
              const SizedBox(
                height: 15,
              ),
              const Spacer(),
              getListTile(
                context,
                title: 'logout',
                icon: Icons.logout_outlined,
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(16),
                ),
                color: Theme.of(context).primaryColor,
              ),
              padding: EdgeInsets.all(17),
              child: Column(
                children: <Widget>[
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/manish1.png'),
                    radius: 50,
                    backgroundColor: Colors.white,
                  ),
                  const Text(
                    'Manish Basnet',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    'Flutter Developer',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        '20',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        '43234',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            getInfoLayout(
              context,
              title: 'Contact me',
              icon: Icons.mail_outlined,
              text: 'mbasnet868gmail.com',
            ),
            getInfoLayout(context,
                icon: Icons.call_outlined, text: '+977-9485736476'),
            getInfoLayout(context,
                title: 'Follow Me',
                icon: Icons.language_outlined,
                text: 'www.manishbasnet.com.np'),
            getInfoLayout(context,
                icon: Icons.person_outlined, text: 'www.twitter/mbasnet07.com'),
          ],
        ),
      ),
    );
  }

  Widget getListTile(context,
      {required String title, required IconData icon, Function? function}) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        onTap: () {
          if (function != null) {
            function();
          }
        },
        selectedTileColor: Colors.grey.shade400,
        tileColor: Colors.grey.shade200,
        leading: Icon(icon),
        title: Text(title),
        trailing: const Icon(Icons.arrow_right_outlined),
      ),
    );
  }

  Widget getInfoLayout(
    context, {
    String? title,
    required IconData icon,
    required String text,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null)
          Container(
            color: Theme.of(context).primaryColor,
            padding: const EdgeInsets.all(17),
            width: 110,
            child: Text(
              title,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        if (title != null)
          const SizedBox(
            height: 10,
          ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    child: Icon(
                      icon,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    text,
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        if (title == null)
          const SizedBox(
            height: 10,
          )
      ],
    );
  }
}
