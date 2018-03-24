require 'httparty'
require 'awesome_print'

password_response = HTTParty.get('https://makemeapassword.org/api/v1/passphrase/json?pc=10&wc=4&sp=y&maxCh=64')

password_json = JSON.parse(password_response.body)

pp password_json
