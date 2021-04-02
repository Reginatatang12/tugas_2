class Penjualan {
  int _id;
  String _name;
  String _keterangan;
  String _jumlah;
  String _tanggal;

  Penjualan(this._name, this._keterangan, this._jumlah, this._tanggal);
  Penjualan.formMap(Map<String, dynamic> map) {
    this._id = map['id'];
    this._name = map['Nama'].toString();
    this._keterangan = map['Keterangan'].toString();
    this._jumlah = map['Jumlah'].toString();
    this._tanggal = map['Tanggal'].toString();
  }
  int get id => _id;
  String get name => _name;
  String get keterangan => _keterangan;
  String get jumlah => _jumlah;
  String get tanggal => _tanggal;

  set name(String value) {
    _name = value;
  }

  set keterangan(String value) {
    _keterangan = value;
  }

  set jumlah(String value) {
    _jumlah = value;
  }

  set tanggal(String value) {
    _tanggal = value;
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['id'] = this._id;
    map['nama'] = name;
    map['keterangan'] = keterangan;
    map['jumlah'] = jumlah;
    map['tanggal'] = tanggal;
    return map;
  }
}
