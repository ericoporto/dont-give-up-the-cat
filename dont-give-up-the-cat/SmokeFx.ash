// new module header

#define SMOKE_COUNT 16
struct SmokeFx {
  import void Init(int room_x, int room_y, float init_height = 0.0, int smoke_max_life = 0, int smoke_particles = 0);
  import void Update();
  
  protected int _RoomX;
  protected int _RoomY;
  protected int _Life[SMOKE_COUNT];
  protected int _MaxLife;
  protected float _InitHeight;
  
  writeprotected int SmokeCount;
  
  Mode7Object* M7Object[SMOKE_COUNT];
  
  
  
};