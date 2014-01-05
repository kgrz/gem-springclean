require "rubygems/command"

class SpringcleanCommand < Gem::Command
  EXCLUDE = <<-EOF
Use this to uninstall all gems on system _except_ the ones
                                       provided in the Gemfile.lock file
  EOF

  ONLY = <<-EOF
Use this to uninstall all gems provided in the Gemfile.lock
                                       or Gemfile
  EOF


  def description
    <<-EOF
    This command lets you clean up installed gems based on a Gemfile
    or a Gemfile.lock file.

    The default Rubygems installation comes with a similar command
    named 'pristine' which removes all the old versions of Gems installed
    on your machine. However, there is no easy way to retain a specific
    set of Gems. This command provides that functionality.
    EOF
  end

  def initialize
    super 'springclean', "Remove gems based on a Gemfile.lock or Gemfile"

    add_option("-e", "--exclude", EXCLUDE) do |value, options|
      options[:exclude] = true
    end

    add_option("-o", "--only", ONLY) do |value, options|
      options[:include] = true
    end
  end

  def execute
    puts "Hmm. This should work. Why isn't it working?"
  end
end
