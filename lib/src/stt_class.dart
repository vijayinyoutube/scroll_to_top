part of scroll_to_top;

class ScrollToTop extends StatefulWidget {
  const ScrollToTop(
      {Key? key,
      required this.child,
      required this.scrollController,
      this.scrollOffset = 400,
      this.btnColor = Colors.blue,
      this.txtColor = Colors.white})
      : super(key: key);

  final Widget child;
  final ScrollController scrollController;
  final int? scrollOffset;
  final Color? btnColor;
  final Color? txtColor;

  @override
  State<ScrollToTop> createState() => _ScrollToTopState();
}

class _ScrollToTopState extends State<ScrollToTop> {
  bool backtoTop = false;
  @override
  void initState() {
    widget.scrollController.addListener(() {
      setState(() {
        backtoTop =
            widget.scrollController.offset > widget.scrollOffset!.toInt()
                ? true
                : false;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    widget.scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        widget.child,
        buildBTT(widget.scrollController, backtoTop, widget.btnColor,
            widget.txtColor),
      ],
    );
  }

  Widget buildBTT(ScrollController scrollController, bool backtoTop,
          Color? btnColor, Color? txtColor) =>
      backtoTop
          ? Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: FloatingActionButton.extended(
                  backgroundColor: btnColor,
                  onPressed: () {
                    scrollController.animateTo(0,
                        duration: const Duration(seconds: 1),
                        curve: Curves.linear);
                  },
                  label: Text(
                    "Back to Top",
                    style: TextStyle(color: txtColor),
                  ),
                ),
              ),
            )
          : const SizedBox();
}
