CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAIV452XSD3UB7WFAQ',                        # required unless using use_iam_profile
    aws_secret_access_key: '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',                        # required unless using use_iam_profile
    region:                'us-east-2'                  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'nerdocracia'                                      # required
  config.fog_public     = false                                                 # optional, defaults to true
  config.fog_attributes = { cache_control: "public, max-age=#{365.days.to_i}" } # optional, defaults to {}
end
