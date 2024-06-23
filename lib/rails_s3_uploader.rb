require 'aws-sdk-s3'
module RailsS3Uploader
  class S3Uploader
    def initialize
      @s3_client = Aws::S3::Client.new(
        access_key_id: RailsS3Uploader.configuration.access_key_id,
        secret_access_key: RailsS3Uploader.configuration.secret_access_key,
        region: RailsS3Uploader.configuration.region
      )
      @bucket = RailsS3Uploader.configuration.bucket
    end

    def upload(file, key)
      obj = Aws::S3::Object.new(bucket_name: @bucket, key: key, client: @s3_client)
      obj.upload_file(file.path)
      obj.public_url
    rescue StandardError => e
      puts "Error uploading file: #{e.message}"
      nil
    end
  end
end
