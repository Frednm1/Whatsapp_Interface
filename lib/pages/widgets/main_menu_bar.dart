import 'package:flutter/material.dart';

class MainMenuBar extends StatelessWidget {
  const MainMenuBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7),
      color: const Color.fromRGBO(18, 140, 126, 1),
      height: 40,
      child: Row(
        children: [
          Container(
            child: const Icon(
              Icons.camera_alt,
              color: Color.fromRGBO(255, 255, 255, 0.8),
            ),
          ),
          Flexible(
            flex: 5,
            fit: FlexFit.tight,
            child: Container(
              child: const Center(
                child: Text(
                  'Conversas',
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 0.8),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Flexible(
            flex: 3,
            fit: FlexFit.tight,
            child: Container(
              child: const Center(
                child: Text(
                  'Status',
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 0.8),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Flexible(
            flex: 4,
            fit: FlexFit.tight,
            child: Container(
              child: const Center(
                child: Text(
                  'Chamadas',
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 0.8),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
