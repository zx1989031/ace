<?php
namespace Home\Controller;
use Think\Controller;
class IndexController extends Controller {
    public function _initialize(){
        $model = D('menu');
        $left = getMenuTree();
        $this->assign('left', $left);
       
    }
    
    public function index(){
        $this->display();
    }
    
    //文字排行
    public function typography(){
        $this->display();
    }
    
    //文字排行
    public function elements(){
        $this->display();
    }
    
  
}