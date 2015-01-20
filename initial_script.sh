bundle install --path vendor/bundle
bundle exec ruby scripts/update_config.rb
 
bundle exec rake clean_up
bundle exec rake report_start

bundle exec rake authentication
bundle exec rake initial
bundle exec rake daypass
bundle exec rake bolton
bundle exec rake trial
bundle exec rake credit
bundle exec rake rebill 
bundle exec rake reinitial
bundle exec rake mobile_initial
bundle exec rake mobile_reinitial
# bundle exec rake profile_text
# bundle exec rake profile_view
# bundle exec rake photo
# bundle exec rake characteristics
# bundle exec rake whos_viewed_me

# bundle exec rake spotlight
# bundle exec rake splash_signup
# bundle exec rake signup
# bundle exec rake auto_login
# bundle exec rake mobile_login
# bundle exec rake login
# bundle exec rake openx
# bundle exec rake mobile_user 
# bundle exec rake desktop_mail
 
bundle exec rake report_finish
