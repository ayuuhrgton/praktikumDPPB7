import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: const Text('Info Transit Kota Bandung'),
          backgroundColor: Colors.blueGrey[900],
          foregroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              buildHeaderCard(),
              const SizedBox(height: 16),
              buildStatusBar(),
              const SizedBox(height: 16),
              buildArmadaGrid(),
              const SizedBox(height: 16),
              buildFotoBannerStack(),
            ],
          ),
        ),
      ),
    ),
  );
}

// Soal 1
Widget buildHeaderCard() {
  return Container(
    width: double.infinity,
  
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
    
      borderRadius: BorderRadius.circular(14),
     
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Colors.blue.shade900, Colors.blue.shade600],
      ),
   
      boxShadow: [
        BoxShadow(
          color: Colors.black26,
          blurRadius: 6,
          offset: Offset(0, 3),
        ),
      ],
    ),
   
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(Icons.directions_bus, color: Colors.white, size: 32),
        SizedBox(width: 12),
        Text(
          'Terminal Kota Bandung',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ],
    ),
  );
}
//Container digunakan sebagai kartu terminal. padding memberi jarak isi dari tepi kartu, 
//BoxDecoration mengatur sudut membulat, gradasi biru, dan bayangan. 
//Row menyusun ikon bus dan nama terminal secara berdampingan.

// Soal 2
Widget buildStatusBar() {
  return Container(
    padding: const EdgeInsets.all(12),
   
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
      border: Border.all(color: Colors.grey.shade300),
    ),
    child: Row(
      children: [
        const Icon(Icons.access_time, color: Colors.orange),
        const SizedBox(width: 8),
        const Text('Operasional: 05.00 - 23.00'),
       
        const Spacer(),
        
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: Colors.green.shade100,
            borderRadius: BorderRadius.circular(6),
          ),
          
          child: Text(
            'LANCAR',
            style: TextStyle(color: Colors.green.shade900),
          ),
        ),
      ],
    ),
  );
}
//Container membentuk bar status dengan latar putih dan garis tepi. 
//Row menyusun ikon jam, teks operasional, dan status layanan. Spacer mendorong label “LANCAR” ke sisi kanan.

// Soal 3
Widget buildArmadaGrid() {
  return Row(
    children: [
     
      Expanded(
        flex: 3,
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.teal.shade50,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            children: [
             
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.directions_bus, color: Colors.teal),
                  Text(
                    '60% KAPASITAS',
                    style: TextStyle(fontSize: 9, color: Colors.teal),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Text(
                'Bus Utama',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),

      SizedBox(width: 12),

      Expanded(
        flex: 2,
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.indigo.shade50,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.tram, color: Colors.indigo),
                  Text(
                    '40% KAPASITAS',
                    style: TextStyle(fontSize: 9, color: Colors.indigo),
                  ),
                ],
              ),
             
              SizedBox(height: 8),
              Text(
                'LRT Feeder',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
//Row menyusun kartu Bus Utama dan LRT Feeder secara berdampingan. 
//Expanded membagi lebar kartu dengan perbandingan flex 3:2. Di dalam tiap kartu, Column menyusun ikon, persentase kapasitas, dan nama armada.

// Soal 4
Widget buildFotoBannerStack() {
 
  return Stack(
    clipBehavior: Clip.none,
    children: [
      Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 6,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           
            ClipRRect(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(12),
              ),
            
              child: Image.asset(
               'assets/images/kereta-api.jpg',
                height: 130,
                width: double.infinity,
                fit: BoxFit.cover,
              
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    height: 130,
                    color: Colors.blueGrey[200],
                    child: Center(
                      child: Icon(
                        Icons.image,
                        size: 48,
                        color: Colors.blueGrey,
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  Icon(
                    Icons.info_outline,
                    size: 18,
                    color: Colors.blueGrey,
                  ),
                  SizedBox(width: 8),
                 
                  Expanded(
                    child: Text(
                      'Pemantauan kamera telemetri dan CCTV halte cerdas beroperasi 24 jam untuk keselamatan publik.',
                      style: TextStyle(
                        fontSize: 11,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      Positioned(
        top: 10,
        right: 10,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: Colors.red[700],
            borderRadius: BorderRadius.circular(6),
          ),
          child: Text(
            'LIVE CCTV',
            style: TextStyle(
              color: Colors.white,
              fontSize: 9,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    ],
  );
}
//Stack menumpuk label “LIVE CCTV” di atas kartu foto, sementara Positioned menentukan posisi label di pojok kanan atas. 
//Image.asset memuat gambar dari aset; errorBuilder menampilkan ikon pengganti jika gambar gagal dimuat. 
//ClipRRect membulatkan sudut atas gambar.
