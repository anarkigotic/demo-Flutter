import 'package:flutter/material.dart';
import 'models/contacsModels.dart';
import 'pages/conactsList.dart';

class Contact extends StatelessWidget {
  final List<ContactModel> contacs = [
    ContactModel(nombre: 'Juan david jerez', correo: 'anarkigotic@gmail.com'),
    ContactModel(nombre: 'Angela daniela jerez', correo: 'angelical@gmail.com'),
  ];

  @override
  Widget build(BuildContext context) {
    return new ContactList(contacs);
  }
}
