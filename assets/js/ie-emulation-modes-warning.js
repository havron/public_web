/*
 * Copyright 2014-2015 Twitter, Inc.
 *
 * Licensed under the Creative Commons Attribution 3.0 Unported License. For
 * details, see https://creativecommons.org/licenses/by/3.0/.
 */
(function(){function b(){var f=/MSIE ([0-9.]+)/.exec(window.navigator.userAgent);if(f===null){return null}var h=parseInt(f[1],10);var g=Math.floor(h);return g}function e(){var f=new Function("/*@cc_on return @_jscript_version; @*/")();if(f===undefined){return 11}if(f<9){return 8}return f}var c=window.navigator.userAgent;if(c.indexOf("Opera")>-1||c.indexOf("Presto")>-1){return}var d=b();if(d===null){return}var a=e();if(d!==a){window.alert("WARNING: You appear to be using IE"+a+" in IE"+d+" emulation mode.\nIE emulation modes can behave significantly differently from ACTUAL older versions of IE.\nPLEASE DON'T FILE BOOTSTRAP BUGS based on testing in IE emulation modes!")}})();