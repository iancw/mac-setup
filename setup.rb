#!ruby

require 'fileutils'

def setup_emacs_goodness
  home_dir = ENV['HOME']
  key_binding_path = "#{home_dir}/Library/KeyBindings"
  FileUtils.mkdir_p key_binding_path
  File.open("#{key_binding_path}/DefaultKeyBinding-test.dict", 'w') do |file|
  key_bindings = '{
  "~d" = "deleteWordForward:";
  "~b" = "moveWordBackward:";
  "~f" = "moveWordForward:";
  "^w" = "deleteWordBackward:";
}
'
    file.write key_bindings
  end
end

setup_emacs_goodness
