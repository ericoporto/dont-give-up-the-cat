// new module header
#define FIREFLY_COUNT 6
struct FireflyFx {
  import void Init();
  import void Update();
  import void Destroy();
  
  Mode7Object* M7Object[FIREFLY_COUNT];  
  
  protected int _Life[FIREFLY_COUNT];
  protected float _SpeedX[FIREFLY_COUNT];
  protected float _SpeedY[FIREFLY_COUNT];
  protected float _SpeedZ[FIREFLY_COUNT];
  import protected void _DestroyFly(int i);
  import protected void _CreateFly(int i);  
};