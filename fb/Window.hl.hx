package fb;

class Window {
	public var width:Int = 1280;
	public var height:Int = 720;
	public var title:String = "";
	private static var window:Window;

	public function new() {}

	function create() {
		Raylib.setTraceLogLevel(Raylib.TraceLogLevel.NONE);
		Raylib.initWindow(width, height, title);
	}

	function clear(c:Color) {
		Raylib.clearBackground({r: c.r, g: c.b, b: c.b, a: c.a});
	}

	public static function inst():Window {
		if(window == null) window = new Window();
		return window;
	}
}