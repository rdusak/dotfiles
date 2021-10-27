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
   
}
