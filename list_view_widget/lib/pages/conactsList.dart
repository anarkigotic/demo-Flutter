import 'package:flutter/material.dart';
import '../models/contacsModels.dart';
import './contactItem.dart';

class ContactList extends StatelessWidget {
  final List<ContactModel> contact;
  ContactList(this.contact);

  List<ContactItem> conactsItems(){
    return contact.map((cont)=> new ContactItem(cont)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: conactsItems(),
    );
  }
}
