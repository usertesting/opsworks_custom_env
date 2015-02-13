# Set up app's custom configuration in the environment.
# See https://forums.aws.amazon.com/thread.jspa?threadID=118107

node[:deploy].each do |application, deploy|
  
  custom_env_template do
    application application
    deploy deploy
    env deploy[:environment_variables]
  end

  link "#{deploy[:deploy_to]}/shared/config/application.yml" do
    to "#{deploy[:deploy_to]}/current/config/application.yml"
  end
  
end
