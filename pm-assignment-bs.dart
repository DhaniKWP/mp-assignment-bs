double tentukanHarga(String kategori) {
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
  return tentukanHarga(kategori) * kg;
}

void main(){
  print(hitungTotalSetoran("plastik",4));
}