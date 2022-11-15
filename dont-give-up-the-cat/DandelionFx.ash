// new module header
#define DANDELION_MAX 8
struct DandelionFx {
  import void Init();
  import void CreateAt(Mode7Object* dandelionOrigin);
  import void Update();
  
  protected int _Life[DANDELION_MAX];
  protected float _DandDirX[DANDELION_MAX];
  protected float _DandDirZ[DANDELION_MAX];
  
  Mode7Object* M7Object[DANDELION_MAX];  
};

import DandelionFx dandelion_fx;