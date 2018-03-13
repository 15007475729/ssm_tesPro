<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2018/1/26
  Time: 10:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <script src="js/vue.js"></script>

</head>
<body>
<div>
    <select style="width: 100px" aria-controls="dataTable" class="form-control input-sm" id="optionBox"></select>
    <input type="text" id="fuzzyVal" >
    <button class="btn2 btn2-default" onclick="queryFuzzy()">搜索</button>
</div>
<button class="btn btn-success glyphicon glyphicon-plus" data-toggle="modal" data-target="#addrow" onclick="getClazzName();">增加</button>
<table id="student-table" class="table responsive-table">

    <tr>
        <th  v-for="key in keyList">{{key}}</th>
        <th>操作</th>
    </tr>
    <tr v-for="obj in table.list">
        <th>{{obj.cid}}</th><%--班级--%>
        <th>{{obj.gid}}</th><%--学号--%>
        <th>{{obj.id}}</th><%--序号--%>
        <th>{{obj.sname}}</th><%--姓名--%>
        <th>{{obj.ssex}}</th><%--性别--%>
        <th>
            <p v-if="obj.state==1">就读</p>
            <p v-else>毕业</p>
        </th><%--状态--%>
        <th>{{obj.stel}}</th><%--电话--%>
        <th>
            <button class="btn btn-danger glyphicon glyphicon-trash" v-on:click="delStudent(obj.id)">删除</button>
            <button class="btn btn-warning glyphicon glyphicon-pencil"  data-toggle="modal" data-target="#updaterow" v-on:click="queryOne(obj.id)">修改</button>
        </th><%--电话--%>

    </tr>
</table>
<%--分页--%>
<ul class="pager">
    <li class="previous"><a href="javascript:pager(0)">&larr; Older</a></li>
    <li class="next"><a href="javascript:pager(1)">Newer &rarr;</a></li>
</ul>




<div class="modal fade" id="addrow" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="exampleModalLabel">增加学生信息</h4>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-group">
                        <label class="control-label">班级</label>
                        <select style="width: 100px" aria-controls="dataTable" class="form-control input-sm" id="cid"></select>
                    </div>
                    <div class="form-group">
                        <label class="control-label">姓名</label>
                        <input type="text" class="form-control"  id="sname">
                    </div>
                    <div class="form-group">
                        <label class="control-label">性别</label>
                        <div>
                            <label class="radio-inline">
                                <input type="radio" name="ssex" value="男" checked="checked"> 男 </label>
                            <label class="radio-inline">
                                <input type="radio" name="ssex" value="女"> 女 </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label">状态</label>
                        <select style="width: 100px" aria-controls="dataTable" class="form-control input-sm" id="state">
                            <option value="1">就读</option>
                            <option value="2">毕业</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label  class="control-label">电话</label>
                        <input type="text" class="form-control"  id="stel">
                    </div>

                </form>
            </div>
            <div class="modal-footer">
                <button class="btn btn-lg btn-primary btn-block" type="submit" class="btn btn-default" id="addStudentBtn" data-dismiss="modal">确定</button>
                <button type="button" class="btn btn-primary">取消</button>
            </div>
        </div>
    </div>
</div>



<div class="modal fade" id="updaterow" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">修改学生信息</h4>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-group">
                        <label class="control-label">班级</label>
                        <select style="width: 100px" aria-controls="dataTable" class="form-control input-sm" id="ucid"></select>
                    </div>
                    <div class="form-group">
                        <label class="control-label">姓名</label>
                        <input type="text" class="form-control"  id="usname">
                    </div>
                    <div class="form-group">
                        <label class="control-label">状态</label>
                        <select style="width: 100px" aria-controls="dataTable" class="form-control input-sm" id="ustate">
                            <option value="1">就读</option>
                            <option value="2">毕业</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label  class="control-label">电话</label>
                        <input type="text" class="form-control"  id="ustel">
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button class="btn btn-lg btn-primary btn-block" type="submit" class="btn btn-default" id="updateStudentBtn" data-dismiss="modal">确定</button>
                <button type="button" class="btn btn-primary">取消</button>
            </div>
        </div>
    </div>
</div>






<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>

<script type="text/javascript">
    var obj={};
    var vm = new Vue({
        el: "#student-table",
        data: {
            table: {list: [], count: 3, page: 1, max: 0},
            keyList:[],
            sname: "111",
            sid: ""
        },
        methods: {
            //查询数据方法
            querylist: function (term,val) {
                var _this = this;
                $.ajax({
                    url: "student/queryAll.action",
                    data:{page:_this.table.page,count:_this.table.count,term:term,val:val},
                    dataType: "JSON",
                    type: "post",
                    success: function (data) {
                        _this.table.list = data;
                        var obj ={};
                        for (var key in data) {
                            obj=data[key];
                        }
                        _this.getkeyList(obj);
                    }
                })
            },
            //查询条数
            getCount:function(){
                var _this = this;
                $.ajax({
                    url:"student/getCount.action",
                    type:"post",
                    success:function(data){
                        _this.table.max = data;
                    }
                })
            },
            //获得表里的列名
            getkeyList:function(obj){
                var _this = this;
                _this.keyList=[];
                for (var key in obj) {
                    _this.keyList.push(key);
                }
                this.searchInit(_this.keyList);
            },
            //插列名
            searchInit:function(obj){
                var _this = this;
                $.each(_this.keyList, function(index, obj) {
                    $("#optionBox").append("<option value='"+obj+"'>"+obj+"</option>");
                });
            },
            //删除方法
            delStudent:function(id){
                $.ajax({
                    url: "student/delStudent.action",
                    data:{id:id},
                    type: "post",
                    success: function (data) {
                        queryFuzzy();
                    }
                })
            },
            //查询单个
            queryOne:function(id){
                getClazzName();
                $.ajax({
                    url:"student/queryOne.action",
                    data:{id:id},
                    type:"post",
                    dataType: "JSON",
                    success:function (data) {
                        obj = data
                        $("#usname").val(data.sname);
                        $("#ustel").val(data.stel);
                        // $("#ucid").val(data.cid);
                        // $("#ustate").val(data.state);
                    }

                })
            }
        },
        //初始化调用方法
        created: function () {
            this.querylist(null,null);
            this.getCount();
        }
    })

    //搜索，模糊查询
    function queryFuzzy(){
        //生成条件
        if($("#fuzzyVal").val()!=""&&$("#fuzzyVal").val()!=null){
            vm.querylist($("#optionBox").val(),$("#fuzzyVal").val());
        }else{
            vm.querylist(null,null);
        }

    }

    //添加方法
    $('#addStudentBtn').click(function(){
        var cid = $("#cid").val();
        var sname = $("#sname").val();
        var ssex = document.getElementsByName("ssex");
        var selectvalue="";   //  selectvalue为radio中选中的值
        for(var i=0;i<ssex.length;i++){
            if(ssex[i].checked==true) {
                selectvalue=ssex[i].value;
                break;
            }
        }
        var state = $("#state").val();
        var stel = $("#stel").val();
        $.ajax({
            url:'student/addStudent.action',
            data:{cid:cid,sname:sname,ssex:selectvalue,state:state,stel:stel},
            type: "post",
            success:function(data){
            }
        });
    });

    //修改方法
    $('#updateStudentBtn').click(function(){
        // var cid = $("#ucid").val();
        // var sname = $("#usname").val();
        // var state = $("#ustate").val();
        // var stel = $("#ustel").val();
        obj.cid=$("#ucid").val();
        obj.sname=$("#usname").val();
        obj.state=$("#ustate").val();
        obj.stel=$("#ustel").val();
        $.ajax({
            url:'student/updateStudent.action',
            data:obj,
            type: "post",
            success:function(data){
            }
        });
    });

    //分页
    function pager(id){
        var tObj = vm.table;
        if(id==1){
            //如果后面还有数据
            if(tObj.max/tObj.count>tObj.page){
                vm.table.page+=1;
                vm.querylist(null,null);
            }
        }else{
            if(tObj.page>1){
                vm.table.page-=1;
                vm.querylist(null,null);
            }
        }
    }

    //得到列名 的方法
    function getClazzName(){
        $("#cid").empty();
        $("#ucid").empty();
        $.ajax({
            url:'clazz/querydisclazz.action',
            type: "post",
            dataType: "JSON",
            success:function(data){
                $.each(data, function(key, obj) {
                    $("#cid").append("<option value='"+obj.csn+"'>"+obj.csn+"</option>");
                    $("#ucid").append("<option value='"+obj.csn+"'>"+obj.csn+"</option>");
                });
            }
        });
    }


</script>
</body>
</html>