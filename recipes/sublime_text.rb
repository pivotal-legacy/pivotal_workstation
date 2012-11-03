pivotal_workstation_package "Sublime Text 2" do
  dmg_name "Sublime%20Text%202.0.1"
  source "http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.1.dmg"
  checksum "b5f91ee4f62d36c0490c021d5fb134b9e7cb3936"
  owner WS_USER
end

link "/usr/local/bin/subl" do
  to "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl"
end

sublime_package_path = ["#{WS_HOME}/Library/Application Support/Sublime Text 2", "Packages"]
sublime_user_path = sublime_package_path.dup << "User"

recursive_directories sublime_user_path do
  owner WS_USER
end

node["sublime_text_packages"].each do |package|
  pivotal_workstation_sublime_package package["name"] do
    source package["source"]
    destination File.join(sublime_package_path)
    owner WS_USER
  end
end

template File.expand_path("Preferences.sublime-settings", File.join(sublime_user_path)) do
  source "sublime_text-Preferences.sublime-settings.erb"
  owner WS_USER
  action :create_if_missing
end
