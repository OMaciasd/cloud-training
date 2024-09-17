# Vagrantfile

# Obtener la lista de archivos en el directorio 'lib'
files = Dir["lib/*"]

# Iterar sobre cada archivo y cargarlo utilizando require_relative
files.each do |file|
  require_relative file
end

servers = [
  Terraform.new("terraform", "192.168.50.2"),
  Kubernetes.new("kubernetes", "192.168.50.10")
]

def setup_and_provision(config, server)
  config.vm.define server.name.downcase.gsub(/\s+/, "") do |srv|
    srv.vm.box = "ubuntu/noble64"
    srv.vm.network "private_network", ip: server.ip_address
    srv.vm.hostname = server.name
    srv.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
      vb.cpus = 2
    end
    srv.vm.provision "shell", inline: server.provision_commands
  end
end

Vagrant.configure("2") do |config|
  # Configuración para actualizar las Guest Additions
  config.vbguest.auto_update = true

  servers.each do |server|
    setup_and_provision(config, server)
  end
end
