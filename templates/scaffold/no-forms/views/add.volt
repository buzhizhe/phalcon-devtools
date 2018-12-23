<!-- Content Wrapper. Contains page content -->
<div class="" style="background-color: white; height: 100%;">
    <!-- Content Header (Page header) -->

    <!-- Main content -->
    <section class="content">
        <!--<div class="box-header with-border">
            <h3 class="box-title">Different Width</h3>
        </div>-->


        <div class="row">
            <div class="col-md-6">
                <!-- general form elements -->
                <div class="box-header with-border">
                    <h3 class="box-title">$plural$</h3>
                </div>
                <div class="box box-primary">
                    <!-- /.box-header -->
                    <!-- form start -->
                    <form role="form" action="/$plural$/add" method="post">
                        <div class="box-body">
 $captureFields$
                            <!--<div class="checkbox">
                                <label>
                                    <input type="checkbox"> Check me out
                                </label>
                            </div>-->
                        </div>
                        <!-- /.box-body -->

                        <div class="box-footer"><input type="hidden" name="id"  value="{{mod.id}}">
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </div>
                    </form>
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

    });
</script>



