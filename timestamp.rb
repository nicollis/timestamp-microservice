require 'sinatra'
require 'date'
require 'json'
require 'time'

get '/' do
  haml :index
end

get '/*' do
  input = params['splat'].first
  begin
    if is_number? input
      unix_time = input
      natural = Time.at(input.to_i).strftime('%B %e, %Y')
    else
      unix_time = Date.parse(input).to_time.to_i
      natural = input
    end
  rescue
    unix_time = nil
    natural = nil
  end
  
  content_type :json
  {
    unix: unix_time,
    natural: natural
  }.to_json
end

def is_number? string
  true if Float(string) rescue false
end