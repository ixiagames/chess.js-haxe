package chess;

import haxe.extern.EitherType;
import haxe.extern.Rest;

@:jsRequire("chess.js", "Chess")
extern class Chess {

    public function new(?fen:String);
    public function load_pgn(pgn:String, ?options:{ newline_char:String, sloppy:Bool }):Bool;
    public function pgn(?options:{ max_width:Int, newline_char:String }):String;
    public function ascii():String;
    public function header(?key:String, keys:Rest<String>):Dynamic;
    public function history(?options:{ verbose:Bool }):EitherType<Array<String>, Array<Move>>;
    public function move(move:EitherType<String, Move>, ?options:{ sloppy:Bool }):Move;
    public function moves(?options:{ verbose:Bool }):EitherType<Array<String>, Array<Move>>;
    public function turn():String;
    public function game_over():Bool;
    public function in_checkmate():Bool;
    public function in_draw():Bool;
    public function in_stalemate():Bool;
    public function in_threefold_repetition():Bool;
    public function insufficient_material():Bool;
    public function clear(keepHeader:Bool):Void;
    
}