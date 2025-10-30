import 'package:collection/collection.dart';

enum Toast {
  error,
  warning,
  info,
  success,
}

enum MenuPage {
  dashboard_home,
  ssa_home,
  technical_visit_home,
  scheduling_home,
  execution_home,
  measurement_home,
  approval_home,
  extra_activity_home,
  material_collection_home,
  revalidation_home,
  compensation_home,
  inventory_home,
  reports_home,
  change_company,
}

/// modelo de leitura do documento
enum WidgetTypeMode {
  create,
  edit,
  view,
  undefined,
}

enum TimeLoading {
  temp4seconds,
  temp6seconds,
  temp8seconds,
  temp10seconds,
}

enum SetGestorDestructor {
  Active,
  disabled,
}

enum PathBucket {
  croqui,
  assinatura,
  fotos,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (Toast):
      return Toast.values.deserialize(value) as T?;
    case (MenuPage):
      return MenuPage.values.deserialize(value) as T?;
    case (WidgetTypeMode):
      return WidgetTypeMode.values.deserialize(value) as T?;
    case (TimeLoading):
      return TimeLoading.values.deserialize(value) as T?;
    case (SetGestorDestructor):
      return SetGestorDestructor.values.deserialize(value) as T?;
    case (PathBucket):
      return PathBucket.values.deserialize(value) as T?;
    default:
      return null;
  }
}
