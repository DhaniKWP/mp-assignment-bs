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

double tarikSaldo(double saldo, double nominal) {
  if (nominal < 10000) {
    print("penarikan saldo minimal 10000");
    return saldo;
  }
  if (nominal > saldo) {
    print("saldo tidak mencukupi");
    return saldo;
  }
  saldo = saldo - nominal;
  print("Saldo anda menjadi");
  return saldo;
}

void main(){
  double saldo = 0;
  double nominal =10000;
  double totalSetoran = hitungTotalSetoran("plastik", 5);

  saldo = saldo + totalSetoran;

  print("Total setoran   : Rp$totalSetoran");
  print("Penarikan       : Rp$nominal");
  saldo = tarikSaldo(saldo, nominal);
  print("Saldo saat ini  : Rp$saldo");
}