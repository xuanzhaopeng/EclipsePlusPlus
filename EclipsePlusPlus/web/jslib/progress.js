/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

//全局变量
var xmlHttp; //XMLHttpRequest对象							
var bar_color = 'green'; //进度条背景颜色
var no_color = ""; //解决浏览器兼容设置的无颜色变量
var clear = ""; //清空背景颜色用的变量

function go() {
    createXMLHttpRequest(); //创建XMLHttpRequest
    checkDiv(); //检查processBar所在div
    var url = "progressBarServlet?task=first"; //提示：需要其他参数，可以再此处添加
    xmlHttp.open("GET", url, true);
    xmlHttp.onreadystatechange = goCallback; //设置回调函数
    xmlHttp.send(null);
}

//创建XMLHttpRequest
function createXMLHttpRequest() {
    if (window.ActiveXObject) {
        xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    else if (window.XMLHttpRequest) {
        xmlHttp = new XMLHttpRequest();
        clear = "&nbsp;"
        //进入进度条，默认设置第1个block，否则非IE内核浏览器进度条显示不正常
        var elem = document.getElementById("block1");
        elem.innerHTML = clear;
        elem.style.backgroundColor = no_color;
    }
}

//回调函数
function goCallback() {
    if (xmlHttp.readyState == 4) {
        if (xmlHttp.status == 200) {
            setTimeout("pollServer()", 1);
        }
    }
}

function pollServer() {
    createXMLHttpRequest();
    var url = "ProgressBarServlet?task=poll";
    xmlHttp.open("GET", url, true);
    xmlHttp.onreadystatechange = pollCallback; //设置回调函数
    xmlHttp.send(null);
}

function pollCallback() {
    if (xmlHttp.readyState == 4) {
        if (xmlHttp.status == 200) {
//得到当前进度百分比
            var percent_complete = xmlHttp.responseText;
            var index = percent_complete / 2; //100个百分点，显示在50个block上
            for (var i = 1; i <= index; i++) {
                var elem = document.getElementById("block" + i);
                elem.innerHTML = clear; //不设置innerHTML属性，非IE内核浏览器不会显示进度
                elem.style.backgroundColor = bar_color; //为block设置背景颜色
                document.getElementById("finish").innerHTML = "<font style=\"font - weight:bold; color:blue\" mce_style=\"font - weight:bold; color:blue\">" + percent_complete + "%" + "</font>";
            }
//只要进度小于100%继续每隔1000毫秒调用一次pollServer()
            if (percent_complete < 100) {
                setTimeout("pollServer()", 1000);
            } else if (percent_complete == 100) {
                alert("计算完毕");
                var redirectResultView = "result.jsp"; //要跳转的页面可以从servlet中传过来
                var urlInfo = "正在加载展示数据,如果没有跳转请点<a href=\"";
                urlInfo += redirectResultView;
                urlInfo += "\" mce_href = \"";
                urlInfo += redirectResultView;
                urlInfo += "\" > < font color = 'red' > 这里 < /font></a > ";
                document.getElementById("complete").innerHTML = urlInfo;
                window.location.href = redirectResultView;
                //window.location.reload();
            }
//定义percent超过100后的错误信息
            else if (percent_complete == 102) {
                alert("处理过程出现XX错误！");
            }
        }
    }
}

//检查processBar所在div，设置其是否显示
function checkDiv() {
    var progress_bar = document.getElementById("progressBar");
    if (progress_bar.style.visibility == "visible") {
        clearBar();
        document.getElementById("complete").innerHTML = "";
    } else {
        progress_bar.style.visibility = "visible"
    }
}

//清空processBar所在div
function clearBar() {
    for (var i = 1; i < 10; i++) {
        var elem = document.getElementById("block" + i);
        elem.innerHTML = clear;
        //elem.style.backgroundColor = "white";
    }
}
