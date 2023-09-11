import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              color: colors.secondary, borderRadius: BorderRadius.circular(20)),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Hola mundo 2', style: TextStyle(color: Colors.white)),
          ),
        ),
        const SizedBox(height: 5),
        _ImageBubble(),
        const SizedBox(height: 10)
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    print(size);

    return ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network(
          'https://lh6.googleusercontent.com/U2WKp4jn8iQWfzwq5vXE9kLZu_JC5LRfxl8QDYANPHfYhBQCOK9v4D7UIIbTIZNC4VURD_csWn2C0oUn_hLvgjPtQMy9AsrRbYCO0Q6cj8tPu75VvNtbQEeYTfqOZ9qtQTzUx_-9AppUkGNCnxpdmQ',
          width: size.width * 0.7,
          height: 150,
          fit: BoxFit.cover,
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) return child;
            return Container(
              width: size.width * 0.7,
              height: 150,
              padding: const EdgeInsets.symmetric( horizontal: 10, vertical: 5),
              child: const Text('Mi amor esta enviando un mensaje'),
            );
          },
        ));
  }
}
