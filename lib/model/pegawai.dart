import 'package:flutter_application_1/model/pegawai.dart';

class Pegawai {
  int? id;
  String nip;
  String namaPegawai;
  String tanggal_lahir;
  String nomor_telepon;
  String email;
  String password;

  Pegawai({
    this.id,
    required this.nip,
    required this.namaPegawai,
    required this.tanggal_lahir,
    required this.nomor_telepon,
    required this.email,
    required this.password,
  });
}
