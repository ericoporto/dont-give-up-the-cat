// new module header

struct ScreenEffects {
  import void Init();
  import void Update();
  import void LateUpdate();
  import void Destroy();
  
  import attribute bool On;
  import bool get_On(); // $AUTOCOMPLETEIGNORE$
  import void set_On(bool value); // $AUTOCOMPLETEIGNORE$
  
  // private internals
  protected bool _on; // $AUTOCOMPLETEIGNORE$
  protected int _fx_cnt;
  protected DynamicSprite* _spr_fx;
  protected DynamicSprite* _screen;
};