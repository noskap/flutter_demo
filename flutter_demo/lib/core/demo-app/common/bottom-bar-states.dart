enum States { shop, drawer, none }

bool? BottomBarStates(States state) {
  switch (state) {
    case States.drawer:
      return true;
    case States.shop:
      return false;
    case States.none:
    default:
      return null;
  }
}
