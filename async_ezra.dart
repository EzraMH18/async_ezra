void main() async {
  print("Daftar Lagu Favorit");
  print("===================");
  try {
    await order("Yummy-JustinB");
    print("\n Menambahkan Lagu Ke Playlist Favorit");
  } catch (e) {
    print(e);
  }

  print("\n=====================================\n");

  print("Tambahkan Lagu");
  try {
    await order("Baby-JustinB");
  } catch (e) {
    print(e);
  }
}

Future<void> order(String lagu) async {
  List<String> listLagu = ["Baby-JustinB", "Yummy-JustinB", "Ghost-JustinB"];
  print("\n $lagu Telah Ditambahkan Ke Dalam Playlist");
  if (listLagu.contains(lagu)) {
    return Future.delayed(Duration(seconds: 2), () {
      print("\n Menambahkan $lagu ");
    });
  } else {
    throw ("Lagu Belum Ditambahkan Ke Dalam Playlist Favorit");
  }
}
