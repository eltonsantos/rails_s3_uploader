
module RailsS3Uploader
    class Configuration
      attr_accessor :access_key_id, :secret_access_key, :region, :bucket
  
      def initialize
        @access_key_id = ENV['AWS_ACCESS_KEY_ID']
        @secret_access_key = ENV['AWS_SECRET_ACCESS_KEY']
        @region = ENV['AWS_REGION']
        @bucket = ENV['AWS_BUCKET']
      end
    end
  end
  