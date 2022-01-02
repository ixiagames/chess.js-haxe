package chess;

enum abstract Flags(String) from String {
    
    /**
     * a non-capture
     */
    var N = 'n';

    /**
     * a pawn push of two squares
     */
    var B = 'b';

    /**
     * an en passant capture
     */
    var E = 'e';

    /**
     * a standard capture
     */
    var C = 'c';

    /**
     * a promotion
     */
    var P = 'p';

    /**
     * kingside castling
     */
    var K = 'k';

    /**
     * queenside castling
     */
    var Q = 'q';

    /**
     * a pawn captured a piece on the 8th rank and promoted
     */
    var PC = "pc";

    public inline function hasCapture():Bool {
        return this == C || this == E || this == PC;
    }

}