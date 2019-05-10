import getpass

print("**********************************************************")
print("***************      CAIXA ELETRÔNICO      ***************")
print("**********************************************************")


account_typed = input('Digite sua conta: ')
password_typed = getpass.getpass('Digite sua senha: ')

# print(account_typed)
# print(password_typed)

# agencia, senha, nome, valor

accounts_list = {
    '0001-02': {
        'password': '123456',
        'name': 'Filipe',
        'value': 100,
    },
    '0002-02': {
        'password': '123456',
        'name': 'Filipe',
        'value': 10,
    }
}

if account_typed in accounts_list and password_typed == accounts_list[account_typed]['password']:
    print('conta valida')
    print("**********************************************************")
    print("***************      CAIXA ELETRÔNICO      ***************")
    print("**********************************************************")
    print("1 -> SALDO")
    print("2 -> DEPOSITO")
    print("2 -> SAQUE")
    option_typed = input('Escolha uma das opções acima: ')


    if option_typed == '1':
        print('SALDO = %s ' % accounts_list[account_typed]['value'])


else:
    print('conta invalida')
