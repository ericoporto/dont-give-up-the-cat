// new module header

enum TerrainType {
  eTT_Water = 1,
  eTT_Land,
  eTT_LandBorder,
  eTT_TreeHeavy,
  eTT_Tree,
  eTT_Clearance,
  eTT_Flowers,
  eTT_BlueRock,
  eTT_GrassyRock,
  eTT_FlowersBlue,
  eTT_ClearanceHome,
  eTT_ClearanceGFlowers,
  eTT_ClearanceGHouse,
  eTT_ClearanceGStones
};

import TerrainType GetTerrainAtRoomXY(int x, int y);
import bool IsWallAtRoomXY(int x, int y);// new module header
import bool IsTerrainEmpty(TerrainType terrain);