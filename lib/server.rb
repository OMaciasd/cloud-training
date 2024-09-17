# lib/server.rb
class Server
  attr_reader :name, :ip_address

  def initialize(name, ip_address)
    @name = name
    @ip_address = ip_address
  end

  def provision_commands
    common_commands
  end

  private

  def common_commands
    File.read(File.expand_path('../../scripts/common_commands.sh', __FILE__))
  end

  def specific_commands
    raise NotImplementedError, "Subclasses must override this method"
  end
end
