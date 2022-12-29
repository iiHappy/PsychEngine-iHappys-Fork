package;

import options.OptionsState;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxSubState;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import flixel.effects.FlxFlicker;
import lime.app.Application;
import flixel.addons.transition.FlxTransitionableState;
import flixel.tweens.FlxTween;
import flixel.util.FlxTimer;

class FlashingState extends MusicBeatState
{
	public static var leftState:Bool = false;

	var warnText:FlxText;
	override function create()
	{
		super.create();

		var bg:FlxSprite = new FlxSprite().makeGraphic(FlxG.width, FlxG.height, FlxColor.BLACK);
		add(bg);

		warnText = new FlxText(0, 0, FlxG.width,
			"Hello, Thank you for downloading Happy Engine!\n
			This fork contains some flashing lights too!\n
			Anyways, On the light note. This fork has been worked on since April and I'll like to give you a thank you!\n
			Have Fun!\n
			Press ENTER to continue. Press SPACE to go to options.",
			32);
		warnText.setFormat("PhantomMuff 1.5", 32, FlxColor.WHITE, CENTER);
		warnText.screenCenter(Y);
		add(warnText);
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if(!leftState) {
			if(FlxG.keys.pressed.ENTER) {
				leftState = true;
				FlxTransitionableState.skipNextTransIn = true;
				FlxTransitionableState.skipNextTransOut = true;
					FlxG.sound.play(Paths.sound('confirmMenu'));
					FlxFlicker.flicker(warnText, 1, 0.1, false, true, function(flk:FlxFlicker) {
						new FlxTimer().start(0.5, function (tmr:FlxTimer) {
							MusicBeatState.switchState(new TitleState());
						});
					});
				} else 
				if(FlxG.keys.pressed.SPACE) {
					OptionsState.goToFlashing = true;
					FlxG.sound.play(Paths.sound('cancelMenu'));
					MusicBeatState.switchState(new OptionsState());
					}
				}
			}
		}

