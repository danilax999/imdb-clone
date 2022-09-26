# frozen_string_literal: true

# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require 'rubocop/rake_task'
require_relative 'config/application'

Rails.application.load_tasks

RuboCop::RakeTask.new do |t|
  t.options = %w[ --autocorrect-all
                  --format=emacs
                  --force-exclusion
                  --display-cop-names
                  --config ./.rubocop.yml ]
end
