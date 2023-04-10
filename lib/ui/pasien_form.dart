import 'package:flutter/material.dart';

class PasienForm extends StatefulWidget {
  const PasienForm({Key? key}) : super(key: key);
  _PasienFormState createState() => _PasienFormState();
}

class _PasienFormState extends State<PasienForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tambah Pegawai")),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextField(
                  decoration: const InputDecoration(labelText: "Nama Pasien")),
              SizedBox(height: 10),
              TextField(
                  decoration:
                      const InputDecoration(labelText: "Tanggal Lahir")),
              SizedBox(height: 10),
              TextField(
                  decoration:
                      const InputDecoration(labelText: "Nomor Telepon")),
              SizedBox(height: 10),
              TextField(decoration: const InputDecoration(labelText: "Alamat")),
              SizedBox(height: 10),
              ElevatedButton(onPressed: () {}, child: const Text("Simpan"))
            ],
          ),
        ),
      ),
    );
  }
}
