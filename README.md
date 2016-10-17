Second opinion

Second opinion is a concept project which links specilist doctors with the patients who woild like to seek opinion regarding their ongoing treatment.

There are three kinds of users
1. Admin

Libraries

    jQuery
    sweetalert

Features

The game is played on a grid that has 3 squares by 3 squares. The choice is between player one i.e.. "X" and second player "O". Players take turns putting their marks in empty squares. The first player to get 3 of her marks in a row (up, down, across, or diagonally) is the winner.
How to view

Play it here

Fork
Approach

The game is structured keeping in mind the analogy , Html(Bones) and css(skin) and JavaScript(brain) :

Steps for making the brain and connecting it to bones and skin :

    make click event
    make win sequence array
    make two empty arrays for pushing the values of clicks from playerOne and playerTwo.
    make function for winning
    Function to find the winner.
    Function for the elementPressed in the table. Following were included in the function:
        check if its player one or player two (by using mod operator).
        push value in the respective empty player arrays. - push command.
        called function () "findWinner in the if statement and sort it in ascending order by using sort() method for comparison"
    Function for resetting the board & new game. the main difference between the two is when new game is clicked it resets games won counter.

Helpful Resources

    http://api.jquery.com/jquery.each/
    https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/forEach
    http://blog.idojo.co/the-best-alternative-for-javascript-alert/

Thanks for stopping by, and I hope you enjoy the game!
