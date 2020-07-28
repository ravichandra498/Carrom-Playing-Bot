# Carrom-Playing-Bot
## Applications
- 
## Limitations
- If we define 4 regions on the board formed by intersection of two lines joining opposite pockets. If the coin is present in one of the 4 regions farthest from striking position
,straight head on shot will fail.
- Uniform power for all coordinates can lead to unstable movement of coin.
- Rebound shots not taken.
- The radius of the coin is not considered so if a coin is considerably near to the path of the shot it may even obstruct the shot and the result will not be achievable.
## Future Improvement
- The current Bot takes shots so as to have head on collision between the striker and coin.The point of placing the striker is simply determined by extending the line the line joining centres of pocket and the coin to pocketed. The bot can take oblique shots in future to play cuts and glances on the carrom. The current model does not take into account the radius of the coin which will account for errors in case of oblique collision. With taking the radius of coin r and striker R into consideration an optimal angle A can be determined. A is the angle of line of impact with the horizontal. It can be calculated in terms of parameters R,r and (x,y) coordinates of the coin.
- A further optimization of the current bot is to take rebound shots effictively on the carrom board. Let's call the region from edges of the carrom board to the spot where we place the striker as X. Then for a coin in X it is optimal to take rebound if the distance of the coin is less than half the carromboard length. This means y<=(L/2) where L is the length of the board. For Rebound we need to consider the friction coefficient and compute average tranferred power post collision.
- The current bot makes use of a constant power to hit coins at all positions on the x-y plane. Although we can determine an optimum velocity for the regions (0-L/4),(L/4-L/2),(L/2,3L/4),(3L/4,L) where L is the length of the board and the ranges are of corresponding y components.we can make use of speed control to modulate the velocity imparted to the striker in these cases.
- There is a good possibility of introduction of supervised Machine learning where the Bot takes shots and feedback is taken by it. Accordingly the feedback acts as the data set of the Supervised Machine Learning and the bot can improve on taking shots for particular coordinate by varying the power of shot and recording the results. This way a large number of such trials can be done for different coordinates to determine the optimal power to be delivered for the corresponding coordinate.
## Team Members
- Akash Deep
- Ayush
- Deovil Vimal Dubey
- Inzamam
- Keshav Dixit
- 
## Mentors
- Yawan 
- Dhruv
