import 'package:flutter/material.dart';

class Loginview extends StatelessWidget {
  const Loginview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Image.asset("img/images/logoto.png"),
            const SizedBox(
              height: 20,
            ),
            Flexible(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: '@ Email',
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: '*   Password',
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    ElevatedButton(
                      child: const Text("Login"),
                      onPressed: () {},
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text("Login with: "),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          child: const Text("Google"),
                          onPressed: () {},
                        ),
                        ElevatedButton(
                          child: const Text("Facebook"),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    TextButton(
                      child: const Text("Doesn't have an account yet?"),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}



      /* body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 50,
              ),
              Image.asset("img/images/logoto.png"),
              const SizedBox(
                height: 25,
              ),
              const TextField(
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '@ Email',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '*   Password',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(onPressed: () {}, child: const Text("Login")),
              const SizedBox(
                width: 10,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Login with:"),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: () {}, child: const Text("Google")),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {}, child: const Text("Facebook")),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text("Doesn't have an account yet?")),
            ],
          ),
        ),
        ),
      );
    }
  }
  */