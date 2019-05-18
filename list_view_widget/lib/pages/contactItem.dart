import 'package:flutter/material.dart';
import '../models/contacsModels.dart';

class ContactItem extends StatelessWidget {
  final ContactModel contact;
  
  ContactItem(this.contact);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new ListTile(
        leading: new CircleAvatar(
          child: new Text(contact.nombre[0]),
        ),
        title: Text(contact.nombre),
        subtitle: Text(contact.correo),
      ),
    );
  }
}