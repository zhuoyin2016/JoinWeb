$(function(){
	
//	$.getJSON("data/normalAdmin.json",function(data){
//		$.each(data, function(index,administrator) {
//			$("#tabody").append("<tr>"+"<td>"+administrator["name"]+"</td>"+
//								"<td>"+administrator["class"]+"</td>"+
//								"<td>"+administrator["major"]+"</td>"+
//								"<td class='center'>"+administrator["permission"]+"</td>"+
//								"<td><a class='editAdmin'>编辑</a></td>"+
//								"<td><a class='deleteAdmin'>删除</a></td>"+"</tr>");
//			
//		});
//	});
	
	$("#super").on("click", function () {
                    var $this = $(this);
                    $this.addClass("admin-current").siblings().removeClass("admin-current");
                    $("#tabody").empty();
                    $.getJSON("data/superAdmin.json",function(data){
                       $.each(data, function(index,administrator) {
							$("#tabody").append("<tr>"+"<td>"+administrator["name"]+"</td>"+
								"<td>"+administrator["class"]+"</td>"+
								"<td>"+administrator["major"]+"</td>"+
								"<td class='center'>"+administrator["permission"]+"</td>"+
								"<td><a class='editAdmin'>编辑</a></td>"+
								"<td><a class='deleteAdmin'>删除</a></td>"+"</tr>");
						});
    				});
    });
	
	$("#advanced").on("click", function () {
                    var $this = $(this);
                    $this.addClass("admin-current").siblings().removeClass("admin-current");
                    $("#tabody").empty();
                    $.getJSON("data/advancedAdmin.json",function(data){
                       $.each(data, function(index,administrator) {
							$("#tabody").append("<tr>"+"<td>"+administrator["name"]+"</td>"+
								"<td>"+administrator["class"]+"</td>"+
								"<td>"+administrator["major"]+"</td>"+
								"<td class='center'>"+administrator["permission"]+"</td>"+
								"<td><a class='editAdmin'>编辑</a></td>"+
								"<td><a class='deleteAdmin'>删除</a></td>"+"</tr>");
						});
    				});
    });
    
    $("#normal").on("click", function () {
                    var $this = $(this);
                    $this.addClass("admin-current").siblings().removeClass("admin-current");
                    $("#tabody").empty();
                    $.getJSON("data/normalAdmin.json",function(data){
                       $.each(data, function(index,administrator) {
							$("#tabody").append("<tr>"+"<td>"+administrator["name"]+"</td>"+
								"<td>"+administrator["class"]+"</td>"+
								"<td>"+administrator["major"]+"</td>"+
								"<td class='center'>"+administrator["permission"]+"</td>"+
								"<td><a class='editAdmin'>编辑</a></td>"+
								"<td><a class='deleteAdmin'>删除</a></td>"+"</tr>");
						});
    				});
    });
    
    $("#normal").click();
    
    $("#editable-sample_new").on("click",function(){
    				$("#tabody").prepend("<tr><form action='#'>"+
    									"<td><input type='text' name='name'></td>"+
    									"<td><input type='text' name='class'></td>"+
    									"<td><input type='text' name='major'></td>"+
    									"<td><select name='permission'><option value='super'>普通管理员</option><option value='advanced'>高级管理员</option><option value='normal'>超级管理员</option></select></td>"+
    									"<td><a class='saveAdmin'>保存</a></td>"+
										"<td><a class='cancelAdmin'>取消</a></td>"+"</form></tr>");
    });
    
    $("#tabody").on("click",".cancelAdmin",function(){
					$(this).parent().parent().remove();
    });
    
    $("#tabody").on("click",".editAdmin",function(){
    				var $parents=$(this).parent().parent();
    				var name=$parents.children().eq(0).html();
    				var clasc=$parents.children().eq(1).html();
    				var major=$parents.children().eq(2).html();
//  				var permission=$parents.children().eq(3).html();
    				$parents.replaceWith("<tr><form action='#'>"+
    									"<td><input type='text' name='name' value='"+name+"'></td>"+
    									"<td><input type='text' name='class' value='"+clasc+"'></td>"+
    									"<td><input type='text' name='major' value='"+major+"'></td>"+
    									"<td><select name='permission'><option value='super'>普通管理员</option><option value='advanced'>高级管理员</option><option value='normal'>超级管理员</option></select></td>"+
    									"<td><a class='saveAdmin'>保存</a></td>"+
										"<td><a class='backAdmin'>取消</a></td>"+"</form></tr>");
    });
    
    $("#tabody").on("click",".backAdmin",function(){
    				$(".admin-current").click();
    });
    
    $("#tabody").on("click",".saveAdmin",function(){
    				
    });
    
   
    
});
