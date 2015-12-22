# File name starts with an underscore to ensure that envvars are loaded first
require 'dotenv'
Dotenv.tap do |de|
  env_file = if File.exist?(".env.#{Rails.env}")
               ".env.#{Rails.env}"
             else
               ".env.#{Rails.env}.example"
             end
  de.load(env_file)
end
