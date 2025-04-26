part of "app_router.dart";

Page<dynamic> createRouterPage(Widget child, {RouteSettings? settings}) {
  return CupertinoPage(child: child, arguments: settings?.arguments);
}
