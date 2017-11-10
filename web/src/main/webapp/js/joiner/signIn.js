	 //关于联动的js
	var pros = ["北京","上海","天津","重庆"];
	var citys = [
					["北京市1","北京市2","北京市3"],
					["上海市1","上海市2","上海市3"],
					["天津市1","天津市2","天津市3"],
					["重庆市1","重庆市2","重庆市3"],
				];
	// 省市数组

	var proEle = document.getElementById("pro");
	var cityEle = document.getElementById("city");
	//获取元素id并保存在变量里面
	for (var i = 0; i < pros.length; i++) {
           var op = new Option(pros[i], pros[i]);
           proEle.options.add(op);
    }
    //在页面加载时遍历省的数组，向第一个下拉单添加元素
	function change(obj) {
		var x = obj.selectedIndex;
		var cs = citys[x-1];
		cityEle.options.length = 0;
   //清空下拉单列表
        for (var i = 0; i < cs.length; i++) {
                var op = new Option(cs[i], cs[i]);
                cityEle.options.add(op);
        }
    }



    //同理学院专业的联动
    var colleges = ["音乐学院","美术学院","信科学院","数学学院"];
	var majors = [
					["美声","民族","通俗"],
					["素描","油画","雕塑"],
					["软件工程","中美","计科","教技"],
					["统计","数理"],
				];
	// var pIndex = 0;
	var colEle = document.getElementById("college");
	var majEle = document.getElementById("major");
	for (var i = 0; i < colleges.length; i++) {
           var op = new Option(colleges[i], colleges[i]);
           colEle.options.add(op);
    }
	function change2(obj) {
		var x = obj.selectedIndex;
		var ms = majors[x-1];
		majEle.options.length = 0;
        for (var i = 0; i < ms.length; i++) {
                var op = new Option(ms[i], ms[i]);
                majEle.options.add(op);
        }
    }

	 // //搜索功能的联动
	 // var types = ["性别","年级","意向部门","专业","状态"];
	 // var keywords = [
		//  ["男","女"],
		//  ["2018","2017","2016","2015","2014","研究生"],
		//  ["前端","后端","产品部"],
		//  ["软件工程","中美","计科","教技"],
		//  ["待审核","审核通过","审核未通过"],
	 // ];
	 // // var pIndex = 0;
	 // var typeEle = document.getElementById("type");
	 // var keyEle = document.getElementById("keyWord");
	 // for (var i = 0; i < types.length; i++) {
		//  var op = new Option(types[i], types[i]);
		//  typeEle.options.add(op);
	 // }
	 // function change3(obj) {
		//  var x = obj.selectedIndex;
		//  var xs = keywords[x-1];
		//  keyEle.options.length = 0;
		//  for (var i = 0; i < xs.length; i++) {
		// 	 var op = new Option(xs[i], xs[i]);
		// 	 keyEle.options.add(op);
		//  }
	 // }

    //获取本地照片的js
	function getImg(){
		var box = document.querySelector('img');
		//通过选择器获取到img
		var file = document.querySelector('input[type=file]').files[0];
		//获取到文本选择器
		var reader = new FileReader();
		reader.addEventListener("load",function(){
			box.src = reader.result;
		},false);
		if(file){
			reader.readAsDataURL(file);
		}
	}




	//提交信息弹框
	function tips(){
		if(confirm("确认提交您的报名信息")){
			alert("您的报名信息已经提交,录取及面试结果请继续关注我们的网站");
			location.href = "https://www.baidu.com";
		}
		else{
			//
		}
	}



	//手机号正则判断

	$(function(){
		$("#phone").blur(function(){
			$(".errow").css({
				display: 'none'
			});
			var phone = $(this).val();
			if(!(/^1[34578]\d{9}$/.test(phone))){
				$(".errow").css({
					display: 'block'
				});
			}
		});
	})
