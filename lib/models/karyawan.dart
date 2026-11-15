// Model data entitas Karyawan pada SmartKasir
class Karyawan {
  final int? id; // null saat staf baru belum disimpan
  final String namaKaryawan;
  final String pin; // String agar angka 0 di depan tidak hilang
  final String peran; // 'Kasir', 'Admin', atau 'Manajer'

  const Karyawan({
    this.id,
    required this.namaKaryawan,
    required this.pin,
    required this.peran,
  });

  // Dart object -> Map untuk SQLite
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nama_karyawan': namaKaryawan,
      'pin': pin,
      'peran': peran,
    };
  }

  // Map hasil query -> Dart object
  factory Karyawan.fromMap(Map<String, dynamic> map) {
    return Karyawan(
      id: map['id'] as int?,
      namaKaryawan: map['nama_karyawan'] as String,
      pin: map['pin'] as String,
      peran: map['peran'] as String,
    );
  }
}