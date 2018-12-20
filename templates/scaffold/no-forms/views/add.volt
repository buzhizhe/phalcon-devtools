<!-- 面包屑导航 -->
<ul class="breadcrumb">
    <li><i class="fa fa-map-marker"></i></li>
    <li class="text-muted">系统</li><li class="text-muted">$plural$</li>
</ul>

<!-- 主体内容区域 -->
<div class="tab-content ct-tab-content">

    <div class="panel-body">
        <div class="builder listbuilder-box">

            <!-- 数据列表 -->
            <div class="builder-container">
                <div class="row">
                    <div class="col-xs-12">
                        <form action="" method="post">
                        <table class="table table-bordered table-striped table-hover tblform">
                            <thead>
                            <th colspan="2">
                                $plural$修改
                            </th>
                            </thead>
                           <tbody>
$captureFields$
                           </tbody>
                        </table>
                        <div class="divformsubmit">
                            <input type="text" name="id" value="{{mod.id}}">
                            <input type="submit" class="btnquery" id="btnquery" value="提交" >
                        </div>

                        </form>
                    </div>
                </div>
            </div>


            <script>
                $(document).ready(function() {

                });
            </script>
        </div>

    </div>

</div>


