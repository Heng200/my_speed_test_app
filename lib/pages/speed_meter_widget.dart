import 'package:flutter/material.dart';
import 'package:my_speed_test_app/shared/themes/theme_data.dart';
import 'package:my_speed_test_app/shared/widgets/text_widget.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class SpeedMeterWidget extends StatelessWidget {
  const SpeedMeterWidget({
    super.key,
    required this.currentSpeed,
  });
  final double currentSpeed;
  static const int startProgressColor = 0xFFF44336;
  static const int endProgressColor = 0xFF76FF03;
  @override
  Widget build(BuildContext context) {
    return SfRadialGauge(
      enableLoadingAnimation: true,
      animationDuration: 2500,
      axes: <RadialAxis>[
        RadialAxis(
          ranges: [
            GaugeRange(
              startValue: 0,
              endValue: 180,
              color: context.primaryColor,
              startWidth: 1,
              endWidth: 2,
            ),
          ],
          maximum: 180,
          canScaleToFit: true,
          canRotateLabels: true,
          showLastLabel: true,
          interval: 20,
          minorTicksPerInterval: 1,
          majorTickStyle: MajorTickStyle(
            length: 20,
            thickness: 2,
            color: context.disableColor,
          ),
          axisLineStyle: const AxisLineStyle(
            cornerStyle: CornerStyle.startCurve,
            thickness: 1,
          ),
          pointers: <GaugePointer>[
            NeedlePointer(
              animationDuration: 500,
              animationType: AnimationType.easeInCirc,
              needleColor: Colors.redAccent,
              needleLength: 0.8,
              enableAnimation: true,
              value: currentSpeed,
              knobStyle: KnobStyle(
                color: Colors.grey.shade400,
              ),
              needleEndWidth: 6,
            ),
            RangePointer(
              value: currentSpeed,
              width: 0.15,
              sizeUnit: GaugeSizeUnit.factor,
              gradient: const SweepGradient(
                colors: <Color>[
                  Color(startProgressColor),
                  Color(endProgressColor),
                ],
                stops: <double>[0.25, 0.75],
              ),
            ),
          ],
          annotations: <GaugeAnnotation>[
            GaugeAnnotation(
              widget: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: CCText.title(
                  isBold: true,
                  color: context.primaryColor,
                  '${currentSpeed.toStringAsFixed(2)} Mbps',
                ),
              ),
              angle: 90,
              positionFactor: 0.7,
            ),
          ],
        ),
      ],
    );
  }
}
