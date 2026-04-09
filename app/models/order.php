<?php

class Order{
    public function getTotalorders(){
        $db = DB::getInstance();
        $query = "SELECT COUNT(*) as total FROM orders WHERE customer_id IS NOT NULL";
        $stmt = $db->prepare($query);
        $stmt->execute();
        $result = $stmt->fetch(PDO::FETCH_ASSOC);
        return $result['total'];
    }

    public function getListorders($start, $limit){
        $db = DB::getInstance();
        $query ="SELECT o.order_id, o.customer_id,o.order_date, o.total_amount,o.order_status, c.customer_name FROM orders o JOIN customers c ON o.customer_id = c.customer_id LIMIT $start, $limit";
        $stmt = $db->prepare($query);
        $stmt->execute();
        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
        return $result;
    }
    
    public function cancelOrder($order_id) {
        $db = DB::getInstance();
        $query = "UPDATE orders SET order_status = 'Canceled' WHERE order_id = :order_id";
        $stmt = $db->prepare($query);
        $stmt->bindValue(':order_id', $order_id);
        $stmt->execute();
    }
    

    public function confirmOrder($order_id){
        $db = DB::getInstance();
        $query = "UPDATE orders SET order_status = 'Confirmed' WHERE order_id = :order_id";
        $stmt = $db->prepare($query);
        $stmt->bindValue(':order_id', $order_id);
        $stmt->execute();
    }

    public function getOrderItemByID($order_id){
        $db = DB::getInstance();
        $query ="SELECT
            o.order_id,
            p.product_id as product_id,
            p.product_name AS product_name,
            p.product_price AS product_price,
            p.product_img AS product_img,
            ps.size AS product_size,
            oi.quantity
        FROM
            orders o
        JOIN
            customers c ON o.customer_id = c.customer_id
        JOIN
            order_items oi ON o.order_id = oi.order_id
        JOIN
            products p ON oi.product_id = p.product_id
        JOIN
            product_sizes ps ON p.product_size_id = ps.product_size_id
        WHERE o.order_id = :order_id";
        $stmt = $db->prepare($query);
        $stmt->bindValue(':order_id', $order_id);
        $stmt->execute();
        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
        return $result;
    }

    public function getOrderByID($order_id){
        $db = DB::getInstance();
        $query = "SELECT o.*, c.customer_name, c.customer_address FROM orders o JOIN customers c ON o.customer_id = c.customer_id WHERE order_id = :order_id";
        $stmt = $db->prepare($query);
        $stmt->bindValue(':order_id', $order_id);
        $stmt->execute();
        $result = $stmt->fetch(PDO::FETCH_ASSOC);
        return $result;
    }

    public function getOrderByCustomerID($customer_id){
        $db = DB::getInstance();
        $query = "SELECT o.*, c.customer_name FROM orders o JOIN customers c ON o.customer_id = c.customer_id WHERE c.customer_id = :customer_id";
        $stmt = $db->prepare($query);
        $stmt->bindValue(':customer_id', $customer_id);
        $stmt->execute();
        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
        return $result;
    }

    public function searchOrder($search_query)
    {
        $db = DB::getInstance();
        $query = "SELECT o.*, c.customer_name FROM orders o JOIN customers c ON o.customer_id = c.customer_id
                  WHERE o.order_id = :search_query";
    
        $stmt = $db->prepare($query);
        $stmt->bindValue(':search_query', "$search_query", PDO::PARAM_STR);
        $stmt->execute();
    
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }




}


?>
