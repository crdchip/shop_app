import 'package:flutter/material.dart';
import 'package:shop_app/pages/profile/view/profile_user.dart';

class ListViewTileButton extends StatefulWidget {
  const ListViewTileButton({
    Key? key,
    required this.size,
    required this.textStatus,
    required this.color,
    required this.onTap,
    required this.colorBorder,
    required this.count,
    required this.countHeight, required this.textColor,
  }) : super(key: key);
  final Size size;
  final Color textColor;
  final Color color;
  final Color colorBorder;
  final String textStatus;
  final VoidCallback onTap;
  final int count;
  final double countHeight;

  @override
  State<ListViewTileButton> createState() => _ListViewTileButtonState();
}

class _ListViewTileButtonState extends State<ListViewTileButton> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: widget.countHeight,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                        image: AssetImage("assets/images/profiles$index.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  title: Text(
                    "Username$index",
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  trailing: InkWell(
                    onTap: widget.onTap,
                    child: Container(
                      height: size.height * 0.04,
                      decoration: BoxDecoration(
                        border: Border.all(color: widget.colorBorder, width: 1),
                        color: widget.color,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: size.width * 0.2,
                      child: Center(
                        child: Text(
                          widget.textStatus,
                          style: TextStyle(color: widget.textColor),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
            itemCount: widget.count,
          ),
        ),
      ],
    );
  }
}
