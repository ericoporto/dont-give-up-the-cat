// new module header

managed struct InputParams {
  float AngleX;
  float CurrentSpeed;
  
  float TurnSpeed;
  float MaxSpeedForward;
  float MaxSpeedForwardRunning;
  float MaxSpeedBackward;
  
  import static InputParams* NewInputParams(float turn_speed, float max_speed_forward, float max_speed_forward_running, float max_speed_backward); //$AUTOCOMPLETESTATICIGNORE$

};

import void input_player(Mode7Object* m7o_player, InputParams* p);