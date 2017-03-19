#encoding: utf-8

require 'calabash-android/calabash_steps'

Dado(/^clico no botão para consulta de cep$/) do
@cep = "40255-290"
touch("android.widget.Button id:'btnCep'")
end

Entao(/^é apresentado uma tela com o campo para informa o cep para consulta$/) do
check_element_exists("android.widget.EditText")
end

Entao(/^preeencho o campo com cep valido$/) do
enter_text("android.widget.EditText", @cep)
touch("android.widget.Button")
wait_for_elements_exist("android.widget.TextView", 
    {
     :timeout => 10, #seconds
     :retry_frequency => 1, #time to retry in seconds
     :timeout_message => "Timeout message" 
    }
)
sleep 5
end

Entao(/^é apresentado a consulta do cep$/) do
check_element_exists("android.widget.TextView")
assert_text(@cep, should_find = true)
sleep 8
end

