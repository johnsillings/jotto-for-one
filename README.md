# Jotto for One

A fun little logicky word game for the command line.

## How to play a new game

`ruby jotto.rb`

## The rules of Jotto for One (adapted from Wikipedia)

The computer will randomly select a 5-letter word from the dictionary as its secret word. It will be a real word, and it won't be a proper noun.

You take turns guessing 5-letter words. For every guess, the computer will tell you how many letters in your guess match unique letters in the secret word.

For example, if the secret word is OTHER and the guess is PEACH, the E and H in PEACH match an E and an H in OTHER, so the announced result is "2". (Letters don't need to occur in the same position.)

The secret word can contain duplicate letters. If the secret word is CHEER, and you guess STEEL, the announced result is "2". However, if you guess STEAL, the announced result is "1".

You guess until you win, or until you give up. Try to solve for the secret word in the fewest guesses you can!

## Pen and paper are your friends

If you're gonna crush the computer, you're going to need a pen and paper. First things first, write out the alphabet, A through Z.

When you eliminate a letter (ie; determine that it's definitely *not* in the secret word), cross it out.

When you find a letter (ie; determine that it definitely *is* in the secret word), circle it.

## Other tips for crushing the computer

1. Try to eliminate letters by guessing words with few unique letters (like QUEUE, only 3 unique letters) or uncommon letters (like PYGMY). Getting a "0 letters in common" result is a powerful foundation to build on.

2. Hunt for (or eliminate) individual letters by guessing words with similar letters in succession. E.g. CREPE, PEERS, PREEN, REPEL.

3. Use confirmed letters & eliminated letters to your advantage by using them in subsequent guesses.

4. Be purposeful with your guesses. Are you trying to confirm or eliminate a specific letter? Are you trying to get a "zero" result to eliminate a few letters at once? Have a game plan for every turn, and guess accordingly.

5. Trust your instincts as a starting point, and then verify (or falsify) them with good guesses.


