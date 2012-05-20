$:.unshift("/Library/RubyMotion/lib")
require 'motion/project'
require 'motion-cocoapods'

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'Sqlite Sample'
  app.device_family = :iphone # [:iphone, :ipad]
  app.files += Dir.glob('./lib/**.rb')  
  
  app.pods do
    dependency 'FMDB'
  end
end
