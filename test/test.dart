import 'dart:html';
import 'dart:isolate';

import 'package:animation/animation.dart';

main() {
  var el = query('#box');

  /*var properties = {
    'left': 1000,
    'top': 350
  };

  animate(element: el, properties: properties, duration: 5000);*/

  /*var anim = new StyleAnimation(el)
    ..duration = 5000
    ..setProperties({
      'left': 1000,
      'top': 350
    })
    ..run();

  new Timer(2500, (Timer timer) {
    anim.pause();

    new Timer(2500, (Timer timer) {
      anim.run();
    });
  });*/

  /*var properties = {'left': 1000, 'top': 350};
  var anim = animate(element: el, properties: properties, duration: 5000);

  new Timer(2500, (Timer timer) {
    anim.stop();

    new Timer(2500, (Timer timer) {
      anim.run();
    });
  });*/

  var anim = new StyleAnimation(el)
    ..duration = 1000
    ..setProperties({
      'left': 500,
      'top': 250
    });

  var anim2 = new StyleAnimation(el)
    ..duration = 500
    ..setProperties({
      'height': 250
    });

  var queue = new AnimationQueue()
    ..addAll([anim, anim2])
    ..run();
}