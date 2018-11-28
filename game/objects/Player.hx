package game.objects;

import game.utils.enums.PlayerSide;

class Player extends h2d.Graphics {
    static var playerSize: { x: Float, y: Float } = { x: 30, y: 100 };

    public function new(scene: h2d.Scene, side: PlayerSide) {
        super(scene);

        var sideString: String;
        var playerSize = Player.playerSize;

        switch (side) {
            case Left:
                this.x = 0;
                this.colorKey = 0xFF0000;
                sideString = "Left";

            case Right:
                this.x = 30;
                this.colorKey = 0x0000FF;
                sideString = "Right";

        }

        this.name = "Player[" + sideString + "]";
        this.y = (scene.height / 2) - (playerSize.y / 2);

        beginFill(this.colorKey);
            drawRect(x, y, playerSize.x, playerSize.y);
        endFill();
    }
}