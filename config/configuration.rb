PicoApi.configure do |config|
  ## the base namespace of your app
  config.namespace = 'PicoApiExample'

  ## the root directory where all the business logic resides
  config.lib_path = 'lib/pico_api_example'

  config.logger = Logger.new(STDOUT) if ENV['LOG_TO_STDOUT'] == 'true'

  ## Error mappings. exception: status_code. PicoApi serializes a json api error object
  config.errors_map = {
    ValidationError: :unprocessable_entity
  }.freeze
end
