package fb;

class Scene {
	var obj:Array<Dummy> = [];

	public function new() {}

	public function add(o:Dummy) {
		obj.push(o);
	}
}