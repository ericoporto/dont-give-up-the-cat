// new module header

struct ClawFx {
  import bool Do();
  import void EnhanceFx();
  import void Update();
  import void Init();
  
  import protected void _begin_animate_claw(int initial_graphics);
  protected int _claw_last;
  protected int _claw_frame;
  protected int _claw_width;
  protected int _claw_height;
  protected Overlay* _ovr_claw;
};

import ClawFx claw_fx;