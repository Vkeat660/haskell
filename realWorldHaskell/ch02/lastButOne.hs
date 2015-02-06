-- file: ch02/lastButOne
-- lastButOne xs = head (drop (length xs - 2) xs)

lastButOne = last.init
