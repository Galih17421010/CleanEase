import 'package:flutter/material.dart';

class BookingScreen extends StatefulWidget {
  @override
  _BookingScreenState createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  String _selectedService = 'Daily Cleaning';
  DateTime _selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pemesanan Layanan'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Pilih Layanan:', style: TextStyle(fontSize: 18)),
            DropdownButton<String>(
              value: _selectedService,
              items: <String>[
                'Daily Cleaning',
                'Weekly Cleaning',
                'Deep Cleaning'
              ].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedService = newValue!;
                });
              },
            ),
            SizedBox(height: 20),
            Text('Pilih Tanggal:', style: TextStyle(fontSize: 18)),
            ElevatedButton(
              onPressed: () async {
                DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: _selectedDate,
                  firstDate: DateTime.now(),
                  lastDate: DateTime(2101),
                );
                if (pickedDate != null && pickedDate != _selectedDate)
                  setState(() {
                    _selectedDate = pickedDate;
                  });
              },
              child: Text('${_selectedDate.toLocal()}'.split(' ')[0]),
            ),
            // Tambahkan lebih banyak input untuk lokasi, pembersih, dll.
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Logika pemesanan
                print('Layanan: $_selectedService, Tanggal: $_selectedDate');
                // Setelah selesai, arahkan kembali ke halaman utama atau konfirmasi
                Navigator.pop(context);
              },
              child: Text('Konfirmasi Pemesanan'),
            ),
          ],
        ),
      ),
    );
  }
}
