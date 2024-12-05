part of '../page.dart';

class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget({
    super.key,
  });

  // Fungsi untuk mengambil data pengguna dari lokal
  Future<User> _fetchUser() async {
    final authData = await AuthLocalDatasource().getAuthData();
    return authData.user; // Mengambil objek pengguna dari model
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LogoutBloc, LogoutState>(
      listener: (context, state) {
        if (state is LogoutSuccess) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const LoginPage()),
          );
        }

        if (state is LogoutFailure) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.message)));
        }
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(right: 20.0, left: 20.0, top: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FutureBuilder<User>(
                future: _fetchUser(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  } else if (snapshot.hasError) {
                    return const Text(
                      'Error fetching user data',
                      style: TextStyle(color: Colors.black87),
                    );
                  } else if (!snapshot.hasData) {
                    return const Text(
                      'Hello, Guest!',
                      style: TextStyle(color: Colors.black87),
                    );
                  } else {
                    final user = snapshot.data!;
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hallo, ${user.name}!',
                          style: const TextStyle(
                              color: Colors.black87,
                              fontSize: 26,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          user.email, // Menampilkan email pengguna
                          style: const TextStyle(
                              color: Colors.black87,
                              fontSize: 16,
                              fontWeight: FontWeight.w200),
                        ),
                      ],
                    );
                  }
                },
              ),
              state is LogoutLoading
                  ? const CircularProgressIndicator()
                  : IconButton(
                onPressed: () {
                  context.read<LogoutBloc>().add(LogoutButtonPressed());
                },
                icon: const Icon(Icons.logout),
              ),
            ],
          ),
        );
      },
    );
  }
}
