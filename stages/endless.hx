function one():Void
	{
		var one:FlxSprite = new FlxSprite().loadGraphic(Paths.image('stages/endless/one'));
		one.scrollFactor.set();
		one.screenCenter();
		one.y -= 100;
		one.alpha = 0.5;

		add(one);
		FlxTween.tween(one, {y: one.y += 100, alpha: 0}, Conductor.crochet / 1000, {
			ease: FlxEase.cubeOut,
			onComplete: function(twn:FlxTween)
			{
				one.destroy();
			}
		});
	}
function two():Void
	{
		var two:FlxSprite = new FlxSprite().loadGraphic(Paths.image('stages/endless/two'));
		two.scrollFactor.set();
		two.screenCenter();
		two.y -= 100;
		two.alpha = 0.5;
		add(two);
		FlxTween.tween(two, {y: two.y += 100, alpha: 0}, Conductor.crochet / 1000, {
			ease: FlxEase.cubeOut,
			onComplete: function(twn:FlxTween)
			{
				two.destroy();
			}
		});
	}
function three():Void
	{
		var three:FlxSprite = new FlxSprite().loadGraphic(Paths.image('stages/endless/three'));
		three.scrollFactor.set();
		three.updateHitbox();
		three.screenCenter();
		three.y -= 100;
		three.alpha = 0.5;
		add(three);
		FlxTween.tween(three, {y: three.y += 100, alpha: 0}, Conductor.crochet / 1000, {
			ease: FlxEase.cubeOut,
			onComplete: function(twn:FlxTween)
			{
				three.destroy();
			}
		});
	}
function gofun():Void
	{
		var gofun:FlxSprite = new FlxSprite().loadGraphic(Paths.image('stages/endless/gofun'));
		gofun.scrollFactor.set();

		gofun.updateHitbox();

		gofun.screenCenter();
		gofun.y -= 100;
		gofun.alpha = 0.5;

		add(gofun);
		FlxTween.tween(gofun, {y: gofun.y += 100, alpha: 0}, Conductor.crochet / 1000, {
			ease: FlxEase.cubeInOut,
			onComplete: function(twn:FlxTween)
			{
				gofun.destroy();
			}
		});
	}

function create(){
    
        defaultCamZoom = 0.9;

        gf.visible = false;

        boyfriend.y += 334;
		boyfriend.x += 80;
		dad.y += 470;
		gf.y += 300;

        var funsky:FlxSprite = new FlxSprite(-600, -200).loadGraphic(Paths.image('stages/endless/sonicFUNsky'));
        funsky.setGraphicSize(Std.int(funsky.width * 0.9));
        funsky.antialiasing = true;
        funsky.scrollFactor.set(0.3, 0.3);
        funsky.active = false;
        add(funsky);

        var funbush:FlxSprite = new FlxSprite(-42, 171).loadGraphic(Paths.image('stages/endless/Bush2'));
        funbush.antialiasing = true;
        funbush.scrollFactor.set(0.3, 0.3);
        funbush.active = false;
        add(funbush);

        funpillarts2ANIM = new FlxSprite(182, -100); // Zekuta why...
        funpillarts2ANIM.frames = Paths.getSparrowAtlas('stages/endless/Majin Boppers Back');
        funpillarts2ANIM.animation.addByPrefix('bumpypillar', 'MajinBop2 instance 1', 24);
        // funpillarts2ANIM.setGraphicSize(Std.int(funpillarts2ANIM.width * 0.7));
        funpillarts2ANIM.antialiasing = true;
        funpillarts2ANIM.scrollFactor.set(0.6, 0.6);
        add(funpillarts2ANIM);
        funpillarts2ANIM.animation.play('bumpypillar');

        var funbush2:FlxSprite = new FlxSprite(132, 354).loadGraphic(Paths.image('stages/endless/Bush 1'));
        funbush2.antialiasing = true;
        funbush2.scrollFactor.set(0.3, 0.3);
        funbush2.active = false;
        add(funbush2);

        funpillarts1ANIM = new FlxSprite(-169, -167);
        funpillarts1ANIM.frames = Paths.getSparrowAtlas('stages/endless/Majin Boppers Front');
        funpillarts1ANIM.animation.addByPrefix('bumpypillar', 'MajinBop1 instance 1', 24);
        // funpillarts1ANIM.setGraphicSize(Std.int(funpillarts1ANIM.width * 0.7));
        funpillarts1ANIM.antialiasing = true;
        funpillarts1ANIM.scrollFactor.set(0.6, 0.6);
        funpillarts1ANIM.cameras = camHUD;
        add(funpillarts1ANIM);
        funpillarts1ANIM.animation.play('bumpypillar');

        var funfloor:FlxSprite = new FlxSprite(-340, 660).loadGraphic(Paths.image('stages/endless/floor BG'));
        funfloor.antialiasing = true;
        funfloor.scrollFactor.set(0.5, 0.5);
        funfloor.active = false;
        add(funfloor);

        funboppers1ANIM = new FlxSprite(1126, 903);
        funboppers1ANIM.frames = Paths.getSparrowAtlas('stages/endless/majin FG1');
        funboppers1ANIM.animation.addByPrefix('bumpypillar', 'majin front bopper1', 24);
        funboppers1ANIM.antialiasing = true;
        funboppers1ANIM.scrollFactor.set(0.8, 0.8);
        funboppers1ANIM.animation.play('bumpypillar');

        funboppers2ANIM = new FlxSprite(-293, 871);
        funboppers2ANIM.frames = Paths.getSparrowAtlas('stages/endless/majin FG2');
        funboppers2ANIM.animation.addByPrefix('bumpypillar', 'majin front bopper2', 24);
        funboppers2ANIM.antialiasing = true;
        funboppers2ANIM.scrollFactor.set(0.8, 0.8);
        funboppers2ANIM.animation.play('bumpypillar');


        add(funboppers1ANIM);
		add(funboppers2ANIM);
    

}
function stepHit(curStep:Int){
    switch curStep{
        case 888:
        camFollow.setPosition(GameDimensions.width / 2 + 50, GameDimensions.height / 4 * 3 + 280);
        FlxTween.tween(FlxG.camera, {zoom: FlxG.camera.zoom + 0.3}, 0.7, {ease: FlxEase.cubeInOut});
        three();
    case 891:
        FlxTween.tween(FlxG.camera, {zoom: FlxG.camera.zoom + 0.3}, 0.7, {ease: FlxEase.cubeInOut});
        two();
    case 896:
        FlxTween.tween(FlxG.camera, {zoom: FlxG.camera.zoom + 0.3}, 0.7, {ease: FlxEase.cubeInOut});
        one();
    case 899:
        camLocked = true;
        FlxTween.tween(FlxG.camera, {zoom: defaultCamZoom}, 0.7, {ease: FlxEase.cubeInOut});
        gofun();
        SONG.noteStyle = 'majinNOTES';
        removeStatics();
        generateStaticArrows(0, false);
        generateStaticArrows(1, false);
    }
    
}