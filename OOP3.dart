class Point {
  int _x;
  int _y;

  Point(this._x, this._y);

  @override
  String toString() {
    return "$_x  ; $_y";
  }

  Point Move(int dx, int dy) {
    return Point(dx + _x, dy + _y);
  }

  get x => _x;
  get y => _x;
}

class Shap {
  Point rightTop;
  Point leftBottom;

  Shap(this.rightTop, this.leftBottom);
  int width() {
    return (rightTop.x - leftBottom.x).abs();
  }

  int height() {
    return (rightTop.y - leftBottom.y).abs();
  }

  @override
  String toString() {
    return ("${rightTop.x} , ${leftBottom.x} , ${rightTop.y} , ${leftBottom.y} ,");
  }
}

void main() {
  Shap XY = Shap(Point(1, 2), Point(4, 6));
  print(XY);
  print(XY.width());
  print(XY.height());
}
