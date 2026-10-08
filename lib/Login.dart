import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // Membuat controller untuk menangani input dari TextField
  TextEditingController inputEmailsekolah = TextEditingController();
  TextEditingController inputpin6digit = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Menggunakan Scaffold untuk membuat struktur dasar halaman
    return Scaffold(
      // Menambahkan AppBar dengan judul kosong dan warna latar belakang biru
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Kendaraanku'),
        backgroundColor: const Color(0xFF578EF5),
      ),
      backgroundColor: const Color(0xFFF8FAFC),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            // Menambahkan properti mainAxisAlignment untuk memusatkan konten secara vertikal
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Menambahkan gambar di atas teks "Task Management"
              Center(
                child: Image(
                  image: AssetImage('assets/kd_app_icon_512.png'),
                  width: 200,
                  height: 200,
                ),
              ),
              // Menambahkan teks "Task Management" di bawah gambar
              const Text(
                'Kendaraan',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'serif',
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 243, 1, 1),
                ),
              ),
              // Menambahkan teks "Admin Login" di bawah teks "Task Management"
              const Text(
                'Admin Login',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'serif',
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              // Menambahkan jarak antara teks dan TextField
              const SizedBox(height: 20),
              SizedBox(
                width: 300,
                child: TextField(
                  controller: inputEmailsekolah,
                  decoration: InputDecoration(
                    labelText: 'Username',
                    fillColor: const Color(0xFFF2F7A0),
                    filled: true,
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                    ),
                  ),
                ),
              ),
              // Menambahkan jarak antara TextField dan tombol
              const SizedBox(height: 16),
              SizedBox(
                width: 300,
                child: TextField(
                  controller: inputpin6digit,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    fillColor: const Color(0xFFF2F7A0),
                    filled: true,
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Mengambil nilai dari TextField dan menghapus spasi di awal dan akhir
                  final username = inputEmailsekolah.text.trim();
                  final password = inputpin6digit.text.trim();

                  // Validasi input: pastikan username dan password tidak kosong
                  if (username.isEmpty || password.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Username dan password harus diisi!'),
                      ),
                    );
                    return;
                  }

                  // Lakukan proses login di sini (misalnya, memeriksa username dan password)
                  print('Username: $username, Password: $password');
                  // Jika login berhasil, navigasikan ke halaman berikutnya
                  Navigator.pushReplacementNamed(context, '/home');
                },
                // Menambahkan teks "Masuk" pada tombol
                child: const Text('Masuk'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
