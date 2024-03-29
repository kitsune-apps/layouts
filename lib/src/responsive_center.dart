import 'package:constants/constants.dart';
import 'package:flutter/material.dart';

/// A widget that centers its child horizontally within the available space,
/// constraining its width to a specified maximum content width.
class ResponsiveCenter extends StatelessWidget {
  /// Constructs a ResponsiveCenter widget.
  ///
  /// [maxContentWidth] defines the maximum width the child can occupy.
  /// [padding] defines the padding around the child.
  /// [child] is the widget to be centered.
  const ResponsiveCenter({
    super.key,
    this.maxContentWidth = Breakpoint.medium,
    this.padding = EdgeInsets.zero,
    required this.child,
  });

  /// The maximum width the child can occupy.
  final double maxContentWidth;

  /// The padding around the child.
  final EdgeInsetsGeometry padding;

  /// The widget to be centered.
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: maxContentWidth,
        child: Padding(
          padding: padding,
          child: child,
        ),
      ),
    );
  }
}
