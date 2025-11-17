import 'package:flutter/material.dart';

void main() {
  runApp(const TextExamplesApp());
}

class TextExamplesApp extends StatelessWidget {
  const TextExamplesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Text Widget Examples")),
        body: const SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // 1. Basic Text
              Text("1. Basic Text"),

              SizedBox(height: 10),
              Text("Hello Flutter"),

              Divider(),

              // 2. Text with Style
              Text("2. Text with Style:"),
              SizedBox(height: 10),
              Text(
                "Styled Text Example",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),

              Divider(),

              // 3. TextAlign
              Text("3. Text Alignment: center"),
              SizedBox(height: 10),
              Text(
                "This text is centered",
                textAlign: TextAlign.center,
              ),

              Divider(),

              // 4. MaxLines & Overflow
              Text("4. MaxLines & Overflow:"),
              SizedBox(height: 10),
              Text(
                "This is a very long text that will overflow after one line",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),

              Divider(),

              // 5. TextScaleFactor
              Text("5. Text Scale Factor (Zoom Text):"),
              SizedBox(height: 10),
              Text(
                "Scaled Text 1.5x",
                textScaleFactor: 1.5,
              ),

              Divider(),

              // 6. Soft Wrap
              Text("6. SoftWrap = false:"),
              SizedBox(height: 10),
              Text(
                "This text will not wrap and may overflow",
                softWrap: false,
              ),

              Divider(),

              // 7. Shadowed Text
              Text("7. Text with Shadow:"),
              SizedBox(height: 10),
              Text(
                "Shadow Text",
                style: TextStyle(
                  fontSize: 24,
                  shadows: [
                    Shadow(
                      blurRadius: 5,
                      offset: Offset(3, 3),
                      color: Colors.black,
                    ),
                  ],
                ),
              ),

              Divider(),

              // 8. Gradient Text
              Text("8. Gradient Text (using ShaderMask):"),
              SizedBox(height: 10),
              GradientText(),

              Divider(),

              // 9. Selectable Text
              Text("9. Selectable Text:"),
              SizedBox(height: 10),
              SelectableText(
                "You can copy this text!",
                style: TextStyle(fontSize: 18),
              ),

              Divider(),

              // 10. RichText
              Text("10. RichText (Multiple Styles):"),
              SizedBox(height: 10),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Hello ",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    TextSpan(
                      text: "Flutter!",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),

              Divider(),

              // 11. Stroke (Outlined) Text
              Text("11. Outlined (Stroke) Text:"),
              SizedBox(height: 10),
              OutlinedText(),
            ],
          ),
        ),
      ),
    );
  }
}

// Widget: Gradient Text
class GradientText extends StatelessWidget {
  const GradientText({super.key});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) {
        return const LinearGradient(
          colors: [Colors.blue, Colors.purple],
        ).createShader(bounds);
      },
      child: const Text(
        "Gradient Text",
        style: TextStyle(
          fontSize: 30,
          color: Colors.white,
        ),
      ),
    );
  }
}

// Widget: Outlined Text
class OutlinedText extends StatelessWidget {
  const OutlinedText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        Text(
          "Outlined Text",
          style: TextStyle(
            fontSize: 30,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 2
              ..color = Colors.black,
          ),
        ),
        Text(
          "Outlined Text",
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
