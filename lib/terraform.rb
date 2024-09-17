# lib/terraform.rb

require_relative 'server'

class Terraform < Server
  private

  def specific_commands
    File.read(File.expand_path('../../scripts/terraform.sh', __FILE__))
  end
end
