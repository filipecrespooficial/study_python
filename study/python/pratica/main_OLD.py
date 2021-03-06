
import os
import getpass

accounts_list = {
    '0001': {
        'password': '123456',
        'name': 'Filipe',
        'value': 100,
        'admin': False,
    },
    '0002': {
        'password': '123456',
        'name': 'Marcos',
        'value': 10,
        'admin': False,
    },
    '1111': {
        'password': '123456',
        'name': 'Admin',
        'value': 10,
        'admin': True,
    }
}

money_slips = {
    '20':5,
    '50': 5,
    '100': 5,
}

def main():

    header()

    account_auth = auth_account()

    if account_auth:
        clear()
        header()
        option_typed = get_menu_option_typed(account_auth)
        do_operation(option_typed, account_auth)
    else:
        print('conta invalida')


def do_operation(option_typed,account_auth):
    if option_typed == '1':
        show_balance(account_auth)
    elif option_typed == '2':
        withraw()
    elif option_typed == '1' and accounts_list[account_auth]['admin']:
        insert_money_slips()



def show_balance(account_auth):
    print('SALDO = %s ' % accounts_list[account_auth]['value'])


def insert_money_slips():
    amount_typed = input('Digite a quantidade de cédulas:')
    money_bill_typed = input('Digite a cédulas a ser incluida:')
    money_slips[amount_bill_typed] += int(account_auth)


def withraw():
    value_typed = input('Qual o valor a ser sacado')

    money_slips_user = {}
    value_int = int(value_typed)


    if value_int // 100 > 0 and value_int // 100 <= money_slips['100']:
        money_slips_user['100'] = value_int // 100
        value_int = value_int - value_int // 100 * 100

    if value_int != 0:
        print('O caixa não tem celulas disponiveis para este valor')
    else:
        for money_bill in money_slips_user:
            money_slips[money_bill] -= money_slips_user[money_bill]

        print('Pegue suas notas....')
        print(money_slips_user)


def get_menu_option_typed(account_auth):
    print("1  -> SALDO")
    print("2  -> DEPOSITO")
    print("3  -> SAQUE")
    if accounts_list[account_auth]['admin']:
        print("10 -> INCLUIR NOTAS")
    return input('Escolha uma das opções acima: ')


def auth_account():
    account_typed = input('Digite sua conta: ')
    password_typed = getpass.getpass('Digite sua senha: ')

    if account_typed in accounts_list and password_typed == accounts_list[account_typed]['password']:
        return account_typed
    else:
        return False


def header():
    print("**********************************************************")
    print("***************      CAIXA ELETRÔNICO      ***************")
    print("**********************************************************")


def clear():
    os.system('cls' if os.name == 'nt' else 'clear')


clear()

while True:
    main()

    input('Pressione <ENTER> para continuar...')

    clear()
