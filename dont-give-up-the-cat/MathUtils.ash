// new module header

import float AbsF(float a);
import float MaxF(float a, float b);
import float MinF(float a, float b);
import float ClampF(float v, float min, float max);


import int AbsI(int a);
import int MaxI(int a, int b);
import int MinI(int a, int b);

/// Clamps v between min and max, inclusive.
import int ClampI(int v, int min, int max);

/// If v bigger than max, returns min; and v smaller than min, returns max.
import int ClampLoopI(int v, int min, int max);

import float ClampLoopF(float v, float min, float max);

import float Lerp(float from, float to, float t);