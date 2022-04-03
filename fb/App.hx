package fb;

class App {
	public var bgColor:Color;
	public var scene:Scene;

	public function preInit() {}
	public function onInit() {}
	public function onUpdate() {}

	public function new() {
		@:privateAccess Window.inst();
		
		preInit();

		@:privateAccess Window.inst().create();
		scene = new Scene();

		onInit();

		mainLoop();
	}

	#if hl
	private function mainLoop() {
		while(!Raylib.windowShouldClose()) {
			onUpdate();
			
			Raylib.beginDrawing();
			{
				if(bgColor != null) @:privateAccess Window.inst().clear(bgColor); else @:privateAccess Window.inst().clear(new Color(255, 0, 0, 255));
			
				for(o in @:privateAccess scene.obj) {
					o.draw();
				}		
			}
			Raylib.endDrawing();
		}

		Raylib.closeWindow();
	}
	#elseif js
	private function mainLoop () {
		var updt:(Float) -> Void;
		function update(time:Float) {
			onUpdate();

			@:privateAccess Window.inst().begin();
			{
				if(bgColor != null) @:privateAccess Window.inst().clear(bgColor); else @:privateAccess Window.inst().clear(new Color(255, 0, 0, 255));

				for(o in @:privateAccess scene.obj) {
					o.draw();
				}
			}
			@:privateAccess Window.inst().end();
			
			js.Browser.window.requestAnimationFrame(updt);
		}
		updt = update;
		updt(0);
	}
	#end
}