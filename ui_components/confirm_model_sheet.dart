import 'package:flutter/material.dart';

class ConfirmBottomModelSheet extends StatefulWidget {
  String? title;
  String? message;
  List? action;
  final ValueChanged<bool>? onConfirmChanged;
  ConfirmBottomModelSheet({Key? key, this.title, this.message, this.action, this.onConfirmChanged}) : super(key: key);

  @override
  _ConfirmBottomModelSheetState createState() => _ConfirmBottomModelSheetState();
}

class _ConfirmBottomModelSheetState extends State<ConfirmBottomModelSheet> {

  @override
  Widget build(BuildContext context) {

    return Wrap(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical:15.0, horizontal: 15),
                child: Text("${widget.title}", style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical:15.0, horizontal: 15),
                child: Text("${widget.message}"),
              ),
              const Divider(),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: OutlinedButton(
                        onPressed: (){
                          widget.onConfirmChanged!(false);
                          Navigator.pop(context);
                        },
                        child: Text(widget.action![1]),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child:Center(
                      child: ElevatedButton(
                        onPressed: (){
                          widget.onConfirmChanged!(true);
                          Navigator.pop(context);
                        },
                        child: Text(widget.action![0]),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
            ],
          ),
        ),
      ],
    );
  }
}