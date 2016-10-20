package electron;
@:jsRequire("electron", "WebRequest") @:require(electron_main) @:require(electron) extern class WebRequest {
	/**
		The listener will be called with listener(details, callback) when a request is about to occur. The uploadData is an array of data objects: The callback has to be called with an response object:
	**/
	function onBeforeRequest(filter:Dynamic, listener:haxe.Constraints.Function):Void;
	/**
		The listener will be called with listener(details, callback) before sending an HTTP request, once the request headers are available. This may occur after a TCP connection is made to the server, but before any http data is sent. The callback has to be called with an response object:
	**/
	function onBeforeSendHeaders(filter:Dynamic, listener:haxe.Constraints.Function):Void;
	/**
		The listener will be called with listener(details) just before a request is going to be sent to the server, modifications of previous onBeforeSendHeaders response are visible by the time this listener is fired.
	**/
	function onSendHeaders(filter:Dynamic, listener:haxe.Constraints.Function):Void;
	/**
		The listener will be called with listener(details, callback) when HTTP response headers of a request have been received. The callback has to be called with an response object:
	**/
	function onHeadersReceived(filter:Dynamic, listener:haxe.Constraints.Function):Void;
	/**
		The listener will be called with listener(details) when first byte of the response body is received. For HTTP requests, this means that the status line and response headers are available.
	**/
	function onResponseStarted(filter:Dynamic, listener:haxe.Constraints.Function):Void;
	/**
		The listener will be called with listener(details) when a server initiated redirect is about to occur.
	**/
	function onBeforeRedirect(filter:Dynamic, listener:haxe.Constraints.Function):Void;
	/**
		The listener will be called with listener(details) when a request is completed.
	**/
	function onCompleted(filter:Dynamic, listener:haxe.Constraints.Function):Void;
	/**
		The listener will be called with listener(details) when an error occurs.
	**/
	function onErrorOccurred(filter:Dynamic, listener:haxe.Constraints.Function):Void;
}