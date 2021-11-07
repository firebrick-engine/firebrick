import fb.graphics.Graphics.Window;

class Main
{
    static function main()
    {
        var window:Window;
        window = Window.Create(1280, 720, "", true);
        while(!window.Closed)
        {
            window.BeginDrawing();
            window.EndDrawing();
        }
    }
}