import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController userEmailController = TextEditingController();
  final TextEditingController userPasswordController = TextEditingController();

  // Registro de usuário
  Future<void> registerUser(BuildContext context) async {
    try {
      final UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: userEmailController.text.trim(),
        password: userPasswordController.text.trim(),
      );
      showSnackBar(context, "Usuário registrado: ${userCredential.user!.email}");
    } catch (e) {
      showSnackBar(context, "Erro ao registrar: $e");
    }
  }

  // Login de usuário
  Future<void> loginUser(BuildContext context) async {
    try {
      final UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: userEmailController.text.trim(),
        password: userPasswordController.text.trim(),
      );
      showSnackBar(context, "Bem-vindo, ${userCredential.user!.email}");
    } catch (e) {
      showSnackBar(context, "Erro ao fazer login: $e");
    }
  }

  // Deslogar usuário
  Future<void> logoutUser(BuildContext context) async {
    await _auth.signOut();
    showSnackBar(context, "Usuário deslogado");
  }

  // Exibir mensagens na tela
  void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela de Login - Firebase'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [

               Container( // Conteiner Central
                height: 320, 
                width: 330, 
                margin: const EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.blue[100],
                  border: Border.all(
                    width: 2,
                    color: Colors.cyan[400]!,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround, 
                  children: [

                    // Campo de Email
                    Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 2, color: Colors.cyan[400]!),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: TextField(
                        controller: userEmailController,
                        decoration: const InputDecoration(
                          labelText: 'Email',
                          contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    
                    const SizedBox(height: 10),

                    // Campo de Senha
                    Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 2, color: Colors.cyan[400]!),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: TextField(
                        controller: userPasswordController,
                        decoration: const InputDecoration(
                          labelText: 'Senha',
                          contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                          border: InputBorder.none,
                        ),
                        obscureText: true, // Esconde a senha
                      ),
                    ),
                    const SizedBox(height: 24),

                    // Botão de Login
                    ElevatedButton(
                      onPressed: () => loginUser(context),
                      child: const Text('Login'),
                    ),

                    // Botão de Cadastro
                    ElevatedButton(
                      onPressed: () => registerUser(context),
                      child: const Text('Cadastrar Conta'),
                    ),
                    const SizedBox(height: 20),

                    // Botão de Logout
                    ElevatedButton(
                      onPressed: () => logoutUser(context),
                      child: const Text('Sair'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
