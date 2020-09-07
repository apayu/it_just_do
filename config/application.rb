require 'mavericks'
$LOAD_PATH << File.join(File.dirname(__FILE__), "..", "app", "controllers")

module JustDo
  class Application < Mavericks::Application
  end
end
