import square_free


class TestSpiralPrimes:
    def test_one(self):
        assert square_free.main(20) == 3

    def test_two(self):
        assert square_free.main(72) == 3
