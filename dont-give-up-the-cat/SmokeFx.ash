// new module header

#define SMOKE_COUNT 8
struct SmokeFx {
  import void Init(int room_x, int room_y);
  import void Update();
  
  protected int _RoomX;
  protected int _RoomY;
  protected int _Life[SMOKE_COUNT];
  
  Mode7Object* M7Object[SMOKE_COUNT];
  
  
  
};