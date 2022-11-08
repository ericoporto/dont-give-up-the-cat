// new module header
// the mode7 module originally used a drawing surface for the horizon rendering,
// this is a hack to use a custom overlay for performance purpose

import void sync_skybox(int hor_y, int sbx);
import void skybox_create(int color, int horizon_sprite);