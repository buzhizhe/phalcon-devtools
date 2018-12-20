<!-- 面包屑导航 -->
<ul class="breadcrumb">
    <li><i class="fa fa-map-marker"></i></li>
    <li class="text-muted">后台</li><li class="text-muted">$plural$</li>
</ul>

<!-- 主体内容区域 -->
<div class="tab-content ct-tab-content">

    <div class="panel-body">
        <div class="builder listbuilder-box">


            <!-- 查询表单 -->
            <div class="builder-toolbar">
                <div class="row querydiv">
                    <form class="form" id="formquery" method="post" action="">
                        <div class="form-group">
                            <label>条件：</label>
                            <label><input name="id" value="{{data['post']['id']}}"  /></label>

                            <label>
                                <input type="hidden" id="pageindex" name="pageindex" value="{{data['post']['pageindex']}}">
                                <input type="hidden" id="pagesize" name="pagesize"  value="{{data['post']['pagesize']}}">
                                <button id="btnquery" type="button" class="btn btn-primary ">查询</button>
                                <button id="btnadd" type="button" class="btn btn-warning ">添加</button>
                            </label>
                        </div>
                    </form>
                </div>
            </div>

            <!-- 数据列表 -->
            <div class="builder-container">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="builder-table">
                            <div class="panel panel-default table-responsive">
                                <table class="table table-bordered table-striped table-hover">
                                    $captureFields$
                                </table>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

            <!-- 分页 -->
            <div style="width: 100%;text-align: center;">
                <div id='page'></div>
            </div>
<script>
    $(document).ready(function() {
        /*分页*/
        pager({{data["post"]["pageindex"]}},{{data["post"]["reoordcount"]}},{{data["post"]["pagesize"]}});

        /*添加按钮*/
        $("#btnadd").click(function(){
            openLayer("/$plural$/add/0");
        });
        /*修改按钮*/
        $(".btnedit").click(function(){
            var u=$(this).context.attributes.href.value;
            openLayer(u);
            return false;
        });
        /*删除按钮*/
        $(".btndelete").click(function(){
            var u=$(this).context.attributes.href.value;
            if(confirm("确定要删除此记录吗？删除后不可恢复！")){
                openLayer(u);
            }
            return false;
        });
    });
</script>

        </div>

    </div>

</div>

