require 'calabash-android/management/adb'
require 'calabash-android/operations'

Before do |scenario|
  start_test_server_in_background
end
# Tem que criar a pasta screenshots com a descrição de falhou e passou.
After do |scenario|
  # directory_name = "#{Time.now.strftime('%Y_%m_%d').to_s}"
  # Dir.mkdir(directory_name) unless File.exists?(directory_name)
  @scenario_name = scenario.name.gsub(/\s+/, '_').tr('/', '_')
  if scenario.failed?
  screenshot_embed(:prefix => "#{@file_path}/screenshots/failed/", :name => "#{@scenario_name}_#{Time.now.strftime('%Y_%m_%d').to_s}")
  else
  screenshot_embed(:prefix => "#{@file_path}/screenshots/passed/", :name => "#{@scenario_name}_#{Time.now.strftime('%Y_%m_%d').to_s}")
  end
  shutdown_test_server
 end
