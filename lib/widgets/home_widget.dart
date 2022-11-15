import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(height: 20.0,),
          //this renders the search input
          const Padding(
            padding: EdgeInsets.only(left: 25.0, right: 25.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search contacts ...",
                suffixIcon: Icon(Icons.search_rounded)
              ),
            ),
          ),

      const SizedBox(height: 10.0,),

      //this will render a list of contacts

      Expanded(
        child: ListView.builder(
          itemCount: 80,
          itemBuilder: (context, index){
            return ListTile(
              contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 5.0),
              leading: Image.asset("assets/images/add-user.png", height: 45.0,),
              title: const Text("Fego Ek", style: TextStyle(fontSize: 20.0),),
              subtitle: const Text("+234 806 575 5506"),
              trailing: const Icon(Icons.arrow_forward_ios),
              // trailing: DropdownButton(
              //   items: const [DropdownMenuItem(child: Text("View Contact"))
              //   ], 
              //   onChanged: (value){}),
      
            );
          }),
      )


        ],
      )
    );
  }
}