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

double hitungTotalSetoran(String kategori, double kg){
  return tentukanHargaKg(kategori) * kg;
}

void main(){
  double saldo = 0;

  saldo = saldo + hitungTotalSetoran("plastik", 6);

  print(saldo);
}