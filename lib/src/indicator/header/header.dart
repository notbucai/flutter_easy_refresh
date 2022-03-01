part of easyrefresh;

/// Header indicator.
abstract class Header extends Indicator {
  const Header({
    required double triggerOffset,
    required bool clamping,
    Duration processedDuration = const Duration(seconds: 1),
    SpringDescription? spring,
    bool safeArea = true,
    double? infiniteOffset,
    bool? hitOver,
    bool? infiniteHitOver,
    bool useLocator = false,
  }) : super(
          triggerOffset: triggerOffset,
          clamping: clamping,
          processedDuration: processedDuration,
          spring: spring,
          safeArea: safeArea,
          infiniteOffset: infiniteOffset,
          hitOver: hitOver,
          infiniteHitOver: infiniteHitOver,
          useLocator: useLocator,
        );
}

/// Build header widget use [IndicatorBuilder].
class BuilderHeader extends Header {
  /// Header widget builder.
  final IndicatorBuilder builder;

  const BuilderHeader({
    required this.builder,
    required double triggerOffset,
    required bool clamping,
    Duration processedDuration = const Duration(seconds: 1),
    SpringDescription? spring,
    bool safeArea = true,
    double? infiniteOffset,
    bool? hitOver,
    bool? infiniteHitOver,
    bool useLocator = false,
  }) : super(
          triggerOffset: triggerOffset,
          clamping: clamping,
          processedDuration: processedDuration,
          spring: spring,
          safeArea: safeArea,
          infiniteOffset: infiniteOffset,
          hitOver: hitOver,
          infiniteHitOver: infiniteHitOver,
          useLocator: useLocator,
        );

  @override
  Widget build(BuildContext context, IndicatorState state) {
    return builder(context, state);
  }
}
