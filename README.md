# Carrom-Playing-Bot
## Mechanical Aspect Of Design
-
## Applications
- It is a fully functional carrom playing bot which attempts to hit the coin that has maximum probability of going into one of the corner pocket with the help of striker.
- Uses IP( uses open CV ) for shot selection and aurdino code for motor control and shot trigger.If we introduce ML , then this bot can compete with anyone.
## Limitations
- If we define 4 regions on the board formed by intersection of two lines joining opposite pockets. If the coin is present in one of the 4 regions farthest from striking position
,straight head on shot will fail.
- Uniform power for all coordinates can lead to unstable movement of coin.
- Rebound shots not taken.
- The radius of the coin is not considered so if a coin is considerably near to the path of the shot it may even obstruct the shot and the result will not be achievable.
## Future Improvement
- The current Bot takes shots so as to have head on collision between the striker and coin. If it takes into account the radii of coins and striker it can manage to play oblique shots.
- A further optimization of the current bot is to take rebound shots effictively on the carrom board.
- We can futher include the reltion between lwngth and power of shots.
- There is a good possibility of introduction of supervised Machine learning. So the bot improves itself with time.
## Team Members
- Akash Deep
- Ayush
- Deovil Vimal Dubey
- Inzamam
- Keshav Dixit
- Ravi Chandra Burra
## Mentors
- Yawan 
- Dhruv
