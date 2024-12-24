import pytest
from test import url_extract

def test_url_extract(capsys):
    url = "https://www.example.com"
    url_extract(url)
    captured = capsys.readouterr()
    assert captured.out == "example\n"

    url = "http://www.test.org"
    url_extract(url)
    captured = capsys.readouterr()
    assert captured.out == "test\n"

    url = "https://sub.domain.co.uk"
    url_extract(url)
    captured = capsys.readouterr()
    assert captured.out == "sub\ndomain\nco\nuk\n"

    url = "http://www.example.com/path/to/page"
    url_extract(url)
    captured = capsys.readouterr()
    assert captured.out == "example\npath\nto\npage\n"

if __name__ == "__main__":
    pytest.main()