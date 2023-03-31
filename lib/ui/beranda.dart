import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/beranda.dart';
import '../model/pegawai.dart';
import '../model/pasien.dart';
import 'poli_page.dart';
import 'pegawai_detail.dart';
import 'pasien_detail.dart';

class Beranda extends StatefulWidget {
  const Beranda({super.key});

  @override
  State<Beranda> createState() => _BerandaPageState();
}

class _BerandaPageState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Beranda")),
      body: ListView(
        children: [
          GestureDetector(
            child: Card(
              child: ListTile(
                title: const Text("Data Poli"),
              ),
            ),
            onTap: () {
              Beranda dataPoli;
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => PoliPage()));
            },
          ),
          GestureDetector(
            child: Card(
              child: ListTile(
                title: const Text("Data Pegawai"),
              ),
            ),
            onTap: () {
              Pegawai datapegawai = new Pegawai(
                  namaPegawai: "Hasan Najib",
                  nip: "12210820",
                  tanggal_lahir: "1 February 2003",
                  nomor_telepon: "085842106413",
                  email: "mashasanr@gmail.com",
                  password: "1234567");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          PegawaiDetail(pegawai: datapegawai)));
            },
          ),
          GestureDetector(
            child: Card(
              child: ListTile(
                title: const Text("Pasiaen"),
              ),
            ),
            onTap: () {
              Pasien datapasien = new Pasien(
                  nama: "July",
                  nomor_rm: "12210820",
                  tanggal_lahir: "1 February 2003",
                  nomor_telepon: "085842106413",
                  alamat: "tawangsari");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PasienDetail(pasien: datapasien)));
            },
          )
        ],
      ),
    );
  }
}
