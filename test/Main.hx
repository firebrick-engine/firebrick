import fb.Window;
import fb.App;

class Main extends App {
	override function preInit() {
		Window.inst().width = 800;
		Window.inst().height = 600;
		Window.inst().title = "Firebrick";
	}

	static function main() {
		new Main();
	}
}