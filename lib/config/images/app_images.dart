class AppImages {
  // ***** SVG *****
  // static String icCalendar = ImagesPath.getPath('ic_calendar.svg');

  // ***** PNG *****
  static String appLogo = ImagesPath.getPath('app_logo.png');
  static String appLauncher = ImagesPath.getPath('app_launcher.png');
}

extension ImagesPath on AppImages {
  static String getPath(String name) {
    if (name.contains('.svg')) {
      return 'assets/images/svgs/$name';
    }
    if (name.contains('.png')) {
      return 'assets/images/pngs/$name';
    }
    if (name.contains('.jpg')) {
      return 'assets/images/jpgs/$name';
    }
    if (name.contains('.json')) {
      return 'assets/images/jsons/$name';
    }
    if (name.contains('.gif')) {
      return 'assets/images/gifs/$name';
    }
    return 'assets/images/svgs/$name';
  }
}
