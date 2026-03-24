import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:messengging_app/widgets/MessagePage/message_page.dart';
//import 'message_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "m e s s a g e s",
                      style: GoogleFonts.fredoka(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF6E9FB7),
                      ),
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.search,
                          color: Color(0xFF6E9FB7),
                          size: 28,
                        ),
                        SizedBox(width: 15),
                        Icon(
                          Icons.group,
                          color: Color(0xFF6E9FB7),
                          size: 28,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: const Color(0xFFAFC6D3),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "search message",
                      hintStyle: GoogleFonts.fredoka(
                        color: Colors.white70,
                      ),
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Colors.white70,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              TabBar(
                indicatorColor: const Color(0xFF6E9FB7),
                labelColor: const Color(0xFF6E9FB7),
                unselectedLabelColor: Colors.grey,
                labelStyle: GoogleFonts.fredoka(
                  fontWeight: FontWeight.bold,
                ),
                tabs: const [
                  Tab(text: "message"),
                  Tab(text: "groups"),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    ListView(
                      children: [
                        chatTile(
                          "roinuj plaza",
                          "hiiiiiiiiiiii..............",
                          "69",
                          false,
                        ),
                        chatTile(
                          "Lang lang",
                          "you: heloooo.........",
                          "",
                          true,
                        ),
                      ],
                    ),
                    Center(
                      child: Text(
                        "No Groups Yet",
                        style: GoogleFonts.fredoka(),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget chatTile(String name, String message, String count, bool image) {
    return ListTile(
      onTap: () {
        /// NAVIGATE TO MESSAGE PAGE
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MessagePage(name: name),
          ),
        );
      },
      leading: CircleAvatar(
        radius: 25,
        backgroundColor: Colors.grey.shade300,
        backgroundImage:
            image ? const AssetImage("assets/images/ampol.jpg") : null,
        child: image ? null : const Icon(Icons.person, color: Colors.grey),
      ),
      title: Text(
        name,
        style: GoogleFonts.fredoka(
          fontWeight: FontWeight.bold,
          color: const Color(0xFF6E9FB7),
        ),
      ),
      subtitle: Text(
        message,
        style: GoogleFonts.fredoka(
          color: Colors.grey,
        ),
      ),
      trailing: count.isEmpty
          ? null
          : Container(
              padding: const EdgeInsets.all(6),
              decoration: const BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              child: Text(
                count,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ),
    );
  }
}
