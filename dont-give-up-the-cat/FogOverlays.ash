// new module header

// We want a world with lots of objects, but currently this is impacting lower performance computers
// To counter this, we are breaking the world in smaller cells,  which are handled by the Zone Manager
// Since the games takes place during the night anyway,  we are adding some fog to hide this in and out of objects into vision

import void create_depth_fog(int color, int z_span);
import void sync_horizon(int horizon_y);