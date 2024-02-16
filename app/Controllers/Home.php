<?php

namespace App\Controllers;
use CodeIgniter\API\ResponseTrait;

class Home extends BaseController
{
    use ResponseTrait;

    public function index(): string
    {
        return view('welcome_message');
    }

    public function about()
    {

        $db      = \Config\Database::connect();
        $builder = $db->table('about');
        $query   = $builder->get(1);
        $result = $query->getRow();

        return $this->respond($result, 200);
        
    }

    public function user_list()
    {

        $totalData = 0;
        $totalPage = 0;
        $index = 0;
        $dataPerPage = 5;
        $dataTotalResult = 0;
        $page  = (int) $this->request->getVar("page");
        if(!isset($page) || $page == 0){
            $page = 1;
        }else{
            $index = $dataPerPage * ( $page - 1);
        }
        
        $db      = \Config\Database::connect();
        $builder = $db->table('users');

        $totalData = $builder->countAll();
        $totalPage = ceil($totalData / $dataPerPage);

        $query   = $builder->get($dataPerPage, $index);
        $result = $query->getResultArray();

        $dataTotalResult = count($result);

        $data = [
            "current_page" => $page,
            "total_item" => $totalData,
            "total_page" => $totalPage,
            "item_per_page" => $dataPerPage,
            "index_start" => $index+1,
            "index_end" => $index + $dataTotalResult,
            "data" => $result
        ];

        return $this->respond($data, 200);

    }

    public function user_detail($id = null)
    {

        $result = $id;

        $db      = \Config\Database::connect();
        $builder = $db->table('users');
        $builder->where('id', $id);
        $query   = $builder->get(1);
        $result = $query->getRow();

        return $this->respond($result, 200);

    }

    public function user_profile()
    {

        $db      = \Config\Database::connect();
        $builder = $db->table('users');
        $builder->where('is_login', 1);
        $query   = $builder->get(1);
        $result = $query->getRow();

        return $this->respond($result, 200);

    }

}
