package options;

#if desktop
import Discord.DiscordClient;
#end
import flash.text.TextField;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.addons.display.FlxGridOverlay;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.math.FlxMath;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import lime.utils.Assets;
import flixel.FlxSubState;
import flash.text.TextField;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.util.FlxSave;
import haxe.Json;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxTimer;
import flixel.input.keyboard.FlxKey;
import flixel.graphics.FlxGraphic;
import Controls;

using StringTools;

class ModifiedSubState extends BaseOptionsMenu
{
	public function new()
	{
		title = 'Happy Engine';
		rpcTitle = 'Happy Engine - Custom Settings'; //for Discord Rich Presence

		var option:Option = new Option('Camera Moving With Animations',
			'If unchecked, Note Following will be disabled. (NOTE: COMING IN 1.1)',
			'camMove',
			'bool',
			true);
		addOption(option);

		var option:Option = new Option('New Icon Bop',
			'If checked, the icons will bop in a different way.',
			'newIconBop',
			'bool',
			true);
		addOption(option);

		var option:Option = new Option('Hide Time Bar',
			'hides the time.',
			'hideTime',
			'bool',
			true);
		addOption(option);

		var option:Option = new Option('Cool Health Bar Thingy',
			'If checked, the health bar will have a more and cleaner touch.',
			'coolhealthbar',
			'bool',
			true);
		addOption(option);

		var option:Option = new Option('Vanilla Health Colors',
			'If checked, the game will have the default health colors.',
			'colorBars',
			'bool',
			true);
		addOption(option);

		var option:Option = new Option('Time Bar:',
		"What should the Time Bar display?",
		'timeBarType',
		'string',
		'Song and Time Left',
		['Song and Time Left', 'Song and Time Elapsed', 'Song, Time Left and Elapsed', 'Song Name']);
		addOption(option);

		super();
	}
}