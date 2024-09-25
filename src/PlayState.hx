package;

import flixel.FlxSprite;
import flixel.FlxState;

class PlayState extends FlxState
{
	override public function create()
	{
		super.create();

		var sprite = new FlxSprite(AssetPaths.meme__jpg);
		sprite.screenCenter();
		add(sprite);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
