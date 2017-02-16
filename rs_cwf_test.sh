define get_servers($name) return $new_instance do 
@instances =rs_cm.clouds.get(cloud_id: 8).instances(filter: ["name=="+$name], view: "tiny")
$new_instance=size(@instances) 
end
