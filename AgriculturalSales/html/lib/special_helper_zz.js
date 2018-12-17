zz_TUBIAO_Y = function(id,param,colors,inline){
	var num=0;
	var sum = 0;
	var width = $("#"+id).data("width");
	var style = " overflow: hidden;position: absolute;top: 0; right: 0;width: 50%;height: 50%;transform-origin: 0% 100%; ";
	var html = "<ul style='position: relative;padding: 0;width:"+width+";height:"+width+";border-radius: 50%;list-style: none;overflow: hidden;'>";
	for(x in param){
		sum += Number(param[x]);
	}
	var c = 0;
	var rot = 0;
	for(x in param){
		var b = param[x]/(sum*1.0)*360;
		var n = Math.floor(b/90);
		var y = b%90;
		var cl = colors[c]==undefined?"while":colors[c];
		for(var i =0;i<n;i++){
			html += " <li style='" + style + "transform:rotate("+rot+"deg) skewY(0deg);background:"+cl+";border:1px solid "+cl+"'> </li> ";
			rot += 90;
		}
		html += " <li style='" + style + "transform:rotate("+rot+"deg) skewY("+Number(y-90)+"deg);background:"+cl+";border:1px solid "+cl+"'> </li> ";
		rot += y;
		c++;
	}
	html += "</ul>";
	html += "<ul style='list-style-type:none;padding-left:0;'>";
	c=0;
	var st = inline?"display:inline-block;margin-right:10px;":"";
	for(x in param){
		var cl = colors[c]==undefined?"while":colors[c];
		html += "<li style='"+st+"'><span style='display: inline-block;width:1em;height:1em;background-color:"+cl+"'></span>"+x+":"+param[x]+"</li>"
		c++;
	}
	html += "</ul>";	
	$("#"+id).html(html);
}

zz_TUBIAO_ZHU = function(id,param,colors){
	
}