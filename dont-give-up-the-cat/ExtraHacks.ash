// new module header
#define EXTRAHACKS_MAX_OBJ_COUNT 1024

struct ExtraHacks {
  import void StoreObjectsTemp(Mode7Object* obj);
  import void ReleaseAllObjects();
  
  writeprotected int ObjectCount;  
  Mode7Object* M7Object[EXTRAHACKS_MAX_OBJ_COUNT];
};

import ExtraHacks hacks;