# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running 'nixos-help').

{ config, pkgs, ... };

{
  imports = 
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];
    
   # Use the systemd-boot EFI boot-loader.
   boot.loader.systemd-boot.enable = true;
   boot.loader.efi.catTouchEfiVariables = true;
   
   networking.hostname = "robert-pc"; # Define your hostname.
   # networking.wireless.enable = true; # Enable wireless support via wpa_supplicant.
   
   # Set your time zone.
   time.timeZone = "Europe/Zagreb";
   
   # The global useDHCP flag is deprecated, therefore explicitly set to false here.
   # Per-interface useDHCP will be mandatory in the future, so this generated config
   # replicates the default behaviour.
   networking.useDHCP = false;
   networking.intefaces.eth0.useDHCP = true; ### this should be automatically generated
   
   # Select internationalization properties.
   i18n.defaultLocale = "hr_HR.UTF-8";
   i18n.extraLocaleSettings = { LC_MESSAGES = "en_US.UTF-8"; LC_COLLATE= "C";};
   console = {
     font = "Lat2-Terminus16";
     keyMap = "hr";
   };
   
   # Enable the Plasma 5 Desktop environment
   services.xserver.enable = true;
   services.xserver.displayManager.sddm.enable = true;
   services.xserver.desktopmanager.plasma5.enable = true;
   
   # Configure keymap in X11
   services.xserver.layout = "hr";
   services.xserver.xkbOptions = "eurosign:e";
   
   # Enable CUPS to print documents
   # services.printing.enable = true;
   
   # Enable sound
   sound.enable = true;
   hardware.pulseaudio.enable = true;
   
   # Enable touchpad support
   # services.xserver.libinput.enable = true;
   
   # Define a user account. 
   users.users.robot = {
      isNormalUser = true;
      initialPassword = "pass"; # Don't forget to change this after inital login
      # password = "itsasecretokshhh?"; # or just use this like a normal person who doesn't post private passwords on a public git repo
      extraGroups = [ "wheel" ]; # Enable 'sudo' for the user
   };
   
   # List packages installed in system profile. To search, run:
   # $ nix search wget
   environment.systemPackges = with pkgs; [
      wget vim nano
      firefox
   ];
   
   # Some programs need SUID wrappers, can be configured further or are
   # started in user sessions.
   # programs.mtr.enable = true;
   # programs.gnupg.agent = {
   #    enable = true;
   #    enableSSHSupport = true;
   # };
   
   # List service that you want to enable:
   
   # Enable the OpenSSH daemon:
   # services.openssh.enable = true;
   
   # Open ports in the firewall:
   # networking.firewall.allowedTCPPorts = [ ... ];
   # networking.firewall.allowedUDPPorts = [ ... ];
   # Or disable the firewall altogether:
   # networking.firewall.enable = false;
   
   # This value determins the NixOS release from which the default
   # settings for stateful data, like file locations and database versions
   # on your system were taken. It's perfectly fine and recommended to leave
   # this value at the release version of the first install of this system.
   # Before changing this value read the documentation for this option:
   # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html)
   system.stateVersion = "21.11"; # Did you read the comment?
   
   # Don't forget to modify the hardware-configuration.nix file to use disk labels instead of UUIDs
}
