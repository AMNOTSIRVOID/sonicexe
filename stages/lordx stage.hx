defaultCamZoom = 0.8;
function create() {
	// dad.scrollFactor.set(1.5, 1);
	// boyfriend.scrollFactor.set(1.5, 1);
	dad.y += 190 - 50;
	dad.x = -113 - 50;

	boyfriend.y += 150 - 25;
	boyfriend.x += 50;
	boyfriend.scale.x = 1.2;
	boyfriend.scale.y = 1.2;

	dad.scrollFactor.set(1.53, 1);
	boyfriend.scrollFactor.set(1.53, 1);

	var sky:FlxSprite = new FlxSprite(-1900, -1006).loadGraphic(Paths.image('stages/Lordx/sky'));
	sky.setGraphicSize(Std.int(sky.width * 0.5));
	sky.antialiasing = true;
	sky.scrollFactor.set(1, 1);
	sky.active = false;
	add(sky);

	var hills1:FlxSprite = new FlxSprite(-1440, -806 + 200).loadGraphic(Paths.image('stages/Lordx/hills1'));
	hills1.setGraphicSize(Std.int(hills1.width * 0.5));
	hills1.scale.x = 0.6;
	hills1.antialiasing = true;
	hills1.scrollFactor.set(1.1, 1);
	hills1.active = false;
	add(hills1);

	var floor:FlxSprite = new FlxSprite(-1400, -496).loadGraphic(Paths.image('stages/Lordx/floor'));
	floor.setGraphicSize(Std.int(floor.width * 0.5));
	floor.antialiasing = true;
	floor.scrollFactor.set(1.5, 1);
	floor.scale.x = 1;
	floor.active = false;
	add(floor);

	eyeflower = new FlxSprite(100 - 500, 100);
	eyeflower.frames = Paths.getSparrowAtlas('stages/Lordx/WeirdAssFlower_Assets');
	eyeflower.animation.addByPrefix('animatedeye', 'flower', 30, true);
	eyeflower.setGraphicSize(Std.int(eyeflower.width * 0.8));
	eyeflower.antialiasing = true;
	eyeflower.scrollFactor.set(1.5, 1);
	add(eyeflower);

	hands = new FlxSprite(100 - 300, -400 + 25);
	hands.frames = Paths.getSparrowAtlas('stages/Lordx/NotKnuckles_Assets');
	hands.animation.addByPrefix('handss', 'Notknuckles', 30, true);
	hands.setGraphicSize(Std.int(hands.width * 0.5));
	hands.antialiasing = true;
	hands.scrollFactor.set(1.5, 1);
	add(hands);

	var smallflower:FlxSprite = new FlxSprite(-1500, -506).loadGraphic(Paths.image('stages/Lordx/smallflower'));
	smallflower.setGraphicSize(Std.int(smallflower.width * 0.6));
	smallflower.antialiasing = true;
	smallflower.scrollFactor.set(1.5, 1);
	smallflower.active = false;
	add(smallflower);

	var bFsmallflower:FlxSprite = new FlxSprite(-1500 + 300, -506 - 50).loadGraphic(Paths.image('stages/Lordx/smallflower'));
	bFsmallflower.setGraphicSize(Std.int(bFsmallflower.width * 0.6));
	bFsmallflower.antialiasing = true;
	bFsmallflower.scrollFactor.set(1.5, 1);
	bFsmallflower.active = false;
	bFsmallflower.flipX = true;
	add(bFsmallflower);

	var smallflowe2:FlxSprite = new FlxSprite(-1500, -506).loadGraphic(Paths.image('stages/Lordx/smallflowe2'));
	smallflowe2.setGraphicSize(Std.int(smallflower.width * 0.6));
	smallflowe2.antialiasing = true;
	smallflowe2.scrollFactor.set(1.5, 1);
	smallflowe2.active = false;
	add(smallflowe2);

	var tree:FlxSprite = new FlxSprite(-1900 + 650 - 100, -1006 + 350).loadGraphic(Paths.image('stages/Lordx/tree'));
	tree.setGraphicSize(Std.int(tree.width * 0.7));
	tree.antialiasing = true;
	tree.scrollFactor.set(1.5, 1);
	tree.active = false;
	add(tree);

	hands.animation.play('handss', true);
	eyeflower.animation.play('animatedeye', true);
	PlayState.gf.visible = false;
}
