require 'open3'
require 'tty-command'

puts "--------------------------------"
puts "open3 gem example :)"
puts "--------------------------------"

cmd = 'echo Hello from open3!'
Open3.popen3(cmd) do |stdin, stdout, stderr, wait_thr|
  puts "stdout is:" + stdout.read
  puts "stderr is:" + stderr.read
end

puts "--------------------------------"
puts "tty-command gem example :)"
puts "--------------------------------"

cmd = TTY::Command.new
cmd.run('ls -la')
cmd.run('echo Hello from tty-command!')