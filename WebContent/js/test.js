/**
 * 
 */
var errorString = "Please input a positive integer.";
    var arr = ["A", "B", "C", "D"];
    
    function count() {
        max = arr.length; //max， 全局变量
        document.getElementById("num").innerHTML = arr[parseInt(max * Math.random())];
    }

    function start()
    {
        timeId = setInterval("count();", 100);
    }
    function stop() {
        clearInterval(timeId);
    }
    function middle() {
		
	}