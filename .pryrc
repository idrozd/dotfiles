require 'awesome_print'

# AwesomePrint.defaults = { raw: true }

AwesomePrint.pry!

Pry.editor = 'vim'


Pry::Commands.block_command "rake", "Executes rake task" do |task, *args|
  Rails.application.load_tasks
  Rake::Task[task].execute (args.join ' ') if task.present?
end



Pry::Commands.block_command "stfu", "STFUs logger" do |who, *args|
  logger =
    case who.to_sym
    when :ar then ActiveRecord::Base.logger
    end

  logger.level =
    case logger.level
    when Logger::DEBUG then Logger::WARN
    when Logger::WARN  then Logger::DEBUG
    end
end


# Pry.config.prompt = [proc {'say it:   '},
#                      proc {'say what? '}]
