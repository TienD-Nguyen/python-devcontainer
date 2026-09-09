from playgrounds.main import say_hello


def test_say_hello():
    greeting: str = say_hello()
    assert len(greeting) > 0