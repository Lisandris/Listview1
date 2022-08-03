import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';

import '../screens/avatar_screen.dart';


class AppRoutes {

 static const initialRoute = 'home';

 static final menuOptions =<MenuOptions>[
  
  // MenuOptions(route: 'home', name: 'Home Screen', screen: const HomeScreen(),icon: Icons.ac_unit_outlined ),
  MenuOptions(route: 'listview1', name: 'Listview tipo 1', screen: const Listview1Screen(), icon: Icons.library_books ),
  MenuOptions(route: 'listview2', name: ' Listview tipo 2', screen: const Listview2Screen(), icon:Icons.my_library_books_sharp),
  MenuOptions(route: 'alert', name: 'Alertas - Alerts', screen: const AlertScreen(), icon: Icons.border_all_sharp),
  MenuOptions(route: 'card', name: 'Tarjetas - Cards', screen: const CardScreen(), icon: Icons.credit_card),
  MenuOptions(route: 'avatar', name: 'Circle Avatar', screen: const AvatarScreen(), icon: Icons.supervised_user_circle_outlined),
  MenuOptions(route: 'animated', name: 'Animated Container', screen: const AnimatedScreen(), icon: Icons.play_circle_outline_rounded),
  MenuOptions(route: 'inputs', name: 'Text Inputs', screen: const InputScreen(), icon: Icons.input_rounded),

];

 static Map<String, Widget Function(BuildContext)> getAppRoutes() {

  Map<String, Widget Function(BuildContext)> appRoutes = {};
 appRoutes.addAll({ 'home': ( BuildContext context ) => const HomeScreen() });

  for (final option in menuOptions) {
    appRoutes.addAll({ option.route: ( BuildContext context ) => option.screen });
  }
  
   return appRoutes;
 
 }
//static Map<String, Widget Function(BuildContext)> routes = {
//     'home'     : ( BuildContext context ) => const HomeScreen(),
//    'listview1': ( BuildContext context ) => const Listview1Screen(),
//  'listview2': ( BuildContext context ) => const Listview2Screen(),
//'alert'    : ( BuildContext context ) => const AlertScreen(),
//'card'     : ( BuildContext context ) => const CardScreen(), 
//};
 


  static Route<dynamic> onGenerateRoute( RouteSettings settings) {
        return MaterialPageRoute(
            builder: (context) => const AlertScreen(),
      );
 }

  }
