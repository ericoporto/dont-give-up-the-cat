// new module header


struct BreathingSfx {
  import void Init();
  import void Update(InputParams* p);
  import void Destroy();
  
  protected int BreathMeter;
  protected float TargetVolume;
  protected bool BeganBreathing;
};