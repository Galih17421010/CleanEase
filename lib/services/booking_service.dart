import 'package:clean_ease/models/booking.dart';

class BookingService {
  Future<void> createBooking(Booking booking) async {
    // Koneksi ke API atau database lokal untuk menyimpan pemesanan
    print(
        'Pemesanan dibuat untuk layanan ${booking.service} pada tanggal ${booking.date}');
  }
}
