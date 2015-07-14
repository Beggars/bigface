require 'httparty'
require 'nokogiri'

class Uuap
  include HTTParty

  base_uri 'https://uuap.baidu.com/'
  headers 'Accept-Encoding' => 'gzip', 'User-Agent'=> 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 Safari/537.36'

  attr_reader :username, :password, :lt, :execution, :cookies
  def initialize(username, password)
    @username = username
    @password = password
    self.init_param
  end

  def init_param
    resp = self.class.get('/login')
    html_doc  = Nokogiri::HTML(resp)
    @lt = html_doc.css("form input[name=lt]")[0]['value']
    @execution = html_doc.css("form input[name=execution]")[0]['value']
    @cookies = /JSESSIONID=.*jvm-sso-ntlm\d+/.match(resp.headers['set-cookie'])[0]
  end

  def login
    options = {
      :body => {'username'=>@username, 'password'=>@password,'rememberMe'=>'on','lt'=>@lt, 'execution'=>@execution,'_eventId'=>'submit','type'=>1} ,
      :headers => {'cookie'=>@cookies}
    }
    resp = self.class.post('/login', options)
    uuaptgc = /UUAPTGC=TGT-.*-uuap/.match(resp.headers['set-cookie'])[0]
    @cookies += "; " + uuaptgc
    execution = Nokogiri::HTML(resp).css("form input[name=execution]")[0]['value']
    options = {
      :body => {'setCookiePathSuccess'=>'',
                'execution'=>execution,
                '_eventId'=>'submit'
                } ,
      :headers =>{'cookie' => @cookies}
    }
    resp = self.class.post('/login', options)
    @cookies if resp.include? 'Login successfully'
  end

  def logout
    resp = self.class.get('/logout', :headers=>{'cookie'=>@cookies})
    @cookies = resp.headers['Set-Cookie']
  end
end

# uuap = Uuap.new('username','password')
# cookies = uuap.login

# resp = HTTParty.get('http://rms.baidu.com/index.php',follow_redirects: false)
# cookies += ';' +resp.headers['Set-Cookie'].split('; ')[0]
# puts cookies
# resp = HTTParty.get('http://rms.baidu.com/index.php',:headers=>{'cookie'=>cookies},follow_redirects: true)
# puts resp.body




