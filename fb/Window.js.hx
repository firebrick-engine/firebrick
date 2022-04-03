package fb;

import js.Browser;
import js.html.webgl.GL;
import js.html.CanvasElement;

class Window {
	public var width:Int = 1280;
	public var height:Int = 720;
	public var title:String = "";
	@:noPrivateAccess private static var window:Window;

	var canvas:CanvasElement = cast Browser.document.getElementById("webgl");
	var context:js.html.webgl.RenderingContext;

	public function new() {}

	public static function inst():Window {
		if(window == null) window = new Window();
		return window;
	}

	function create() {
		context = canvas.getContextWebGL();
		if(context == null) trace('Cannot initialize WebGL');

		canvas.width = width;
		canvas.height = height;
		canvas.title = title;
	}

	function begin() {
	}

	function end() {
		context.clear(GL.COLOR_BUFFER_BIT);
	}

	function clear(c:Color) {
		context.clearColor(c.r, c.g, c.b, c.a);
	}

	function closed():Bool {
		return false;
	}
}