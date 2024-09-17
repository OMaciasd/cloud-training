# lib/kubernetes.rb

require_relative 'server'

class Kubernetes < Server
  private

  def specific_commands
    File.read(File.expand_path('../../scripts/kubernetes.sh', __FILE__))
  end
end
