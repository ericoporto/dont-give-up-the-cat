// new module header
enum TargetObjective {
  eObjective_None = 0, 
  eObjective_Explore,
  eObjective_BringGhostHome1_3, 
  eObjective_FindRemainingGhosts2,
  eObjective_BringGhostHome2_3, 
  eObjective_FindRemainingGhosts1,
  eObjective_BringGhostHome3_3, 
  eObjectiveCOUNT, 
};

struct Objective {
  import static void SetCurrent(TargetObjective objective);
  import static void Expire(TargetObjective objective);
  import static void Complete(TargetObjective objective);
  import static void SetVisible(bool state);
  import static bool GetVisible();
};