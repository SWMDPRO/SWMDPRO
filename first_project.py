import os
os.system('cls')


def currency_converter(rate, euros):
    dollar = euros*rate
    print(f'The amount in USD is: {dollar}\n\n\n')


r = float(input('Please enter rate: \n'))
e = float(input('Please enter euro amount: \n'))

os.system('cls')

currency_converter(r, e)


password = ''
reg_pass = '1'
while password != reg_pass:
    password = input('Please enter your password:\n')
    if password == reg_pass:
        os.system('cls')
        print('Logging in - Please hold!\n\n\n')
    else:
        os.system('cls')
        print('Wrong password...\nTry again!')


user_input = ''


def string_len(user_input):
    user_input = str(input('Please write your name:\n'))
    return len(user_input)


string_len(user_input)
