import 'package:flutter/material.dart';

class JoinOurCommunity extends StatefulWidget {
  const JoinOurCommunity({super.key});

  @override
  State<JoinOurCommunity> createState() => _JoinOurCommunityState();
}

class _JoinOurCommunityState extends State<JoinOurCommunity> {
  final TextEditingController controllerEmail = TextEditingController();

  @override
  void dispose() {
    controllerEmail.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 700),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Join Our Community', textAlign: TextAlign.center),
            const SizedBox(height: 12),
            const Text(
              'Subscribe to receive curated insights from our journal, '
              'invitations to exclusive events,\n'
              'and updates on our conservation initiatives.',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: controllerEmail,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      hintText: 'Enter your email',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Subscribe'),
                ),
              ],
            ),
            const SizedBox(height: 12),
            const Text(
              'By subscribing, you agree to our Privacy Policy '
              'and consent to receive updates from Eden Reverie.',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
