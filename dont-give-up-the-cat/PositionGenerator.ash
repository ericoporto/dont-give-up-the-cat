// new module header

struct PositionGenerator {
  import void Init(int width, int height, int proximity_ratio);
  import Point* Generate();
  
  // internals 
  protected Set* _existing_points;
  protected int _w;
  protected int _h;
  protected int _proximity_ratio;
};