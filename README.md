## Dokumen Analisis BANK SAMPAHHH

### 1. Problem Statement

Plastik, kertas, dan logam memiliki harga/kg yang berbeda sehingga nilai setoran nasabah dihitung berdasarkan kategorinya. Nasabah hanya dapat melakukan penarikan jika memenuhi batas minimal Rp10.000 dan saldo setelah penarikan tidak boleh menjadi negatif.

---

### 2. Actor

**Nasabah**

Nasabah merupakan pihak yang berinteraksi langsung dengan sistem untuk melakukan penyetoran sampah dan penarikan saldo.

---

### 3. Input & Output

#### Input

1. Kategori sampah
2. Berat sampah (kg)
3. Nominal penarikan saldo

#### Output

1. Total nilai setoran sampah
2. Saldo nasabah
3. Status penarikan saldo

   * Penarikan berhasil
   * Penarikan ditolak karena nominal penarikan kurang dari Rp10.000
   * Penarikan ditolak karena saldo tidak mencukupi

---

### 4. Functional Requirement

| Kode  | Functional Requirement                                                            |
| ----- | --------------------------------------------------------------------------------- |
| FR-01 | Sistem dapat menentukan harga per kg berdasarkan kategori sampah.                 |
| FR-02 | Sistem dapat menghitung total nilai sampah berdasarkan kategori dan berat sampah. |
| FR-03 | Sistem dapat menambahkan hasil setoran ke saldo nasabah.                          |
| FR-04 | Sistem dapat memproses permintaan penarikan saldo nasabah.                        |
| FR-05 | Sistem dapat melakukan validasi sebelum memproses penarikan saldo.                |
| FR-06 | Sistem dapat menampilkan hasil atau status dari proses penarikan.                 |

---

### 5. Business Rules

| Kode  | Business Rule                                                                         |
| ----- | ------------------------------------------------------------------------------------- |
| BR-01 | Saldo nasabah tidak boleh menjadi minus.                                              |
| BR-02 | Penarikan saldo memiliki nominal minimal sebesar Rp10.000.                            |
| BR-03 | Harga sampah per kg berbeda berdasarkan kategori sampah (plastik, kertas, dan logam). |

---

### 6. Decomposition

```text
bankSampah
│
├── setoranSampah
│   ├── kategoriSampah
│   ├── beratSampah
│   ├── hargaPerKg
│   ├── hitungTotalSetoran
│   └── menambahkanSaldo
│
├── penarikanSaldo
│   ├── nominalPenarikan
│   ├── validasiMinimalPenarikan
│   ├── validasiSaldo
│   ├── mengurangiSaldo
│   └── tampilkanHasilPenarikan
│
└── tampilkanSaldo
```

---

### 7. Pattern Recognition

Dalam sistem Bank Sampah terdapat beberapa pola:

* **Penentuan harga berdasarkan kategori**
  Setiap kategori sampah memiliki harga per kg yang berbeda sehingga sistem perlu menentukan harga berdasarkan kategori yang dipilih nasabah.

* **Perhitungan nilai setoran**
  Setiap setoran dihitung berdasarkan harga per kg dan berat sampah yang disetor.

* **Pengecekan kondisi**
  Setiap kali nasabah melakukan penarikan, sistem mengecek apakah nominal penarikan memenuhi batas minimal dan saldo nasabah mencukupi.

* **Saldo bertambah dan berkurang**
  Setiap setoran berhasil, saldo nasabah bertambah berdasarkan total nilai sampah. Setiap penarikan berhasil, saldo nasabah berkurang sesuai nominal penarikan.

---

### 8. Abstraction

```text
bankSampah
│
├── kategoriSampah
├── beratSampah
├── hargaPerKg
├── totalSetoran
├── saldo
└── nominalPenarikan
```

Data utama yang digunakan dalam sistem:

* **Kategori sampah** → menentukan harga per kg.
* **Berat sampah** → jumlah sampah yang disetorkan.
* **Harga per kg** → nilai sampah berdasarkan kategorinya.
* **Total setoran** → hasil perhitungan nilai sampah.
* **Saldo** → jumlah uang yang dimiliki nasabah.
* **Nominal penarikan** → jumlah saldo yang ingin ditarik.

Kategori sampah:

```text
KategoriSampah
├── plastik
├── kertas
└── logam
```

---
