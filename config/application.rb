require 'wings'

# loading controllers
$LOAD_PATH << File.join(File.dirname(__FILE__), '..', 'app', 'controllers')

module BestQuotes
  class Application < Wings::Application
  end
end

