# Fact: apel_version
#
# Purpose: No real meaning yet
#
Facter.add(:apel_version) do
  setcode do
    begin
      Facter::Util::Resolution.exec("/usr/bin/apelclient --version").split(" ")[2] 
    rescue Exception
          Facter.debug('apelclient not found')
    end
  end
end

