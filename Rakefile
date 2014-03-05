$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'

require 'bundler'
Bundler.require(:development)

require 'motion-stylez'

Motion::Project::App.setup do |app|
  app.name = 'MotionStylezTest'
  app.version = MotionStylez::VERSION
  app.redgreen_style = :full
  app.deployment_target = "7.0"
  app.detect_dependencies = true
end