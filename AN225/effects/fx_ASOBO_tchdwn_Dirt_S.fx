// Doc : https://msdn.microsoft.com/en-us/library/cc526969.aspx#LibraryEffect
[Library Effect]				//The [Library Effect] section defines several general parameters.
	Lifetime=5						//A value that is part of an internal (reserved) process. Do not edit this parameter. Lifetime=5 is the only value recognized.
	Version=3.00					//The version number of the internal effects tool. Do not edit this parameter. The version number can be 1.00, 2.00 or 3.00.
	Display Name=Thcdwn Dirt Little plane		//An internal naming process that does not affect anything displayed to the user, but may help you keep track of effects files as you work on them.
	Radius=-1						//The maximal size of the effect. You must give an effect a radius for it to show up as scenery. Measured in meters.
	Priority=0						//The number of particles drawn in any one scene can be limited by the various performance settings. Setting Priority to 0 maximizes the chances of the effect being drawn. Setting it to another number will lower the chances of the full effect being drawn if there are performance issues.

[Properties]					//The [Property] section defines the view modes in which the effect will be displayed.
// these settings are unimplemented || Legacy do not use this, see doc

[Emitter.0]							// The [Emitter.0] section defines the start of the emitter portion of an effect. An emitter creates a flow of particles, like water from a spigot, which are displayed in the effect.
	Lifetime=0.1, 0.1				// The length of time that an emitter emits particles. Measured in seconds.		
	Delay=0.00, 0.00					// The length of delay before the emitter begins emitting particles. Measured in seconds.
	Bounce=0.00							//The reaction of an emitter when it collides with the ground. The higher the number, the larger the bounce. If the parameter is set to 0, no reaction occurs.
	LOD=0								//Set the level of detail (LOD) to be 1 if you want the effect to disappear at a distance. Use this to improve performance, and apply it to small localized effects. The default is 0.
	Light=0							//If this is set to 1, the effect is treated as a light source. For example beacons and fireworks have this value set to 1. The default is 0.
	No Interpolate=0					//If this is set to 1, interpolation code is not used. Interpolation code attempts to avoid the graphics anomaly of a continuous stream appearing as a sequence of puffs, because the emitter of the stream is moving much faster than the frame rate. Sometimes this interpolation makes the effect appear detached from the emitter, so setting No Interpolate to 1 is one way of "attaching" an effect to an object securely. The default is 0.
	Rate=200.00, 500.00					//The rate at which particles are emitted. Measured in particles per second.
	X Emitter Velocity=0.00, 0.00		//The X Emitter Velocity, Y Emitter Velocity, and Z Emitter Velocity parameters define the velocity of the launched emitter in the X, Y, and Z directions, respectively. (The Y direction corresponds to vertical.) The larger the number, the greater the velocity of the emitter.
	Y Emitter Velocity=0.00, 0.00		// "" "" ""
	Z Emitter Velocity=0.00, 0.00		// "" "" ""
	Drag=0.00, 0.00						//Drag defines the affect of wind and gravity on the emitter. Negative numbers impart more drag.
	X Particle Velocity=-30.00, 30.00	//The velocity at which particles travel in the X, Y, and Z directions, respectively.
	Y Particle Velocity=-30.00, 30.00		// "" "" ""
	Z Particle Velocity=-30.00, 30.00	// "" "" ""
	X Rotation=0.00, 0.00				//	The rate at which an effect rotates in the X, Y, or Z plane. To create particles that rotate around a center, combine these Rotation parameters with the Particle Offset parameters. The greater the offset and the greater the rotation, the more dramatic the effect. For example, some of the spectacular fireworks effects were done using these two parameters.
	Y Rotation=0.00, 0.00				// "" "" ""
	Z Rotation=0.00, 0.00				// "" "" ""
	X Offset=0.00, 0.00					//The distance that the emitter is offset from its point of origin in the X, Y, and Z directions.
	Y Offset=0.00, 0.00					// "" "" ""
	Z Offset=0.00, 0.00					// "" "" ""
	Pitch=0.00, 0.00					//The angle at which the emitter is tilted. A tilted emitter emits particles at an angle, a feature that is especially helpful when working with static particles. Measured in degrees.
	Bank=0.00, 0.00						//The bank angle of the emitter.
	Heading=0.00, 0.00					//The heading angle of the emitter.
	TemperatureRangeC=-9999.0,9999.0	//Set the check box if outside temperature is a factor. If so, the particles will only be emitted if the outside temperature is within the min/max range. This can be used to prevent, for example, steam appearing when the outside temperature is too warm for it to be visible.
	RenderType=0						//This value is specific for wake effects. Set it to 1 for wake.
									
[Particle.0]						//The [Particle.0] section defines the start of the first particle and the particle's behavior after it has been emitted. You can include sections for more than one particle (for example, [Particle.0], [Particle.1], and [Particle.2]).
	Lifetime=1.20, 1.40			//The length of time that the particle exists, in seconds.
	Type=19							//For normal particles the type should be set to 19. Some specific effects require a different number: see doc
	X Scale=2.50, 3.50				//The starting size of the particle in the X, Y, and Z directions. Measured in meters.
	Y Scale=2.50, 3.50				// "" "" ""
	Z Scale=2.50, 3.50				// "" "" ""
	X Scale Rate=1.90, 2.00			//The rate at which a particle grows from zero to its scale goal (see the [ParticleAttributes] section) in the X, Y, and Z directions. The larger the number, the faster the scaling.
	Y Scale Rate=1.90, 2.00			// "" "" ""
	Z Scale Rate=0.00, 0.00			// "" "" ""
	Drag=-999.00, -999.00			//Drag defines the effect of wind and gravity on the particles. Negative numbers impart more drag. For positive numbers, don't use a value greater than 1.00. For a reasonable effect of wind on dust particles use a value around -0.5.
	Color Rate=0.90, 1.00			//The first value gives the percentage of the lifetime of the particle that the particle will be colored with Color Start, between the first and second values the colors will cross-fade, and the second value gives the percentage of the lifetime after which the particle is colored Color End. The percentages are expressed as fractions, for example: 0.50 is 50 percent.
	X Offset=0.00, 0.00				//The distance that the emitted particles are offset from the emitter in the X, Y, and Z directions. These parameters can be combined with the Emitter Rotation parameters to create swirling particle effects. They can also be used to spread particles out over an area.
	Y Offset=0.00, 0.00				// "" "" ""
	Z Offset=0.00, 0.00				// "" "" ""
	Fade In=0.00, 0.00				//The moment during its lifetime that a particle fades in. Expressed as a percentage of total lifetime.
	Fade Out=0.30, 0.30				//The moment during its lifetime that a particle fades out. Expressed as a percentage of total lifetime.
	Rotation=-90.0, 90.0			//The rotation of a particle. It is best to use a negative number first and then a positive number to get the most variation in the amount of rotation.
	Shade=0							//An on/off toggle that determines whether the particle is darkened at night. It is used for night shading.
	Face=1, 1, 1					//The direction that the particles face. Pitch, bank, and heading are the constraints for the particles' facing movement. These are on/off switches because the particles either move in the corresponding direction, or they do not. To have the particles face you, use 1,1,1. If one of the values is 0, then the particles will be constrained in the corresponding axis. To have the particles remain perpendicular to the ground but still turn and face you, use 0,0,1.
	Ground Normal=0							//If this is set to 1 the particle will be rendered parallel to the ground surface. This is for such effects as wake, rotor wash, burn marks, and similar ground effects. If this is set then the Facing options above (Pitch, Bank and Heading) are ignored.
	EmittedEffectName=fx_WheelLandingE12	//The name of the effect initiated by this effect.
	Rotation Pitch=0.00,0.00				//The pitch to apply to the library object emitted by the effect. This applies only to the Debris tab.
	Rotation Bank=0.00, 0.00		//The bank to apply to the library object emitted by the effect.
	Rotation Heading=0.00, 0.00		//The heading to apply to the library object emitted by the effect.
	
[ParticleAttributes.0]				//The [ParticleAttributes] section defines the special attributes of a particle, such as color and texture.
	Blend Mode=1					//Blend mode specifies which blending mode is used to display the texture, which should be one of: 0: No Alpha, 1: Alpha blending, 2: Additive blending, 3: Multiply blending, see doc for details	
	Texture=fx_ASOBO_Dirt_SS.dds
	Bounce=1.00						//The reaction of a particle when it collides with the ground. The larger the number, the greater the bounce. If the parameter is set to 0, no reaction occurs. If it is set to 1.0 then it will come off the ground at the same velocity that it hit it. Use a value less than 1.0 to simulate the loss of energy due to the impact.
	Color Start=240,240, 240, 30	//The initial color of a particle. The first three numbers define the red, green, and blue (RGB) values and the fourth number specifies the amount of alpha transparency (R, G, B, [00-255]).
	Color End=255, 255, 255, 20		//The final color "" "" ""
	Jitter Distance=0.00			//The distance that the particles jitter. If you don't want the particles to jitter, set the parameter to 0.
	Jitter Time=0.00				//The length of the delay before particles start to jitter. Measured in seconds.
	TempK=107.00					//The temperature of the particles, which defines how fast they rise or sink. To approximate room temperature, where particles neither rise nor sink, set TempK to 107 degrees. To make the particles rise, specify a temperature greater than 107; to make the particles sink, specify a temperature less than 107.
	TempRate=0.00					//The rate at which the particles cool or heat up. A negative value represents temperatures that are cooling. The faster particles cool, the sooner they fall back to the ground. A positive value represents temperatures that are rising. The faster particles heat up, the sooner they accelerate into the sky.
	uv1=0.00, 0.00					//The location of the lower-left corner of the texture on the texture page (X, Y) expressed as percentages. The lower-left corner of this texture starts at the left side of the page and 50 percent up its side.	
	FPS=27.00
	CellStart=0
	CellEnd=63
	TextureSize=512
	CellSize=64
	uv2=1.00, 1.00					//The location of the upper-right corner of the texture lies on the texture page (X, Y) expressed as percentages. The upper-right corner of this texture is 50 percent to the right and at the very top of the page. See the diagram below.
	X Scale Goal=12.00				//The maximum size in the X, Y, and Z directions that a particle scales to based on its scale rates in the X, Y, and Z directions, respectively.
	Y Scale Goal=12.00				// "" "" ""
	Z Scale Goal=0.00				// "" "" ""
	Extrude Length=0.00				//The length of each portion of an extruded effect.
	Extrude Pitch Max=0.00			//The pitch angle at which point the extrusion creates a new section. The smaller the number, the smoother the curves of your extrusions.
	Extrude Heading Max=0.00		//The heading angle at which point the extrusion creates a new section.
				
		// ===
		
[Emitter.1]								// The [Emitter.0] section defines the start of the emitter portion of an effect. An emitter creates a flow of particles, like water from a spigot, which are displayed in the effect.
	Lifetime=0.1, 0.1				// The length of time that an emitter emits particles. Measured in seconds.		
	Delay=0.00, 0.00					// The length of delay before the emitter begins emitting particles. Measured in seconds.
	Bounce=1.00							//The reaction of an emitter when it collides with the ground. The higher the number, the larger the bounce. If the parameter is set to 0, no reaction occurs.
	LOD=0						//Set the level of detail (LOD) to be 1 if you want the effect to disappear at a distance. Use this to improve performance, and apply it to small localized effects. The default is 0.
	Light=0								//If this is set to 1, the effect is treated as a light source. For example beacons and fireworks have this value set to 1. The default is 0.
	No Interpolate=0					//If this is set to 1, interpolation code is not used. Interpolation code attempts to avoid the graphics anomaly of a continuous stream appearing as a sequence of puffs, because the emitter of the stream is moving much faster than the frame rate. Sometimes this interpolation makes the effect appear detached from the emitter, so setting No Interpolate to 1 is one way of "attaching" an effect to an object securely. The default is 0.
	Rate=200.00, 500.00					//The rate at which particles are emitted. Measured in particles per second.
	X Emitter Velocity=0.00, 0.00		//The X Emitter Velocity, Y Emitter Velocity, and Z Emitter Velocity parameters define the velocity of the launched emitter in the X, Y, and Z directions, respectively. (The Y direction corresponds to vertical.) The larger the number, the greater the velocity of the emitter.
	Y Emitter Velocity=0.00, 0.00		// "" "" ""
	Z Emitter Velocity=0.00, 0.00		// "" "" ""
	Drag=0.00, 0.00						//Drag defines the affect of wind and gravity on the emitter. Negative numbers impart more drag.
	X Particle Velocity=0.00, 0.00		//The velocity at which particles travel in the X, Y, and Z directions, respectively.
	Y Particle Velocity=0.00, 0.00		// "" "" ""
	Z Particle Velocity=0.00, 0.00		// "" "" ""
	X Rotation=0.00, 0.00				//	The rate at which an effect rotates in the X, Y, or Z plane. To create particles that rotate around a center, combine these Rotation parameters with the Particle Offset parameters. The greater the offset and the greater the rotation, the more dramatic the effect. For example, some of the spectacular fireworks effects were done using these two parameters.
	Y Rotation=0.00, 0.00				// "" "" ""
	Z Rotation=0.00, 0.00				// "" "" ""
	X Offset=0.00, 0.00					//The distance that the emitter is offset from its point of origin in the X, Y, and Z directions.
	Y Offset=0.00, 0.00					// "" "" ""
	Z Offset=0.00, 0.00					// "" "" ""
	Pitch=0.00, 0.00					//The angle at which the emitter is tilted. A tilted emitter emits particles at an angle, a feature that is especially helpful when working with static particles. Measured in degrees.
	Bank=0.00, 0.00						//The bank angle of the emitter.
	Heading=0.00, 0.00					//The heading angle of the emitter.
	TemperatureRangeC=-9999.0,9999.0	//Set the check box if outside temperature is a factor. If so, the particles will only be emitted if the outside temperature is within the min/max range. This can be used to prevent, for example, steam appearing when the outside temperature is too warm for it to be visible.
	RenderType=0						//This value is specific for wake effects. Set it to 1 for wake.
									
[Particle.1]						//The [Particle.0] section defines the start of the first particle and the particle's behavior after it has been emitted. You can include sections for more than one particle (for example, [Particle.0], [Particle.1], and [Particle.2]).
	Lifetime=0.80, 1.00					//The length of time that the particle exists, in seconds.
	Type=19							//For normal particles the type should be set to 19. Some specific effects require a different number: see doc
	X Scale=1.50, 2.00				//The starting size of the particle in the X, Y, and Z directions. Measured in meters.
	Y Scale=1.50, 2.00				// "" "" ""
	Z Scale=1.50, 2.00				// "" "" ""
	X Scale Rate=0.80, 1.00			//The rate at which a particle grows from zero to its scale goal (see the [ParticleAttributes] section) in the X, Y, and Z directions. The larger the number, the faster the scaling.
	Y Scale Rate=0.80, 1.00			// "" "" ""
	Z Scale Rate=0.00, 0.00			// "" "" ""
	Drag=-999.0, -999.0				//Drag defines the effect of wind and gravity on the particles. Negative numbers impart more drag. For positive numbers, don't use a value greater than 1.00. For a reasonable effect of wind on dust particles use a value around -0.5.
	Color Rate=0.90, 1.00			//The first value gives the percentage of the lifetime of the particle that the particle will be colored with Color Start, between the first and second values the colors will cross-fade, and the second value gives the percentage of the lifetime after which the particle is colored Color End. The percentages are expressed as fractions, for example: 0.50 is 50 percent.
	X Offset=0.00, 0.00				//The distance that the emitted particles are offset from the emitter in the X, Y, and Z directions. These parameters can be combined with the Emitter Rotation parameters to create swirling particle effects. They can also be used to spread particles out over an area.
	Y Offset=0.00, 0.00				// "" "" ""
	Z Offset=0.00, 0.00				// "" "" ""
	Fade In=0.00, 0.00			//The moment during its lifetime that a particle fades in. Expressed as a percentage of total lifetime.
	Fade Out=0.30, 0.30				//The moment during its lifetime that a particle fades out. Expressed as a percentage of total lifetime.
	Rotation=-90.0, 90.0			//The rotation of a particle. It is best to use a negative number first and then a positive number to get the most variation in the amount of rotation.
	Shade=0							//An on/off toggle that determines whether the particle is darkened at night. It is used for night shading.
	Face=1, 1, 1					//The direction that the particles face. Pitch, bank, and heading are the constraints for the particles' facing movement. These are on/off switches because the particles either move in the corresponding direction, or they do not. To have the particles face you, use 1,1,1. If one of the values is 0, then the particles will be constrained in the corresponding axis. To have the particles remain perpendicular to the ground but still turn and face you, use 0,0,1.
	Ground Normal=0						//If this is set to 1 the particle will be rendered parallel to the ground surface. This is for such effects as wake, rotor wash, burn marks, and similar ground effects. If this is set then the Facing options above (Pitch, Bank and Heading) are ignored.
	EmittedEffectName=fx_WheelLandingE2	//The name of the effect initiated by this effect.
	Rotation Pitch=0.00,0.00			//The pitch to apply to the library object emitted by the effect. This applies only to the Debris tab.
	Rotation Bank=0.00, 0.00		//The bank to apply to the library object emitted by the effect.
	Rotation Heading=0.00, 0.00		//The heading to apply to the library object emitted by the effect.
	
[ParticleAttributes.1]				//The [ParticleAttributes] section defines the special attributes of a particle, such as color and texture.
	Blend Mode=1					//Blend mode specifies which blending mode is used to display the texture, which should be one of: 0: No Alpha, 1: Alpha blending, 2: Additive blending, 3: Multiply blending, see doc for details	
	Texture=fx_ASOBO_Dirt_SS.dds
	Bounce=0.00						//The reaction of a particle when it collides with the ground. The larger the number, the greater the bounce. If the parameter is set to 0, no reaction occurs. If it is set to 1.0 then it will come off the ground at the same velocity that it hit it. Use a value less than 1.0 to simulate the loss of energy due to the impact.
	Color Start=255, 255, 255, 50	//The initial color of a particle. The first three numbers define the red, green, and blue (RGB) values and the fourth number specifies the amount of alpha transparency (R, G, B, [00-255]).
	Color End=255, 255, 255, 20		//The final color "" "" ""
	Jitter Distance=0.00			//The distance that the particles jitter. If you don't want the particles to jitter, set the parameter to 0.
	Jitter Time=0.00				//The length of the delay before particles start to jitter. Measured in seconds.
	TempK=107.00					//The temperature of the particles, which defines how fast they rise or sink. To approximate room temperature, where particles neither rise nor sink, set TempK to 107 degrees. To make the particles rise, specify a temperature greater than 107; to make the particles sink, specify a temperature less than 107.
	TempRate=0.00					//The rate at which the particles cool or heat up. A negative value represents temperatures that are cooling. The faster particles cool, the sooner they fall back to the ground. A positive value represents temperatures that are rising. The faster particles heat up, the sooner they accelerate into the sky.
	uv1=0.00, 0.50					//The location of the lower-left corner of the texture on the texture page (X, Y) expressed as percentages. The lower-left corner of this texture starts at the left side of the page and 50 percent up its side.	
	uv2=0.50, 1.00					//The location of the upper-right corner of the texture lies on the texture page (X, Y) expressed as percentages. The upper-right corner of this texture is 50 percent to the right and at the very top of the page. See the diagram below.
	FPS=27.00
	CellStart=0
	CellEnd=63
	TextureSize=512
	CellSize=64
	X Scale Goal=8.00				//The maximum size in the X, Y, and Z directions that a particle scales to based on its scale rates in the X, Y, and Z directions, respectively.
	Y Scale Goal=8.00				// "" "" ""
	Z Scale Goal=0.00				// "" "" ""
	Extrude Length=0.00				//The length of each portion of an extruded effect.
	Extrude Pitch Max=0.00			//The pitch angle at which point the extrusion creates a new section. The smaller the number, the smoother the curves of your extrusions.
	Extrude Heading Max=0.00		//The heading angle at which point the extrusion creates a new section.
		






