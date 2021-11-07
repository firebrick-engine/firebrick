package fb.graphics;

import cpp.ConstCharStar;

@:buildXml("build-files/Build.xml")
@:include("include/dough.h")
@:native("Dough::Window")
extern class Window
{
    var Width:Int;
    var Height:Int;
    var Title:ConstCharStar;
    var Resizable:Bool;
    var Closed:Bool;

    public static function Create(width:Int, height:Int, title:ConstCharStar, resizable:Bool):Window;
    public function BeginDrawing():Void;
    public function EndDrawing():Void;
    public function UpdateSize():Void;
    public function UpdateTitle():Void;
}