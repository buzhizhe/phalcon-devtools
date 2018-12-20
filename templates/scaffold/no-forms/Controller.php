<?php
$namespace$
use Phalcon\Mvc\Model\Criteria;
use Phalcon\Paginator\Adapter\Model as Paginator;
$useFullyQualifiedModelName$

class $className$Controller extends ControllerBase
{
    public function indexAction()
    {
        $this->dispatcher->forward([
            "controller" => "$className$",
            "action" => "list"
        ]);
    }

    //列表查询
    public function listAction()
    {
        //查询条件
        $str_where="1=1";
        if(!$this->request->isPost()){
            $data["post"]["pageindex"] = 1;
            $data["post"]["pagesize"] = 10;
            $data["post"]["realname"]="";
        }else{
            $data["post"] = $this->request->getPost();
            /*if(!empty($data["post"]["realname"])){
                $str_where.=" and realname like '%".$data["post"]["realname"]."%'";
            }*/
        }
        $cond["conditions"]=$str_where;

        //统计总数用于分页
        $reoordcount =$className$::find($cond)->count();
        $data["post"]["reoordcount"]=$reoordcount;

        //当前页记录
        $offset = ($data["post"]["pageindex"]-1) * $data["post"]["pagesize"];
        $cond["limit"]= array("number" => $data["post"]["pagesize"], "offset" => $offset);
        $cond["order"]="id desc";
        $data['list'] =$className$::find($cond );

        //传值给view
        $this->view->data = $data;
    }

    //添加
    public function addAction($id=0)
    {
        $model = new $className$();
        if($id>0){
            $model=$model::findFirst("id=".$id);
        }
        //$model->status=1;

        if($this->request->isPost()){
            $post = $this->request->getPost();
            $model->assign($post);

            if($model->save() === false){
                $message = $model->getMessages();
                self::error($message);
            }else{
                self::success("reload");
            }
          }

        $this->view->mod = $model;
    }

    //删除
   public  function  deleteAction($id=0)
   {
        if($id>0){
            $model = new $className$();
            $da=$model::findFirst("id=".$id);
            //print_r($da->ToArray());
            $da->delete();
            echo "success";
            exit();
        }
    } 
}
