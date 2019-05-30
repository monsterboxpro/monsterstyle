module GemBuilder
  def build_monsterstyle_gem

    @gem_dir = '../gem/monsterstyle/'
    @gem_sass = "#{@gem_dir}vendor/assets/stylesheets/monsterstyle"
    @app_sass = '../source/stylesheets/monsterstyle'


    # Clean and Copy Files

    FileUtils.rm_r @gem_sass
    FileUtils.copy_entry @app_sass, @gem_sass

    # Build Gem File
    Dir.chdir(@gem_dir){
      %x[gem bump --version minor]
      %x[rake build]
      # Uncomment when ready to release gem
      # %x[gem release]
    }
  end
end
