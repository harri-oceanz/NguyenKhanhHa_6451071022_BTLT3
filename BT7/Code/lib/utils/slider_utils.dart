class SliderUtils {

  // Giới hạn vị trí trong thanh
  static double clamp(double x, double min, double max) {
    if (x < min) return min;
    if (x > max) return max;
    return x;
  }

  // Convert vị trí → giá trị %
  static double toPercent(double position, double maxWidth) {
    return (position / maxWidth) * 100;
  }
}