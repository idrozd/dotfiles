# coding: utf-8
require 'awesome_print'

# AwesomePrint.defaults = { raw: true }

AwesomePrint.pry!

Pry.editor = 'vim'
# Pry.config.prompt = proc do |obj, nest_level, _|
#   "pry: #{Time.current.strftime('%M:%S')}> ".try(:purple)
# end
# Pry.config.prompt = proc do |obj, nest_level, _|
#   suffix = ''
#   if defined?( ActiveRecord)
#     dbcfg  = ActiveRecord::Base.connection_config
#     suffix = dbcfg[:host].presence.try(:split, ?.).try(:first) || dbcfg[:database]
#   end
#   "[0] Pry (#{suffix})> "
# end


if %w[dumb emacs].include? ENV['TERM']
  # Pry.config.color = false
  Pry.config.pager = false
  Pry.config.auto_indent = false
end


Pry::Commands.block_command "rake", "Executes rake task" do |task, *args|
  Rails.application.load_tasks
  Rake::Task[task].execute (args.join ' ') if task.present?
end



Pry::Commands.block_command "stfu", "STFUs logger" do |who, *args|
  who ||= :ar

  logger =
    case who.to_sym
    when :ar then ActiveRecord::Base.logger
    end

  logger.level =
    case logger.level
    when Logger::DEBUG then Logger::INFO
    when Logger::INFO  then Logger::DEBUG
    end
end


# Pry::Commands.block_command "pbcopy", "pbcopy" do |args|
#   `echo #{args} | pbcopy`
# end

def pbcopy arg
  cmd = <<~CMD
    pbcopy <<'SHIT'
     #{arg}
    SHIT
  CMD
  puts cmd
  %x[#{cmd}]
end



Pry::Commands.block_command( "aplimit", "toggles limit option for ap betwen 5 and false or takes arg") do |limit|
  limit = limit ? limit : ((AwesomePrint.defaults || {})[:limit] == false ? 5 : false)
  AwesomePrint.defaults = {limit: limit}
  puts "new limit #{limit}"
end


def ass
  Rails.application.assets.each_logical_path
end


def cl clinid; Doctor.find_by clinid: clinid end
def did _did; Doctor.find_by did: _did end


def tpdj
  tp Delayed::Job.all
end
# tp.set :max_width, 50

def dj
  ::Delayed::Job
end

def dur *args
  ActiveSupport::Duration.new(*args)
end

if defined? Delayed::Job
  tp.set Delayed::Job,
         {:id         => {}},
         {:run_at     => {}},
         {:last_error => {}},
         {:locked_at  => {}},
         {:failed_at  => {}},
         {:locked_by  => {}},
         {:created_at => {}},
         {:attempts   => {display_name: "N", width: 2}},
         {:payload    => {display_method: proc{ |j| j.payload_object.try{ |po| [po.try(:method_name), po.class.name, *po.try(:args)].compact.join(?|) }}, width: 40  }} # updated_at, :queue, :priority,
end

# begin
#   require "pbcopy"
# rescue LoadError
#   $LOAD_PATH << '~/.rvm/gems/ruby-2.1.2/gems/pbcopy-1.0.1/lib/'
#   $LOAD_PATH << '~/.rvm/gems/ruby-2.1.2/gems/pasteboard-1.0/lib/'
#   require 'pbcopy'
# end


def print_colors
  %w(gray red green yellow blue purple cyan white)
end


if defined?(PryByebug)
  # Pry.commands.alias_command '_c', 'continue'
  # Pry.commands.alias_command '_s', 'step'
  # Pry.commands.alias_command '_n', 'next'
  # Pry.commands.alias_command '_f', 'finish'
end

Pry::Commands.command /^$/, "repeat last command" do
  last_command = Pry.history.to_a.last
  # _pry_.run_command last_command if %w[c s n f continue step next finish down up].include?( last_command)
  _pry_.run_command last_command if %w[continue step next finish down up].include?( last_command)
end


Pry::Commands.block_command( "renvi", "flush AS::LoadPath cache and connect to name env DBs") do |name|
  main =  binding.callers.find{|b| b.frame_description =~ /main/ }
  eval("reload!", main)
  envi(name)
end


################################################################################
################################################################################
################################################################################
################################################################################

if defined? ActiveRecord
  ActiveRecord::Base.class_exec do

    def self.pg_array array
      %['{#{array.map{|e| %["#{e}"]}.join ?,}}']
    end

    def pg_array array
      self.class.pg_array array
    end
  end
end


Object.class_exec do

  def fsql sql
    rule = AnbtSql::Rule.new
    formatter = AnbtSql::Formatter.new(rule)
    formatter.format(sql)
  end

  def tps(data=Class, *options)
    printer = TablePrint::Printer.new(data, options)
    printer.table_print.to_s
  end


  def tps_md(data=Class, *options)
    printer = TablePrint::Printer.new(data, options)
    printer.table_print.to_s.lines.tap{ |ll| ll.delete_at(1) }.map{ |l| "| " + l.strip + " |" }.join("\n")
  end


  def group_by_and_count(columns_tuple, ar, count_column = 'id')
    puts columns_tuple
    # puts ar.attribute_names.to_yaml

    f = columns_tuple * ', '
    # f = 'customer_type__c, program_end_date__c';
    # AlignOne::AdvantageRegistration.group(%[(#{f})]).select("(#{f}) as tuple, COUNT(id) as cnt").map{|e| [e.tuple, e.cnt]}.sort_by{| _, cnt| cnt || 0}.to_h
    rslt = ar.group(%[(#{f})]).select("(#{f}) as key_tuple, COUNT(#{count_column}) as cnt").to_a.sort_by(&:cnt)
    tp rslt, :cnt, :key_tuple => {:display_name => columns_tuple.join(' ')}
    rslt
  end


end


if defined? Rails
  Rails.env.in? %w[test development] and begin

    Object.class_exec do
      # surround code you are interested in with yui/yuio
      def yui filter = lambda{|msg| true}
        debu
        $_yui_logger_bup = Rails.logger
        ActiveRecord::Base.logger = Logger.new(STDOUT).tap do |l|
          l.level = Logger::DEBUG
          l.formatter = ->(_,_,_,msg) do
            next unless filter === msg
            puts ?\n, *called_from rescue puts "******"
            puts ?\n
            puts msg
          end
        end
      end

      def called_from
        file_line = caller.grep(/#{Rails.root}\/(?!config)/).first || caller[1]
        file, line = file_line.split(?:)
        [file_line, File.open(file).each_line.to_a[line.to_i-1].squish]
      end

      def yuio
        ActiveRecord::Base.logger = $_yui_logger_bup
        $_yui_logger_bup = nil
        udeb
      end

      $_debulog = Rails.logger
      # $_debulog = Logger.new(STDOUT).tap{|logger| logger.formatter = proc{|_,_,_,msg| msg }}

      def _o label = '', tag: '', &blk
        # puts 'whoa', $_suppress_debug
        # puts $_x
        label = CodeRay.encode called_from.last, :ruby, :terminal if label.blank?
        tap do
          next if $_suppress_debug
          $_debug_only and (next unless $_debug_only.include? tag)
          blk ||= proc{|x| x}
          # $_debulog.info ?\n
          $_debulog.debug label.center(80, ?-)
          # $_debulog.debug ?\n*2 + ?-*20 + label + ?-*20 + ?\n
          $_debulog.debug '=> ' + CodeRay.encode( blk.call(self).inspect, :ruby, :terminal)
          $_debulog.debug ?\n
        end
      end

    end



    class ActiveRecord::Relation

      def inspect
        ActiveRecord::Base.cache do
        [ (to_sql), ?\n, tps( self), ].join
        end
      end
    end
  end

end



if defined?(Rails) && Rails.application.engine_name =~ /wcm/i

  def envi name = 'ppr'
    @cfgs ||= {}
    @cfgs[name] ||= Bundler.with_clean_env{ `h #{name} config -s | grep URL`}.lines.map{|ln| ln.gsub(?', "").split(/=/, 2).map(&:strip)}.to_h
    cfg = @cfgs[name]
    ActiveRecord::Base.establish_connection p cfg['DATABASE_URL']
    Connections::OnlyInMasterDb.establish_connection p( cfg['FEATURE_READONLY_FOLLOWER__MASTER_DB_URL'] || cfg['DATABASE_URL'])
    Connections::SalesforceDataHub.establish_connection p (cfg['HEROKU_ONE_DB_URL'] + '?schema_search_path=salesforce,public')
    Connections::Ids.establish_connection p (cfg['IDS_DB_URL'])

    eval("_pry_", binding.callers[1]).config.prompt_name = %[LIVE #{name} DBs!].red
    nil
    # Pry.config.prompt_name = name
  end

  def appo sfid = nil; sfid ? Salesforce::Appointment.find_by(sfid: sfid) : Salesforce::Appointment     end
  def advo username = nil; username ? Salesforce::ClinicalAdvisor.find_by(username: username) : Salesforce::ClinicalAdvisor end
  def rgn;  Salesforce::Region          end
  def _rule; DynamicRoute::VisitorSqlRule end
  def _dr; DynamicRoute end

end



if defined?(Rails) && Rails.application.engine_name =~ /teen_plat/i

  def envi name = 'h2'
    cfg = Bundler.with_clean_env{ `h #{name} config -s | grep URL`}.lines.map{|ln| ln.gsub(?', "").split(/=/, 2).map(&:strip)}.to_h
    ActiveRecord::Base.octopus_establish_connection p cfg['DATABASE_URL']
    Salesforce::Base.establish_connection p (cfg['HEROKU_ONE_DB_URL'] + '?schema_search_path=salesforce,public')
    eval("_pry_", binding.callers[1]).config.prompt_name = %[LIVE #{name} DBs!].red
  end



  # def happ name = 'ioa-api-h2-us'
  #   cfg = Bundler.with_clean_env{ `heroku config -s -a #{name} | grep URL`}.lines.map{|ln| ln.gsub(?', "").split(/=/, 2).map(&:strip)}.to_h
  #   ActiveRecord::Base.octopus_establish_connection p cfg['DATABASE_URL']

  #   Pry.config.prompt = proc{ "pry: #{name}> "}
  # end


  def _tile;   Advent::ContextualTile end
  def _page;   Advent::Resource::Page end
  def _saldoc; Salesforce::Doctor     end
  def _salcnt; Salesforce::Counter    end

end








# Copyright (c) Conrad Irwin <conrad.irwin@gmail.com> -- MIT License
# Source: https://github.com/ConradIrwin/pry-debundle
#
# To install and use this:
#
# 1. Recommended
#   Add 'pry' to your Gemfile (in the development group)
#   Add 'pry-debundle' to your Gemfile (in the development group)
#
# 2. OK, if colleagues are wary of pry-debundle:
#   Add 'pry' to your Gemfile (in the development group)
#   Copy this file into ~/.pryrc
#
# 3. Meh, if colleagues don't like Pry at all:
#   Copy this file into ~/.pryrc
#   Create a wrapper script that runs `pry -r<your-application>`
#
# 4. Pants, if you don't like Pry:
#   Copy the definition of the debundle! method into your ~/.irbrc
#   Call 'debundle!' from IRB when you need to.
#
class << Pry

  # Break out of the Bundler jail.
  #
  # This can be used to load files in development that are not in your Gemfile (for
  # example if you want to test something with a tool that you have locally).
  #
  # @example
  #   Pry.debundle!
  #   require 'all_the_things'
  #
  # Normally you don't need to cal this directly though, as it is called for you when Pry
  # starts.
  #
  # See https://github.com/carlhuda/bundler/issues/183 for some background.
  #
  def debundle!
    return unless defined?(Bundler)
    loaded = false

    if rubygems_18_or_better?
      if Gem.post_reset_hooks.reject!{ |hook| hook.source_location.first =~ %r{/bundler/} }
        # Bundler.preserve_gem_path
        Bundler::EnvironmentPreserver.new(ENV, %w(GEM_PATH)).backup
        Gem.clear_paths
        Gem::Specification.reset
        remove_bundler_monkeypatches
        loaded = true
      end

    # Rubygems 1.6 — TODO might be quite slow.
    elsif Gem.source_index && Gem.send(:class_variable_get, :@@source_index)
      Gem.source_index.refresh!
      remove_bundler_monkeypatches
      loaded = true

    else
      raise "No hacks found :("
    end
  rescue => e
    puts "Debundling failed: #{e.message}"
    puts "When reporting bugs to https://github.com/ConradIrwin/pry-debundle, please include:"
    puts "* gem version: #{Gem::VERSION rescue 'undefined'}"
    puts "* bundler version: #{Bundler::VERSION rescue 'undefined'}"
    puts "* pry version: #{Pry::VERSION rescue 'undefined'}"
    puts "* ruby version: #{RUBY_VERSION rescue 'undefined'}"
    puts "* ruby engine: #{RUBY_ENGINE rescue 'undefined'}"
  else
    load_additional_plugins if loaded
  end

  # After we've escaped from Bundler we want to look around and find any plugins the user
  # has installed locally but not added to their Gemfile.
  #
  def load_additional_plugins
    old_plugins = Pry.plugins.values
    Pry.locate_plugins
    new_plugins = Pry.plugins.values - old_plugins

    new_plugins.each(&:activate!)
  end

  private

  def rubygems_18_or_better?
    defined?(Gem.post_reset_hooks)
  end

  def rubygems_20_or_better?
    Gem::VERSION.to_i >= 2
  end

  # Ugh, this stuff is quite vile.
  def remove_bundler_monkeypatches
    if rubygems_20_or_better?
      load 'rubygems/core_ext/kernel_require.rb'
    else
      load 'rubygems/custom_require.rb'
    end

    if rubygems_18_or_better?
      Kernel.module_eval do
        def gem(gem_name, *requirements) # :doc:
          skip_list = (ENV['GEM_SKIP'] || "").split(/:/)
          raise Gem::LoadError, "skipping #{gem_name}" if skip_list.include? gem_name
          spec = Gem::Dependency.new(gem_name, *requirements).to_spec
          spec.activate if spec
        end
      end
    else
      Kernel.module_eval do
        def gem(gem_name, *requirements) # :doc:
          skip_list = (ENV['GEM_SKIP'] || "").split(/:/)
          raise Gem::LoadError, "skipping #{gem_name}" if skip_list.include? gem_name
          Gem.activate(gem_name, *requirements)
        end
      end
    end
  end
end

# Run just after a binding.pry, before you get dumped in the REPL.
# This handles the case where Bundler is loaded before Pry.
# NOTE: This hook happens *before* :before_session
Pry.config.hooks.add_hook(:when_started, :debundle){ Pry.debundle! }

# Run after every line of code typed.
# This handles the case where you load something that loads bundler
# into your Pry.
Pry.config.hooks.add_hook(:after_eval, :debundle){ Pry.debundle! }


def fix_postgres!
  `rm /usr/local/var/postgres/postmaster.pid`
end
