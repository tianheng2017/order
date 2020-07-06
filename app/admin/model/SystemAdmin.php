<?php


namespace app\admin\model;


use app\common\model\TimeModel;

class SystemAdmin extends TimeModel
{

    protected $deleteTime = 'delete_time';

    public function getAuthList()
    {
        $list = (new SystemAuth())
            ->where('status', 1)
            ->column('title', 'id');
        return $list;
    }

    public function getLoginTimeAttr($value){
        if (empty($value)){
            return '无';
        }
        return date('Y-m-d H:i:s', time());
    }

}