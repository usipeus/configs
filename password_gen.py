import random
import string
import sys

wordlist = []
wordlist_fn ="eff_short_wordlist_1.txt"

with open(wordlist_fn, "r") as file:
    for line in file:
        wordlist.append(line.split()[1])

def get_sample(num_passwords = 1, num_words = 3, num_digits = 1, num_upper = 1, num_puctation = 1):
    passwords = []
    for i in range(num_passwords):
        # words
        password = ''
        sample = random.sample(wordlist, num_words)
        for word in sample:
            password += word

        # choose this many letters to be uppercase
        for i in range(num_upper):
            idx = random.randrange(len(password))
            password = password[ : idx] + password[idx].upper() + password[idx + 1: ]

        # digits
        sample = random.sample(string.digits, num_digits)

        # punctuation
        sample += random.sample(string.punctuation, num_puctation)

        for element in sample:
            rand_idx = random.randrange(len(password))
            password = password[ : rand_idx] + element + password[rand_idx : ]

        passwords.append(password)

    return passwords

def print_usage():
    print("Usage: password_gen.py num_passwords")
    exit()

if __name__ == '__main__':
    try:
        num_passwords = int(sys.argv[1])
    except(ValueError, IndexError) as e:
        print_usage()
    if num_passwords < 0:
        print_usage()
    passwords = get_sample(num_passwords = num_passwords)
    for i in passwords:
        print(i)
