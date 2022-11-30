class DurationItems extends Duration {
  DurationItems.durationFast() : super(milliseconds: 500);
  DurationItems.durationNormal() : super(seconds: 1);
  DurationItems.durationSlow() : super(seconds: 2);
}
