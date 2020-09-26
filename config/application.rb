require 'mavericks'
$LOAD_PATH << File.join(File.dirname(__FILE__), "..", "app", "controllers")
# require 'app/models/task'

module JustDo
  class Application < Mavericks::Application
  end
end
