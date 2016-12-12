Rails.application.config.after_initialize do
  Bullet.tap do |config|
    config.enable         = true
    config.alert          = false
    config.console        = true
    config.add_footer     = true
    config.bullet_logger  = false
    config.rails_logger   = true
  end
end
