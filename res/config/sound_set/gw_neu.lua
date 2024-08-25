local soundsetutil = require "soundsetutil"

function data()

local data = soundsetutil.makeSoundSet()

soundsetutil.addTrackParam01
(data, "vehicle/gueter/gw_roll_n.wav", 25.0,
		{
			{ .0, .0 },
			{ .2, .3 },
			{ 1.0, 0.8 } },		
		{
			{ .0, 0.4 }, 
			{ 1.0, 1.5 }  }, 
		"speed01")

soundsetutil.addTrackParam01
(data, "vehicle/gueter/anfahrt.wav", 25.0, 
		{
			{ .0, .0 },
			{ .01, 0.9 },
			{ .38, 0.9 },
			{ .5, .0 },
			{ 1.0, .0 } },
		{
			{ .0, 1.0 },
			{ .4, 1.15 },
			{ 1.0, 1.15 } },
		"speed01")




soundsetutil.addTrackSqueal(data, "vehicle/gueter/kurve.wav", 25.0)
soundsetutil.addTrackBrake(data, "vehicle/gueter/bremse_mix.wav", 25.0, .5)
soundsetutil.addEvent(data, "openDoors",  { "vehicle/gueter/bremse_mix.wav", }, 5.0)

return data

end