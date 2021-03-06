require 'redmine'
require 'acts_as_viewed'
require 'acts_as_rated'
require 'acts_as_taggable'

Redmine::Plugin.register :redmine_knowledgebase do
  name        'Knowledgebase'
  author      'Alex Bevilacqua'
  description 'A plugin for Redmine that adds knowledgebase functionality'
  url         'http://projects.alexbevi.com/projects/redmine-kb'
  author_url  'http://blog.alexbevi.com'
  version     '0.2.5'

  requires_redmine :version_or_higher => '0.8.0'

  menu :top_menu, :knowledgebase, { :controller => 'knowledgebase', :action => 'index'}, :caption => 'Knowledgebase'

  Redmine::Search.available_search_types << 'articles'
end

