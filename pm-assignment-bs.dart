// menentukan harga per kg setiap kategori sampahnya
double tentukanHargaKg(String kategori) {
  if (kategori == "plastik") {
    return 5000;
  }
  if (kategori == "logam") {
    return 10000;
  }
  if (kategori == "kertas") {
    return 5000;
  }
  return 0;
}

// perhitungan total setoran berdasarkan harga per kg dan jumlah berat sampah
double hitungTotalSetoran(String kategori, double kg){
  return tentukanHargaKg(kategori) * kg;
}

// validasi business rule untuk penarikan saldo
double tarikSaldo(double saldo, double nominalPenarikan) {
  if (nominalPenarikan < 10000) {
    print("penarikan saldo minimal 10000");
    return saldo;
  }
  if (nominalPenarikan > saldo) {
    print("saldo tidak mencukupi");
    return saldo;
  }
  saldo = saldo - nominalPenarikan;
  print("Saldo anda menjadi");
  return saldo;
}

void main(){
  double saldo = 0;
  double nominalPenarikan =34000;
  double totalSetoran = hitungTotalSetoran("logam", 5.2);

  saldo = saldo + totalSetoran;

  print("Total setoran   : Rp$totalSetoran");
  print("Penarikan       : Rp$nominalPenarikan");
  saldo = tarikSaldo(saldo, nominalPenarikan);
  print("Saldo saat ini  : Rp$saldo");
}