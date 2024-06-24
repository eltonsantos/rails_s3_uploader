
require 'aws-sdk-s3'
require 'mini_magick'

module RailsS3Uploader
  class S3Uploader
    attr_accessor :bucket, :region, :access_key_id, :secret_access_key, :secure_access, :retention_policy

    def initialize(options = {})
      @bucket = options[:bucket]
      @region = options[:region]
      @access_key_id = options[:access_key_id]
      @secret_access_key = options[:secret_access_key]
      @secure_access = options[:secure_access] || false
      @retention_policy = options[:retention_policy] || {}
      configure_s3_client
    end

    private

    def configure_s3_client
      @s3_client = Aws::S3::Client.new(
        region: @region,
        access_key_id: @access_key_id,
        secret_access_key: @secret_access_key
      )
    end

    def upload(file_path, key)
      @s3_client.put_object(bucket: @bucket, key: key, body: File.open(file_path))
    end

    def generate_presigned_url(key, expires_in = 3600)
      signer = Aws::S3::Presigner.new(client: @s3_client)
      signer.presigned_url(:get_object, bucket: @bucket, key: key, expires_in: expires_in)
    end

    def set_retention_policy(key, retention_period)
      @s3_client.put_object_retention({
        bucket: @bucket,
        key: key,
        retention: {
          mode: "GOVERNANCE",
          retain_until_date: Time.now + retention_period
        }
      })
    end

    def process_image(file_path)
      image = MiniMagick::Image.open(file_path)
      image.resize "100x100"
      image.format "png"
      image.write "output.png"
    end
  end
end
