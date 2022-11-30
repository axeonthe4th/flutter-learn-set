enum LottieItems { loading, themechanger }

extension LottieItemsExtension on LottieItems {
  String _path() {
    switch (this) {
      case LottieItems.loading:
        return "loading";
      case LottieItems.themechanger:
        return "themechanger";
    }
  }

  String get lottiePath => "assets/lottie/${_path()}.json";
}
