// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class LanguageScreen extends StatelessWidget {
  LanguageScreen({super.key});
  List<String> languages = ["English", "Spanish", "French", "German", "Chinese", "Japanese", "Italian", "Portuguese", "Russian", "Korean", "Arabic", "Dutch", "Swedish", "Norwegian", "Danish", "Finnish", "Polish", "Greek", "Turkish", "Hindi", "Bengali", "Punjabi", "Urdu", "Indonesian", "Malay", "Thai", "Vietnamese", "Czech", "Hungarian", "Romanian", "Slovak", "Slovenian", "Croatian", "Bulgarian", "Serbian", "Ukrainian", "Hebrew", "Persian", "Swahili", "Swiss German", "Welsh"];
  List languageFlags = [
    "🇺🇸",
    "🇪🇸",
    "🇫🇷",
    "🇩🇪",
    "🇨🇳",
    "🇯🇵",
    "🇮🇹",
    "🇵🇹",
    "🇷🇺",
    "🇰🇷",
    "🇸🇦",
    "🇳🇱",
    "🇸🇪",
    "🇳🇴",
    "🇩🇰",
    "🇫🇮",
    "🇵🇱",
    "🇬🇷",
    "🇹🇷",
    "🇮🇳",
    "🇧🇩",
    "🇮🇳",
    "🇵🇰",
    "🇮🇩",
    "🇲🇾",
    "🇹🇭",
    "🇻🇳",
    "🇨🇿",
    "🇭🇺",
    "🇷🇴",
    "🇸🇰",
    "🇸🇮",
    "🇭🇷",
    "🇧🇬",
    "🇷🇸",
    "🇺🇦",
    "🇮🇱",
    "🇮🇷",
    "🇰🇪",
    "🇨🇭",
    "🏴󠁧󠁢󠁷󠁬󠁳󠁿",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Language'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                content: const Text('This feature is not available yet!'),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('OK'),
                  ),
                ],
              ),
            );
          },
          leading: Text(languageFlags[index]),
          title: Text(languages[index]),
        ),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: languages.length,
      ),
    );
  }
}
