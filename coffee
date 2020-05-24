import sys

money = 550
water = 400
milk = 540
coffee = 120
cups = 9


def display():
    print("The coffee machine has: \n"
          + str(water) + " of water \n"
          + str(milk) + " of milk \n"
          + str(coffee) + " of coffee beans\n"
          + str(cups) + " of disposable cups \n"
          + "$" + str(money) + " of money"
        )


def menu():
    choice = input("Write action (buy, fill, take, remaining, exit): ")
    if choice in ("buy", "fill", "take", "remaining"):
        return choice
    elif choice == "exit":
        quit()
    else:
        print("That is not a valid choice. Please enter again")
        run_menu()


def choice_pick(choice):
    if choice == "buy":
        buy()
    elif choice == "fill":
        fill()
    elif choice == "take":
        take()
    elif choice == "remaining":
        remaining()


def buy():
    global water
    global coffee
    global money
    global milk
    global cups
    print("")
    buy_choice = input("What do you want to buy? 1 - espresso, 2 - latte, 3 - cappuccino, back - to main menu: ")
    if buy_choice == "1":
        check("espresso")
    elif buy_choice == "2":
        check("latte")
    elif buy_choice == "3":
        check("cappuccino")
    elif buy_choice == "back":
        run_menu()
    run_menu()


def fill():
    global water
    global coffee
    global money
    global milk
    global cups

    add_water = int(input("Write how many ml of water you want to add: "))
    water += add_water
    add_milk = int(input("Write how many ml of milk you want to add: "))
    milk += add_milk
    add_coffee = int(input("Write how many grams of coffee beans you want to add: "))
    coffee += add_coffee
    add_cups = int(input("Write how many disposable cups of coffee you want to add: "))
    cups += add_cups
    run_menu()


def check(type):
    global water
    global coffee
    global money
    global milk
    global cups

    if type == "espresso":
        if water >= 250 and coffee >= 16 and cups >= 1:
            print("I have enough resources, making you a coffee!")
            water -= 250
            coffee -= 16
            money += 4
            cups -= 1
        else:
            if water < 250:
                print("Sorry, not enough water!")
            elif coffee < 16:
                print("Sorry, not enough coffee!")
            elif cups < 1:
                print("Sorry, not enough cups!")
    elif type == "latte":
        if water >= 350 and milk >= 75 and coffee >= 20 and cups >= 1:
            print("I have enough resources, making you a coffee!")
            water -= 350
            milk -= 75
            coffee -= 20
            money += 7
            cups -= 1
        else:
            if water < 350:
                print("Sorry, not enough water!")
            elif milk < 75:
                print("Sorry, not enough milk!")
            elif coffee < 16:
                print("Sorry, not enough coffee!")
            elif cups < 1:
                print("Sorry, not enough cups!")
    elif type == "cappuccino":
        if water >= 200 and milk >= 100 and coffee >= 12 and cups >= 1:
            print("I have enough resources, making you a coffee!")
            water -= 200
            milk -= 100
            coffee -= 12
            money += 6
            cups -= 1
        else:
            if water < 200:
                print("Sorry, not enough water!")
            elif milk < 100:
                print("Sorry, not enough milk!")
            elif coffee < 12:
                print("Sorry, not enough coffee!")
            elif cups < 1:
                print("Sorry, not enough cups!")

def take():
    global money
    print("I gave you " + "$" + str(money))
    money = 0
    run_menu()

def remaining():
    display()
    run_menu()

def run_menu():
    choice = menu()
    choice_pick(choice)

run_menu()
'''
'''
salary = int(input())
taxrate = 0

if salary <= 15527:
    taxrate = 0
elif 15528 < salary < 42707:
    taxrate = 0.15
elif 42708 < salary < 132406:
    taxrate = 0.25
else:
    taxrate = 0.28

tax_due = salary * taxrate

print(f"The tax for {salary} is {(taxrate * 100):.0f}%. That is {tax_due:.0f} dollars!")
