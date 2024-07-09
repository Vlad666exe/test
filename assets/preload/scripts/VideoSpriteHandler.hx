import hxcodec.flixel.FlxVideo;

var video:FlxVideo;

function onCreatePost()
{
    if (!game.inCutscene)
    {
        quit();
        return;
    }

    var idx:Int = FlxG.game.getChildIndex(FlxG.game._inputContainer)-1;
    video = FlxG.game.getChildAt(idx);
}

function onUpdatePost()
{
    if (FlxG.keys.justPressed.ENTER)
    {
        video.stop();
        video.dispose();
        game.startCountdown();
        quit();
        return;
    }
}

function quit():Void
{
    this.active = false; // Optimizing
}