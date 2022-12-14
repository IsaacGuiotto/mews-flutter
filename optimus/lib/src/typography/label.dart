import 'package:flutter/widgets.dart';
import 'package:optimus/src/typography/presets.dart';
import 'package:optimus/src/typography/typography.dart';
import 'package:optimus/src/typography/variation.dart';

/// {@template optimus.typography.label}
/// Labels are informative text that describes the function or purpose of an
/// element. Labels are usually actionless and should always be visible in the
/// interface. Precise labels contribute to a more convenient experience.
/// {@endtemplate}
///
/// [OptimusLabel] with [Variation.variationNormal] is coupled with another
/// element to describe its function.
///
/// [OptimusLabel] with [Variation.variationSecondary] is coupled with another
/// element to describe its function with less emphasis.
class OptimusLabel extends StatelessWidget {
  const OptimusLabel({
    Key? key,
    this.variation = Variation.variationNormal,
    this.align,
    required this.child,
  }) : super(key: key);

  /// {@macro optimus.typography.child}
  final Widget child;

  /// {@macro optimus.typography.variation}
  final Variation variation;

  /// {@macro optimus.typography.align}
  final TextAlign? align;

  @override
  Widget build(BuildContext context) => OptimusTypography(
        resolveStyle: (_) => preset200b,
        color: variation.color,
        align: align,
        child: child,
      );
}

/// {@macro optimus.typography.label}
///
/// [OptimusLabelSmall] with [Variation.variationNormal] is coupled with
/// another element to describe its function.
///
/// [OptimusLabelSmall] with [Variation.variationSecondary] is coupled with
/// another element to describe its function with less emphasis.
class OptimusLabelSmall extends StatelessWidget {
  const OptimusLabelSmall({
    Key? key,
    this.variation = Variation.variationNormal,
    this.align,
    required this.child,
  }) : super(key: key);

  /// {@macro optimus.typography.child}
  final Widget child;

  /// {@macro optimus.typography.align}
  final TextAlign? align;

  /// {@macro optimus.typography.variation}
  final Variation variation;

  @override
  Widget build(BuildContext context) => OptimusTypography(
        resolveStyle: (_) => preset100b,
        color: variation.color,
        align: align,
        child: child,
      );
}
