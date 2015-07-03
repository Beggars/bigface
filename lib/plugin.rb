class Plugin
  @registered_plugins = {}

  class << self
    attr_reader :registered_plugins
  end

  def initialize
  end
end