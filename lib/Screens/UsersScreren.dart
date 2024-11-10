import 'package:addan_api/Providers/UserProvider.dart';
import 'package:addan_api/Widget/Custome.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UsersScreen extends StatelessWidget {
  const UsersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Users Page"),
      ),
      body: Center(
        child: Consumer<UsersProvider>(
          builder: (context, value, child) {
            var modelOfUsers = value.usersModel;
            if(modelOfUsers == null)
            {
              value.GetData();
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            else
            {
              return ListView.builder(
                itemBuilder: (context, index) {
                  var user = modelOfUsers[index];
                  String urlImage = user.picture['medium'];
                  String first = user.name['first'];
                  String last = user.name['last'];
                  String title = user.name['title'];
                  return CustomeWidget(urlImage: urlImage, first: first, last: last, title: title);
                },
                itemCount: modelOfUsers.length,
              );
            }
          },
        ),
      ),
    );
  }
}