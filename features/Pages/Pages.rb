

class Tasks_Page < SitePrism::Page
    set_url 'https://demo.suiteondemand.com'

    element :usuario, 'input[id=user_name]'
    element :senha, 'input[id=user_password]'
    element :btnLogin, 'input[id=bigbutton]'
    element :subject, 'input[id=name]'
    element :status, 'select[name=status]'
    element :priority, 'select[id=priority]'
    element :btnSave, 'input[id=SAVE]'

    element :menu, 'input[id=grouptab_3]'
    element :btnremove, 'input[name=Remove]'
    


end