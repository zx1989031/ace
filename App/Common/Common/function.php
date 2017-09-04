<?php


//公共函数调用


function getTree($model,$pid){
    $arr = array();
    $list = $model->where(array('status'=>1,'pid'=>$pid))->order('sort')->select();  
    if(!empty($list)){
        foreach($list as $k=>$v){
            $arr[$k] = $v;
            if(is_array($v)){
                $sub =getTree($model, $v['id']);
                $arr[$k]['child'] = $sub;
            }
        }
    }
    return $arr;
}


function getMenuTree($pid=0, $level){ 
    static $str='<ul class="nav nav-list">';
    $list = D('menu')->where(array('status'=>1,'pid'=>$pid))->order('sort asc,id asc')->select();  //dump($list);die;
    if(!empty($list)){
        foreach($list as $k=>$v){
             if($v['is_active'] == 1){
                $li = '<li class="active">';
            }else{
               $li = '<li>';     
            }
            $i = D('menu')->where(array('status'=>1,'pid'=>$v['id']))->select();  
            if(!empty($i)){
                $str .= $li .'<a class="dropdown-toggle" href="'.U($v['url']).'"><i class="'. $v['icon'] .'"></i><span class="menu-text">'.$v['name'].'</span><b class="arrow icon-angle-down"></b></a>';
                $str .= '<ul class="submenu">';
                $sub = getMenuTree($v['id'], $level+1);
                $str .= '</ul></li>';
            
            }else{
                $str .= $li . '<a href="'.U($v['url']).'"><i class="'. $v['icon'] .'"></i><span class="menu-text">'.$v['name'].'</span></a></li>';
            }
            
        }
    }
    
    return $str;
}

function getMenuTree1($pid=0, $level=0){ 
    $arr = array();
    static $str='';
    $list = D('menu')->where(array('status'=>1,'pid'=>$pid))->order('sort')->select();  
    if(!empty($list)){
        foreach($list as $k=>$v){
            $arr[$k] = $v;
            $str .= str_repeat('--', $level) .$v['name'].'<br />';
            if(is_array($v)){
                $sub =getMenuTree($v['id'], $level+1);
                $arr[$k]['child'] = $sub;
            
            }
        }
    }
    return $str;
}