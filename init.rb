Redmine::Plugin.register :sample_plugin do
  name 'Sample Plugin plugin'
  author 'Author name'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'

  # --- from here to add the menu item on project menu ---
  permission    :test001, # route symbol
                {:test => [:index]},
                :public => true

  menu          :project_menu,
                :test001, # route symbol
                {:controller => 'test', :action => 'index'},
                :caption => :label_menu_caption,
                :after => :activity,
                :param => :project_id
  # --- to here to add the menu item on project menu ---

end
