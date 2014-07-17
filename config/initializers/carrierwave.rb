CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',       # required
    :aws_access_key_id      => 'AKIAIY5KNRPSHRMXVKMA',       # required
    :aws_secret_access_key  => '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',
    :region                 => 'us-east-1'
  }
  config.fog_directory  = 'llchallenge-assets'
  config.storage = :fog
  # see https://github.com/jnicklas/carrierwave#using-amazon-s3
  # for more optional configuration
end
