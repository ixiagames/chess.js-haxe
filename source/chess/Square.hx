package chess;

abstract Square(String) from String {
    
    public var file(get, never):String;
    inline function get_file() return this.charAt(0);

    public var rank(get, never):String;
    inline function get_rank() return this.charAt(1);

    public var rankInt(get, never):Int;
    inline function get_rankInt() return this.charCodeAt(1) - 48;

}