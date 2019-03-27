//var base = +new Date(1968, 9, 3);
//var oneDay = 24 * 3600 * 1000;
 var dom = document.getElementById("container");
    var myChart = echarts.init(dom);
    
   
    
    
    
    
    var app = {};
    option = null;
var height = [];

//var data = [Math.random() * 300];
var diff = [];

//Gets the browser specific XmlHttpRequest Object
function getXmlHttpRequestObject() {
	if (window.XMLHttpRequest) {
		return new XMLHttpRequest();
	} else if(window.ActiveXObject) {
		return new ActiveXObject("Microsoft.XMLHTTP");
	} else {
		alert("Your Browser Sucks!\nIt's about time to upgrade don't you think?");
	}
}
function createAjaxObj(){
  var httprequest=false
  if (window.XMLHttpRequest)
  { // if Mozilla, Safari etc
    httprequest=new XMLHttpRequest()    //创建对象
    if (httprequest.overrideMimeType)
      httprequest.overrideMimeType('text/xml')
   }
   else if (window.ActiveXObject)
   { // if IE
     try {
       httprequest=new ActiveXObject("Msxml2.XMLHTTP");
     }
     catch (e){
       try{
          httprequest=new ActiveXObject("Microsoft.XMLHTTP");
       }
       catch (e){}
     }
   }
   return httprequest
}
//Our XmlHttpRequest object to get the auto suggest
var searchReq = createAjaxObj();
//Called from keyup on the search textbox.
//Starts the AJAX request.
//sor=null;
function searchSuggest() {

	
	if (searchReq.readyState == 4 || searchReq.readyState == 0) {

		searchReq.onreadystatechange = handleSearchSuggest;  //回调函数
//		searchReq.open("GET", 'search?timeOption=ok', true);
		searchReq.open("GET", 'search', true);
		searchReq.send(null);
	}		
}

//Called when the AJAX response is returned.
//
function handleSearchSuggest() {
	//if(searchReq.status==200)window.alert(searchReq.readyState+" "+searchReq.status);	      
	if(searchReq.readyState == 4 & searchReq.status==200) {

		var str = searchReq.responseText.split("\n");//去除最后的回车符
		for(i=0; i < str.length - 1; i=i+2) {

			height.push(Math.abs(str[i]));  //填入fee数据
			diff.push(str[i+1]);  //填入时间
			//ss.innerHTML += biaoge;
			
		}
		console.log(str);
		console.log(height);
		console.log(diff);

		
		
		
		option = {
			    tooltip: {
			        trigger: 'axis',
			        position: function (pt) {
			            return [pt[0], '10%'];
			        }
		    },
		    title: {
		        
			        text: 'Bitcoin transaction records',
			    },
			    toolbox: {
			        feature: {
			            dataZoom: {
			                yAxisIndex: 'none'
			            },
			            dataView: { //数据视图
	                        show: true
	                    },
			            restore: {},
			            saveAsImage: {}
			        }
			    },
			    xAxis: {
			        type: 'category',
			        boundaryGap: false,
		        data: height,
			        name:'Height',
			     
			    },
			    yAxis: {
			        type: 'value',
			        name:'Difficulty',
//			        boundaryGap: [0, '100%']
			    },
			    legend: {
			        data:['Difficulty']
			    },
			    dataZoom: [{
			        type: 'inside',
			        start: 0,
			        end: 100
			    }, {
			        start: 0,
			        end: 100,
			        height: 15,//组件高度
			        handleIcon: 'M10.7,11.9v-1.3H9.3v1.3c-4.9,0.3-8.8,4.4-8.8,9.4c0,5,3.9,9.1,8.8,9.4v1.3h1.3v-1.3c4.9-0.3,8.8-4.4,8.8-9.4C19.5,16.3,15.6,12.2,10.7,11.9z M13.3,24.4H6.7V23h6.6V24.4z M13.3,19.6H6.7v-1.4h6.6V19.6z',
			        handleSize: '80%',
			        handleStyle: {
			            color: '#fff',
			            shadowBlur: 3,
			            shadowColor: 'rgba(0, 0, 0, 0.6)',
			            shadowOffsetX: 2,
		            shadowOffsetY: 2
			        }, 
			        handleColor:'#ddd',//h滑动图标的颜色  
			        handleStyle:{  
	                    borderColor: "#cacaca",  
	                    borderWidth: "1",  
	                    shadowBlur: 2,  
	                    background: "#ddd",  
	                    shadowColor: "#ddd",  
	                },  
	                fillerColor: new echarts.graphic.LinearGradient(1, 0, 0, 0, [{  
	                    //给颜色设置渐变色 前面4个参数，给第一个设置1，第四个设置0 ，就是水平渐变  
	                    //给第一个设置0，第四个设置1，就是垂直渐变  
	                    offset: 0,  
	                    color: '#1eb5e5'  
	                }, {  
	                    offset: 1,  
	                    color: '#5ccbb1'  
	                }]),  
			    }],
			    series: [
			        {
			            name:'Difficulty',
			            type:'line',
		            smooth:true,
			            symbol: 'none',
			            sampling: 'average',
			            itemStyle: {
			                normal: {
			                    color: 'rgb(255, 70, 131)'
			                }
			            },
			            areaStyle: {
			                normal: {
			                    color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
			                        offset: 0,
			                        color: 'rgb(255, 158, 68)'
			                    }, {
			                        offset: 1,
			                        color: 'rgb(255, 70, 131)'
			                    }])
			                }
			            },
			            data: diff
			        }
			    ]
			};
			
			if (option && typeof option === "object") {
			    myChart.setOption(option, true);
			}
		}
	    
	}
	



//Mouse over function
function suggestOver(div_value) {
	div_value.className = 'suggest_link_over';
}
//Mouse out function
function suggestOut(div_value) {
	div_value.className = 'suggest_link';
}
//Click function
function setSearch(value) {
	document.getElementById('txtSearch').value = value;
	document.getElementById('search_suggest').innerHTML = '';
}