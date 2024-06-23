import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final Widget _child;
  AppButton({
    super.key,
    final Function()? onPressed,
    final String? title,
  }) : _child = _ElevatedButton(
          onPressed: onPressed,
          title: title,
        );

  AppButton.icon({
    super.key,
    final Function()? onPressed,
    final String? title,
    final Widget? icon,
  }) : _child = _IconButton(
          onPressed: onPressed,
          title: title,
          icon: icon,
        );

  AppButton.text({
    super.key,
    final String? title,
    final Function()? onPressed,
  }) : _child = _TextButton(
          onPressed: onPressed,
          title: title,
        );

  @override
  Widget build(BuildContext context) {
    return _child;
  }
}

class _ElevatedButton extends StatelessWidget {
  final Function()? onPressed;
  final String? title;
  const _ElevatedButton({
    this.onPressed,
    this.title,
  });
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: const ButtonStyle(
          minimumSize: WidgetStatePropertyAll(Size(350.0, 48.0)),
          elevation: WidgetStatePropertyAll(5.0),
          foregroundColor: WidgetStatePropertyAll(Colors.white),
          shadowColor: WidgetStatePropertyAll(Colors.lightGreenAccent),
          overlayColor: WidgetStatePropertyAll(Colors.lightGreenAccent),
          splashFactory: InkSplash.splashFactory,
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
            ),
          ),
          backgroundColor: WidgetStatePropertyAll(Colors.amber)),
      onPressed: onPressed,
      child: Text(title!),
    );
  }
}

class _IconButton extends StatelessWidget {
  final Function()? onPressed;
  final String? title;
  final Widget? icon;
  const _IconButton({
    this.onPressed,
    this.title,
    this.icon,
  });
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [icon!, const SizedBox(width: 20.0), Text(title!)],
      ),
      style: const ButtonStyle(
          minimumSize: WidgetStatePropertyAll(Size(350.0, 48.0)),
          elevation: WidgetStatePropertyAll(5.0),
          foregroundColor: WidgetStatePropertyAll(Colors.white),
          shadowColor: WidgetStatePropertyAll(Colors.lightGreenAccent),
          overlayColor: WidgetStatePropertyAll(Colors.lightGreenAccent),
          splashFactory: InkSplash.splashFactory,
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
            ),
          ),
          backgroundColor: WidgetStatePropertyAll(Colors.amber)),
      onPressed: onPressed,
    );
  }
}

class _TextButton extends StatelessWidget {
  final Function()? onPressed;
  final String? title;

  const _TextButton({
    this.onPressed,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: const ButtonStyle(
          minimumSize: WidgetStatePropertyAll(Size(350.0, 48.0)),
          elevation: WidgetStatePropertyAll(5.0),
          foregroundColor: WidgetStatePropertyAll(Colors.white),
          shadowColor: WidgetStatePropertyAll(Colors.lightGreenAccent),
          overlayColor: WidgetStatePropertyAll(Colors.lightGreenAccent),
          splashFactory: InkSplash.splashFactory,
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
            ),
          ),
          backgroundColor: WidgetStatePropertyAll(Colors.greenAccent)),
      onPressed: onPressed,
      child: Text(title!),
    );
  }
}
