// ZONE MANAGER module header
//
// This module allows adding objects in and out from a bigger world to the mode7 3D renderer
// It works by dividing the world in zones, and letting the player in center of a 3x3 section of the zones
// These selected 9 cells are considered actives
// Actual insertion and removal of the objects is handled separately, this module is only utilities for this usage
// for example usage,  see void update_m7wobjs_from_zmanager() in the room script.

#define MAX_ZONES 64
#define MAX_OBJ_PER_ZONE 1024
// MAX_ZONES * MAX_OBJ_PER_ZONE
#define MAX_OBJ_ALL_ZONES 65536

#define ZM_MAX_WORLD_OBJ 4096

// can't change
#define MAX_ACTIVE_ZONES 9
#define MAX_VICINITY_ZONES 16

struct ZoneManager {
  int CurrentX;
  int CurrentY;
  
  int PreviousX;
  int PreviousY;
  
  int WorldWidth;
  int WorldHeight;
  
  int ZoneXYCount;
  
  /// Reset the zones for all objects. This can be expensive, so don't do too often.
  import void RefreshObjectZones();
  
  /// Gets the zone ID for a X,Z World position
  import int GetZoneID_FromObjPos(float x, float z);
  /// Updates the current main zone in the Zone Manager. Automatically Refresh Object Zones as needed and adjust active zones. ZoneChanged is set to true when a zone change occurs.
  import void UpdateCurrentPos(float x, float z);
  /// Is set to true when a zone change just occured (in UpdateCurrentPos), false otherwise.
  writeprotected bool ZoneChanged;
  
  /// Creates and adds an object to the ZoneManager
  import Mode7Object* AddObject(int x, int z, float factor, int graphic);
  
  /// Holds the objects
  Mode7Object* Objects [ZM_MAX_WORLD_OBJ];
  writeprotected int ObjectCount;
  
  /// Call before starting a GetNextObjectActiveZones sequence
  import void ResetObjectActiveZones();
  /// Returns the next object from all active zones, or null if it has iterated through all objects. Call ResetObjectActiveZones if you want to iterate again.
  import Mode7Object* GetNextObjectActiveZones();
  
  protected int _iZone;  
  protected int _iZoneObject;
  
  protected int _HACK_UpdateRefreshCooldown;
  
  /// Set a specific zone to iterate through all objects from it. Use current main zone if a negative value is passed.
  import void ResetObjectIteratingZone();
  /// Returns the next object from the set iterating zone, or null if no object left. Call ResetObjectIteratingZone if you want to iterate again.
  import Mode7Object* GetNextObjectIteratingZone();
  
  protected int _IteratingZone;
  protected int _iObjectIteratingZone;
  
  
  /// Call before starting a GetNextObjectVicinityZones sequence
  import void ResetObjectVicinityZones();
  /// Returns the next object from all vicinity zones, or null if it has iterated through all objects. Call ResetObjectVicinityZones if you want to iterate again.
  import Mode7Object* GetNextObjectVicinityZones();
  
  protected int _iVicZone;  
  protected int _iVicZoneObject;
  
  
  import protected void _AddObjectToZone(Mode7Object* m7obj, int obj_id);
  writeprotected int ZoneObjectCount[MAX_ZONES];
  writeprotected int ZoneObject[MAX_OBJ_ALL_ZONES];   
  
  import protected void _AdjustActiveZones();
  protected int _ActiveZones[MAX_ACTIVE_ZONES];
  
  import protected void _AdjustVicinityZones();
  protected int _VicinityZones[MAX_VICINITY_ZONES];
  protected int _VicinityZoneCount;
};