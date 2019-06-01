#!/usr/bin/env python3

# Question:
# Write a function that get the content of the <title> tag of a given url
#
# Suppose the following parameter is supplied to the program:
# https://www.google.es
# Then, the output should be:
# Google
#
# Hints:
# Use the requests module to read the web content
# Use the BeautifulSoup to process the HTML

import sys
import requests
from bs4 import BeautifulSoup


def get_title(url):

    r = requests.get(url)
    soup = BeautifulSoup(r.text, features="html.parser")

    return soup.title.contents[0]


# ------- START TDD TESTS DEFINITION -----------
def test_get_title_google():
    url = "https://www.google.com/"
    assert get_title(url) == "Google"


def test_get_title_alhambra():
    url = "http://www.alhambra-patronato.es/"
    assert get_title(url) == "Patronato de la Alhambra y Generalife"


def test_get_title_wikipedia():
    url = "https://en.wikipedia.org/wiki/Main_Page"
    assert get_title(url) == "Wikipedia, the free encyclopedia"
# ------- END TDD TESTS DEFINITION -------------


# Program entrypoint
if __name__ == "__main__":

    if len(sys.argv) == 2:
        url = sys.argv[1]
        result = get_title(url)
        print(result)

    else:
        print("Usage: %s <url>" % sys.argv[0])
