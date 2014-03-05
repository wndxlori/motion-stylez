require 'motion-stylez/version'

Motion::Project::App.setup do |app|
  Dir.glob(File.join(File.dirname(__FILE__), 'motion-stylez/*.rb')).each do |file|
    app.files.unshift(file)
  end
end