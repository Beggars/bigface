require 'net/http'

class DiscuzCrossDomain
  def http_get url
    uri = URI(url)
    crossdomain_url = "#{uri.scheme}://#{uri.host}:#{uri.port}/crossdomain.xml"
    crossdomain_uri = URI(crossdomain_url)

    # http = Net::HTTP.new crossdomain_uri.host, crossdomain_uri.port
    # request = Net::HTTP::Get.new crossdomain_uri.path
    # response = http.request request
    # response.body
  end

end

discuz = DiscuzCrossDomain.new

file_path = '/Users/bf/Desktop/fp-webapp-20150709.txt'
File.open(file_path, 'r') do |f|
  f.each do |line|
    puts discuz.http_get(line.gsub("\n",''))
  end
end



