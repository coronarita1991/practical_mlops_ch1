# tests/test_add.py

from app.add import add


def test_add():
    """Test the add function."""
    assert add(2, 3) == 5
    assert add(1, 2) == 3
    assert add(-1, 1) == 0
    assert add(0, 0) == 0
    assert add(100, 200) == 300
    assert add(-5, -5) == -10
