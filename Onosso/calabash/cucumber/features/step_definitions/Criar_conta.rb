#encoding: utf-8

Dado(/^que cilque no botão crie seua conta$/) do
touch("android.widget.Button id:'registerBTN'")
end

Quando(/^preencho os campos para cadastro$/) do

touch(query("android.widget.CheckBox id:'termCB'"))
enter_text("android.widget.EditText id:'passwordETX'", @senha)
enter_text("android.widget.EditText id:'nameETX'", @nome)
enter_text("android.widget.EditText id:'surnameETX'", @sobrenome)
query("android.widget.EditText id:'birthdayETX'", setText: @data_na)
touch(query("android.support.v7.widget.AppCompatTextView")[1])
sleep 2
touch(query("* marked:'Masculino'"))
sleep 2
query("android.widget.EditText id:'emailETX'", setText: @email)
sleep 2

end

Quando(/^confirmo o cadastro acionando o botão cadastrar$/) do
touch("android.widget.Button id:'registerBTN'")
end

Então(/^o usuário é direcionado para tela de login com o e\-mail disponivel no campo e\-mail$/) do
wait_for_elements_exist("android.widget.EditText id:'emailETX'",timeout: 8)
assert_text(@email, should_find = true)
end