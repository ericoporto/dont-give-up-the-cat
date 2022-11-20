// new module header

/// pass n as number of sounds. Max 5.
import void Sound_SFXPlayRandom(int volume, int n, AudioClip* ac_1, AudioClip* ac_2, AudioClip* ac_3 = 0, AudioClip* ac_4 = 0, AudioClip* ac_5 = 0, AudioClip* ac_6 = 0);
import void Sound_SFXPlay(AudioClip* sfx, int volume = 100);

import void Sound_AmbientQueueRandom(int volume, int n, AudioClip* ac_1, AudioClip* ac_2, AudioClip* ac_3 = 0, AudioClip* ac_4 = 0, AudioClip* ac_5 = 0, AudioClip* ac_6 = 0);
import bool Sound_IsAmbientQueued();
import void Sound_AmbientTween(float timing, int volume, TweenEasingType type, TweenStyle style);
import void Sound_AmbientStop();
import void Sound_AmbientSetVolume(int vol);

import bool Sound_IsCricketsQueued();
import void Sound_CricketsQueueRandom(int volume, int n, AudioClip* ac_1, AudioClip* ac_2, AudioClip* ac_3 = 0, AudioClip* ac_4 = 0, AudioClip* ac_5 = 0, AudioClip* ac_6 = 0);
import void Sound_CricketsTween(float timing, int volume, TweenEasingType type, TweenStyle style);
import void Sound_CricketsSetVolume(int vol);
import void Sound_CricketsStop();

import void Sound_MusicPlay(AudioClip* mus);
import void Sound_MusicStop();
import void Sound_MusicFadeOut(float time);

import void Sound_WindPlay(AudioClip* wind);
import void Sound_WindVolume(int volume);
import void Sound_WindStop();

// Helper modules are simple modules, made to write once, test once functionality
// Different from utility modules, Helper modules contain game or engine SPECIFIC functionality
//                              <<------>>