# Snake Love 2D

This repository contains a game called "_Snake Love 2D_", made with [Lua][credits-lua] and the [Love 2D][credits-love2d] framework. It's structured in a series of many different subrepositories, so that developers can follow along and use it as a basis on which to develop the game, starting from scratch, going all the way to a fully implemented game, at the very last stage of development.

The code is commented rairly thoroughly with the intention that, by reading it, developers are able to get a sense of what each _Lua_ module does.

## <a name='ToC'>Table of Contents</a>

  - [Game Design Document](#snake-gdd)
  - [Subrepositories](#snake-subrepos)
    - ***Update 0:*** [Hello](#hello)
    - ***Update 1:*** [Low-res](#low-res)
    - ***Update 2:*** [Font](#font)
    - ***Update 3:*** [Grid](#grid)
    - [***Future updates***](#FrU)

---

## <a name='snake-gdd'>Game Design Document</a>

### Game concept

It's a casual, 2D, Nokia's "_Blockade_" variant style game, where the player controls a snake, that grows in size and speed everytime it eats apples that appear randomly on the screen. Its goal is to eat as many apples as possible, without colliding with the boundaries of the level or with itself.
<br>
<br>

<img src="images/blockade-game-screenshot.png?raw=true" title="Blockade game screenshot" alt="Blockade image" width="400" >
  
**Blockade screenshot**  
_Source:_ Screenshot of "_Blockade_" arcade game showing 2 players facing each other.  
[Saved from youtube.com][source-blockade-76]. Uploaded by Old Classic Retro Gaming.  
<br>

<img src="images/nokia-snake-2d-screenshot.png?raw=true" title="Nokia Snake 2D screenshot" alt="Nokia Snake 2D image" width="400" >
  
**Nokia Snake 2D screenshot**  
_Source:_ Screenshot of "_Snake '97: retro phone classic_" game showing 8 kinds of food eaten. "_An homage to the classic mobile phone game programmed in 1997_". Developed by Willem (dsd 164).  
[Saved from Apps on Google Play][source-snake-97].
<br>

<img src="images/snake-love-2d-mockup-screenshot.png?raw=true" title="Snake Love 2D mockup screenshot" alt="Mockup image" width="400" >
  
**Snake Love 2D mockup screenshot**  
_Source:_ Screenshot of "_Snake Love 2D_" mockup showing 15 apples eaten.  

**[[⬆]](#ToC)**

### Target platforms

* **Cross-operating-system:** Windows and MacOs desktop 
* **Runs on:** PC only

**[[⬆]](#ToC)**

### UI and player controls

* Displays a message at the top left of the screen that indicates how to control the snake
* Prints the current time at the top right corner of the screen
* The snake is constantly moving inside a grid at the center of the screen
* A score at the bottom left corner of the screen is increased each time the snake eats an apple
* Displays the number of apples that have been eaten at the bottom right corner of the screen
* The player interacts with the game with a keyboard
* When the player presses the arrow keys, the snake moves

**[[⬆]](#ToC)**

### Game mechanics

* An apple spawns at a random location at the start of the game, and everytime the current apple gets eaten
* Everytime the snake eats an apple, the game score is increased. The less number of moves it takes to get to an apple, as soon as that apple spawns, the better:

  | Number of moves | Score increase |
  | --------------- | -------------- |
  |  1              |  1000          |
  |  2              |  500           |
  |  3+             |  100           |

* If the snake collides with any of the walls surrounding it or if it collides with itself, the game restarts
* The player wins either if the score reaches 100000 points, or if the snake eats 100 apples. The game restarts soon after, if the player chooses so
* The snake's head moves exactly one unit into 1 of 4 directions, to adjacent grid cells, and the rest of the snake's body follows its trajectory. It's not be able to move in the opposite direction to its current direction

**[[⬆]](#ToC)**

### Assets
 
* **Type of digital art:** 8-bit pixel art
* **Look and feel:** retro look. Built to have a resolution resembling the one from the arcade game _Blockade_, but in widescreen (16:9), for it to look better on modern systems
* **Color palette:** a single color, harlequin green, with different opacity variations
* **Entities representation:** no sprites are used, only simple shapes
  - **Snake:** list of squares
  - **Apple:** circle

**[[⬆]](#ToC)**

---

## <a name='snake-subrepos'>Subrepositories</a>

### ***Update 0:*** <a name='hello'>[Hello][update-0]</a>

Prints "_Welcome to Snake Love 2D!_" at the center of the screen, with the default Font.

**[[⬆]](#ToC)**

### ***Update 1:*** <a name='low-res'>[Low-res][update-1]</a>

Prints the same text as the first update, but with a low resolution, crisp, pixelated aesthetic. It uses Ulydev's [push][library-push] library to do so.

**[[⬆]](#ToC)**

### ***Update 2:*** <a name='font'>[Font][update-2]</a>

Imports an old-fashioned font, and applies it to the welcome message from the previous update.

It uses Ulydev's [push][library-push] library.

**[[⬆]](#ToC)**

### ***Update 3:*** <a name='grid'>[Grid][update-3]</a>

Defines a 16 by 16 pixel square, and uses it to draw as many copies as needed for them to cover the entire screen.

Used for debugging.

**[[⬆]](#ToC)**

### <a name='FrU'>***Future updates***</a>

  - ***Update 4:*** Title
  - ***Update 5:*** Color Mapper
  - ***Update 6:*** Quit game
  - ***Update 7:*** Ground
  - ***Update 8:*** Snake head
  - ***Update 9:*** Controls
  - ***Update 10:*** Snake move
  - ***Update 11:*** Current time
  - ***Update 12:*** Random food
  - ***Update 13:*** Score
  - ***Update 14:*** Apples eaten
  - ***Update 15:*** Direction constraint 
  - ***Update 16:*** Direction arrow 
  - ***Update 17:*** Snake grow 
  - ***Update 18:*** Spawn apple 
  - ***Update 19:*** Snake velocity 
  - ***Update 20:*** Points multiplier 
  - ***Update 21:*** Inner bounds
  - ***Update 22:*** Self collision
  - ***Update 23:*** Game over
  - ***Update 24:*** Audio
  - ***Update 25:*** Game reset
  - ***Update 26:*** Success
  - ***Update 27:*** State object
  - ***Update 28:*** Blink animation
  - ***Update 29:*** Screen shake
  - ***Update 30:*** Inner walls
  - ***Update 31:*** Snake dive
  - ***Update 32:*** Procedural walls
  - ***Update 33:*** Splash screen
  
**[[⬆]](#ToC)**

---

### Credits ###

This repository was inspired by [CS50's Introduction to Game Development][credits-course] online course, which was mainly instructed by [Colton Ogden][credits-instructor], and contains lectures and hands-on projects related to the development of 2D and 3D interactive games. It was also inspired by that [course's repository][credits-repo], Olivine Labs' [Lua Style Guide][credits-lua-style], cocos2d's [cocos2d Javascript test and games][credits-cocos2d-games], and OneSignal's [Emoji Picker][credits-emoji-picker]. This version is focused on paying an homage to _Blockade_ from 1967, using the [Lua programming language][credits-lua], and the [Love 2D framework][credits-love2d].

The Game Design Document explained by [Zenva Academy][credits-zenva-twitter], in "_[Game Develoment Tools - How to Create a Game Design Document][credits-zenva-gdd]_" from youtube.com, was used as a reference.

**[[⬆]](#ToC)**

### Technical specifications ###

   * Operating system: Windows
   * Text editor of choice: Sublime Text 3

**[[⬆]](#ToC)**

### Websites ###

   * Lua programming language: [http://www.lua.org][credits-lua]
   * Love 2D: [https://love2d.org][credits-love2d]

   [library-push]: https://github.com/Ulydev/push "Ulydev's push repository"
   [library-class]: https://github.com/vrld/hump/blob/master/class.lua "vrld's class repository"
   [function-clear]: https://love2d.org/wiki/love.graphics.clear "Love 2d clear function"
   
   [credits-course]: https://online-learning.harvard.edu/course/cs50s-introduction-game-development "CS50's Introduction to Game Development online course"
   [credits-instructor]: https://github.com/coltonoscopy "Colton Ogden's Github profile"
   [credits-repo]: https://github.com/games50/ "CS50's Introduction to Game Development Github repository"
   [credits-lua]: http://www.lua.org "Lua website"
   [credits-love2d]: https://love2d.org "Love 2D website"
   [credits-lua-style]: https://github.com/Olivine-Labs/lua-style-guide "Lua Style Guide repository"
   [credits-cocos2d-games]: https://github.com/cocos2d/cocos2d-js-tests "Cocos2d Javascript test and games repository"
   [credits-emoji-picker]: https://github.com/OneSignal/emoji-picker "Emoji Picker repository"
   [credits-zenva-twitter]: https://twitter.com/zenvatweets "Zenva Academy"
   [credits-zenva-gdd]: https://youtu.be/LQVSHa0qSjQ "How to Create a Game Design Document, by Zenva Academy"

   [source-blockade-76]: https://youtu.be/5v-0CwiabZA "Arcade Game Blockade (1976, Gremlin) [Re-Uploaeded]"
   [source-snake-97]: https://play.google.com/store/apps/details?id=com.dsd164.snake97 "Snake '97 retro phone classic"

   [update-0]: https://github.com/e2matheus/snake-love-2d-master/tree/master/snake-0-hello "Hello update code"
   [update-1]: https://github.com/e2matheus/snake-love-2d-master/tree/master/snake-1-low-res "Low-res update code"
   [update-2]: https://github.com/e2matheus/snake-love-2d-master/tree/master/snake-2-font "Font update code"
   [update-3]: https://github.com/e2matheus/snake-love-2d-master/tree/master/snake-3-grid "Grid update code"

**[[⬆]](#ToC)**
