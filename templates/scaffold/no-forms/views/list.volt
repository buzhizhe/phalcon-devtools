<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            $plural$
            <!--<small>advanced tables</small>-->
        </h1>
        <!--<ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="#">Tables</a></li>
            <li class="active">Data tables</li>
        </ol>-->
    </section>

    <!-- Main content -->
    <section class="content">
        <!-- 查询表单 -->
        <div class="builder-toolbar">
            <div class="row querydiv">
            </div>
        </div>


        <!--<div class="box-header with-border">
            <h3 class="box-title">Different Width</h3>
        </div>-->
        <div class="box box-body" style="margin-bottom: 0px;">

            <form class="form" id="formquery" method="post" action="">

                <label>条件：</label>
                <label><input name="id" class="form-control autowidth" value=""  /></label>
                <label>条件：</label>
                <label><input name="id" class="form-control autowidth" value=""  /></label>


                <label>
                    <input type="hidden" id="pageindex" name="pageindex" value="{{data['post']['pageindex']}}">
                    <input type="hidden" id="pagesize" name="pagesize"  value="{{data['post']['pagesize']}}">
                    <button id="btnquery" type="button" class="btn btn-primary ">查询</button>
                    <button id="btnadd" type="button" class="btn btn-warning ">添加</button>
                </label>

            </form>


        </div>
        <!-- /.box-body -->


        <div class="row">
            <div class="col-xs-12">

                <div class="box" style="border-top: 1px solid #d2d6de;">

                    <!-- /.box-header -->
                    <div class="box-body">
                        <table id="example1" class="table table-bordered table-striped table-hover">
 $captureFields$
                        </table>
                    </div>
                    <!-- /.box-body -->
                </div>
                <!-- /.box -->
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->
        <!-- 分页 -->
        <div style="width: 100%;text-align: center;">
            <div id='page'></div>
        </div>
    </section>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->
<script>
    $(document).ready(function() {
        /*分页*/
        pager({{data["post"]["pageindex"]}},{{data["post"]["reoordcount"]}},{{data["post"]["pagesize"]}});

        /*添加按钮*/
        $("#btnadd").click(function(){
            openLayer("/$plural$/add/0","添加");
        });
        /*修改按钮*/
        $(".btnedit").click(function(){
            var u=$(this)[0].attributes.href.value;
            //alert(u);
            openLayer(u,"修改");
            return false;
        });
        /*删除按钮*/
        $(".btndelete").click(function(){
            var u=$(this)[0].attributes.href.value;
            //console.log($(this)[0].attributes.href.value);
            //return false;
            if(confirm("确定要删除此记录吗？删除后不可恢复！")){
                openLayer(u);
            }
            return false;
        });
    });
</script>



