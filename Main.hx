import game.objects.Player;

class Main extends hxd.App {
    override function init() {
        s2d.setFixedSize(800, 600);

        var player1 = new Player(s2d, Left);
        var player2 = new Player(s2d, Right);
    }

    static function main() {
        new Main();
    }
}