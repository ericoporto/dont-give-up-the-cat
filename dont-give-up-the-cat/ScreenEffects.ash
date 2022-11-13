// new module header

struct ScreenEffects {
  import void Init();
  import void Update();
  import void LateUpdate();
  
  import attribute bool On;
  import bool get_On(); // $AUTOCOMPLETEIGNORE$
  import void set_On(bool value); // $AUTOCOMPLETEIGNORE$
  
  // private internals
  protected bool _on; // $AUTOCOMPLETEIGNORE$
  protected DynamicSprite* _spr_fx;
  protected DynamicSprite* _screen;
};