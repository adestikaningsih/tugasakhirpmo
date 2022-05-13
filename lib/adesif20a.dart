import 'dart:io';
void main(List<String> arguments) {
  String carabeli,cobalagi,kodebarang;
  while (true) {
    stdout.write("Kode Barang : ");
    kodebarang = stdin.readLineSync().toString();
    stdout.write("Jumlah Barang yang dibeli : ");
    var jumlahbarang = stdin.readLineSync();
    stdout.write("Bayar secara tunai [T/K] : ");
    carabeli = stdin.readLineSync().toString();

    var jumlahInt = int.parse('$jumlahbarang');
    var namabarang;
    int hargabarang = 0;

    if (kodebarang.toUpperCase() == "SPT" || kodebarang.toLowerCase() == 'spt') {
      namabarang = "Sepatu";
      hargabarang = 200000;
    } else if (kodebarang.toUpperCase() == "SND" || kodebarang.toLowerCase() == "snd") {
      namabarang = "Sandal";
      hargabarang = 100000;
    } else if (kodebarang.toUpperCase() == "TST" || kodebarang.toLowerCase() == "tst") {
      namabarang = "T-Shirt";
      hargabarang = 150000;
    } else if (kodebarang.toUpperCase() == "TOP" || kodebarang.toLowerCase() == "top") {
      namabarang = "Topi";
      hargabarang = 50000;
    } else {
      namabarang = "-";
      hargabarang = 0;
    }
    int totalharga=hargabarang*jumlahInt;
    double diskon =0.0;
    double totalbayar = 0.0;
    if(carabeli.toUpperCase()=="T"){
      diskon=10/100*totalharga;
    } else{
      diskon=0;
    }
    totalbayar=totalharga-diskon;
    print("============= Nota ================");
    print("Nama Barang : $namabarang \nHarga Barang : Rp $hargabarang");
    print("Total Harga : Rp "+totalharga.toString());
    print("Diskon : Rp "+diskon.toString());
    print("Total Bayar : Rp "+totalbayar.toString());
    print("");
    stdout.write("Apakah akan mencoba lagi [Y/T] : ");
    cobalagi = stdin.readLineSync().toString();
    if(cobalagi!="Y" && cobalagi!="y"){
      print("Terima kasih sudah membeli");
      break;
    }
  }
}