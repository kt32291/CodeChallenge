CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',       # required
    :aws_access_key_id      => ENV['aws_access_key_id'],       # required
    :aws_secret_access_key  => ENV['aws_secret_access_key'],
    :region                 => 'us-east-1'
  }
  config.fog_directory  = 'llchallenge-assets'
  config.storage = :fog
  # see https://github.com/jnicklas/carrierwave#using-amazon-s3
  # for more optional configuration
end
