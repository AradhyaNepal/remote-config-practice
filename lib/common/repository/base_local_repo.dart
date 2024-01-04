abstract class BaseLocalRepo{
   static const String _boxName;

   static final AppLocalStorage _instance = AppLocalStorage._();

   factory AppLocalStorage() => _instance;

   AppLocalStorage._();
}