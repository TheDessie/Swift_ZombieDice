# Zombie Dice
### *Board game Zombie Dice implemented using Swift*

Hello! This is a project for my Swift course in FMI.

## Step 1: The Overview

There are 13 dice total

The dice have pictures on them. The pictures mean you ate a brain, your victim got away, or they shot you back.

The dice are colored green, yellow and red. 3 are red, 4 are yellow, and 6 are green. As you may have figured out, red dice are colored red because they are "high risk" dice. We will get to that later.

### *How to win*

First player to reach 13 brains is the winner.

## Step 2: The Dice

**Here is an overview of the dice.**

The objective of the game is to get 13 brains. They can consist of any color brain.
So you may think that green dice mean automatic brains. This is not the case. If you look closely, all dice, no matter what color, have a shot, feet, and brains. The difference in them is the color and thus outcome.
The meaning behind the colors is the probability of how bad your outcome will be. For example, say you pull out 3 red dice, you are more than likely going to be shot 3 times.

**So dice go as follows:**

* Green dice - They have 3 x 🧠,  2 x 👣,  1 x 💥 (more likely to roll a brain)

* Yellow dice - They have 2 x 🧠,  2 x 👣,  2 x 💥 (little less likely to roll a brain)

* Red dice - They have 1 x 🧠,  2 x 👣,  3 x 💥 (more likely to get shot)

*Brain is GOOD. Shot is BAD. Footsteps mean ROLL that specific die AGAIN.*

## Step 3: The Rules

Now that you are familiar with the dice and what they mean, lets get to the rules.

- The first player grabs 3 dice and rolls.

- If any footsteps are rolled, they signify rolling that same die again.

- With that being said, each roll must be with 3 dice every time. If you put a brain die and a shot die aside, then you need to grab 2 more dice from the container to make 3 dice.

- If 3 shots have been rolled, the player will loose all their brains they have eaten this round. So it is better to keep safe and pass the turn on to the next player. This way you keep whatever you have eaten.

- If you are shot 3 times and lost all your brains for that round, it's not the end of the world, you can still try again next turn. Anything tallied from a previous round that wasn't shot 3 times is safe.

**First player to get to 13 brains wins!! YAY**

## Instructions
1. Enter the number of players. They should be between 2 and 8.
2. Enter the name of each player.
3. After each turn you should enter if you want to roll again.

