require 'tty-command'

cmd = TTY::Command.new(dry_run: true)

def cli_message(option)
	puts "------------"
	puts "#{option.capitalize}"
	puts "------------"	
end

cli_message("updating")
cmd.run('echo yourpass | sudo -S apt-get update', printer: :null)
cli_message("Done.")

cli_message("Upgrading...")
cmd.run('echo yourpass | sudo -S apt-get upgrade -y')

cli_message("Autoremoving...")
cmd.run('echo yourpass | sudo -S apt-get autoremove -y')

cli_message("Autocleaning...")
cmd.run('echo yourpass | sudo -S apt-get autoclean -y')
cli_message("Done.")
