package chess;

typedef Move = {

    to:Square,
    from:Square,
    ?promotion:String,
    ?color:String,
    ?flags:Flags,
    ?piece:String,
    ?captured:String,
    ?san:String

}