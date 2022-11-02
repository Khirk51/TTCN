<?php
class Controller{

    public function model($model){
        require_once "./mvc/models/".$model.".php";
        return new $model;
    }
    public function lib($lib){
        require_once "./mvc/libraries/".$lib.".php";
        return new $lib;
    }
    public function view($view, $data=[]){
        require_once "./mvc/views/".$view.".php";
    }

}
?>