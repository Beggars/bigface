require 'httparty'
class Uuap
  include HTTParty
  base_uri 'uuap.baidu.com'

  attr_reader :username, :password, :action, :lt, :execution, :cookie
  def initialize(username, password)
    @username = username
    @password = password
    self.get_lt
  end

  def get_lt
    options = {:headers => {'User-Agent' => 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 Safari/537.36'}}
    resp = self.class.get('/login')
    action = /id=\"fm1\"\saction=\"(.*)\"\s/.match(resp)[1]
    lt = /name=\"lt\"\svalue=\"(.*)\"/.match(resp)[1]
    execution = /name=\"execution\"\svalue=\"(.*)\"/.match(resp)[1]
    @action = action
    @lt = lt
    @execution = execution
    @cookie = resp.headers['Set-Cookie']
  end

  def login
    options = {
      :body => {'username'=>@username, 'password'=>@password,'rememberMe'=>'on','lt'=>@lt, 'execution'=>@execution,'_eventId'=>'submit','type'=>1} ,
      :headers => {'Cookie' => @cookie,'User-Agent' => 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 Safari/537.36'}}
    self.class.post(@action, options)
  end

end

uuap = Uuap.new('huangyong06','^thcpy4you$918918')
puts uuap.login
