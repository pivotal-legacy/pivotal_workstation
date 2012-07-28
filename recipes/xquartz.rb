dmg_package "XQuartz" do
  source "http://xquartz.macosforge.org/downloads/SL/XQuartz-2.7.1.dmg"
  action :install
  volumes_dir "XQuartz-2.7.1"
  checksum "309c11099a8712db2f6f4fb3188e1c30d9f966f3e58a137b6c649a1dba448fce"
  type "mpkg"
  package_id "org.macosforge.xquartz.pkg"
end
