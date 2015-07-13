require 'rest-client'

class Iyuntian

end

cookie = 'PHPSESSID=kfttbfkd1qtr38uvds9gislrv3; Hm_lvt_fbc4195f9efbf18c0c4b26aeb3ff01f5=1436236680; Hm_lpvt_fbc4195f9efbf18c0c4b26aeb3ff01f5=1436236875'
puts RestClient.get 'http://cms.iyuntian.com:8000/zpadmin/api/admin/json_get_menu_list/2735', :header => {'Cookie' => cookie}