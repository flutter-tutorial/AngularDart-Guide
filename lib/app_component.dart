import 'package:angular/angular.dart';

import 'src/logger_service.dart';
import 'src/heroes/heroes_component.dart';
import 'src/heroes/user_service.dart';
import 'src/hero_form_component.dart';

@Component(
  selector: 'my-app',
  styleUrls: ['app_component.css'],
  templateUrl: 'app_component.html',
  providers: [
    ClassProvider(UserService),
    ClassProvider(Logger, useClass: EvenBetterLogger),
  ],
  directives: [HeroesComponent, HeroFormComponent,],
)
class AppComponent {
}
