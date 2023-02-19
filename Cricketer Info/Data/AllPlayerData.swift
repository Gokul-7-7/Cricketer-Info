//
//  AllTeamData.swift
//  Cricketer Info
//
//  Created by Gokul on 05/02/23.
//

import Foundation

extension HomePageViewController {
    
    func setupChennaiSuperKingsData() {
        teamNames.append(.chennaiSuperKings)
        let cskPlayers = [
            PlayerInfoModel(name: "Mahendra Singh Dhoni", role: .wicketKeeperBatsman, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/1.png", description: "A batting powerhouse, MS Dhoni possesses the ability to destroy different bowling attacks on his own. The calmness and composure in his demeanor along with a sharp cricketing brain accounts for a lethal combination on the cricketing field and the glistening silverware in the trophy cabinets at CSK are a testimony to his extraordinary leadership skills.", team: .chennaiSuperKings),
            PlayerInfoModel(name: "Devon Conway", role: .batsman, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/20572.png", description: "The classy and stylist top order batter, Devon Conway was bought by the CSK for his base price of INR 1 crore at the IPL 2022 Mega Auction. Born in South Africa, Devon Conway plays for New Zealand and is known for switching gears while batting and can also keep wickets if required", team: .chennaiSuperKings),
            PlayerInfoModel(name: "Ruturaj Gaikwad", role: .batsman, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/5443.png", description: "The opening batter who hails from Pune, Ruturaj Gaikwad has been a consistent performer for his state team Maharashtra. He was the highest run-getter for Maharashtra in the league stage of the Syed Mushtaq Ali Trophy 2018-19. At the IPL 2019 Player Auction, the Chennai Super Kings secured his services at his base price of INR 20 lacs. He has been their most consistent opener and will look to do the same come April and May.", team: .chennaiSuperKings),
            PlayerInfoModel(name: "Ambati Rayudu", role: .batsman, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/100.png", description: "Power hitter and middle order batsman", team: .chennaiSuperKings),
            PlayerInfoModel(name: "Ravindra Jadeja", role: .allRounder, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/9.png", description: "Best allrounder, power hitter, best fielder", team: .chennaiSuperKings),
            PlayerInfoModel(name: "Dwaine Pretorius", role: .allRounder, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/20573.png", description: "Good overseas allrounder", team: .chennaiSuperKings),
            PlayerInfoModel(name: "Mitchell Santner", role: .allRounder, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/1903.png", description: "Power hitter and good spin bowler", team: .chennaiSuperKings),
            PlayerInfoModel(name: "Moeen Ali", role: .allRounder, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/1735.png", description: "Power hitter, reliable batsman and spin bowler", team: .chennaiSuperKings),
            PlayerInfoModel(name: "Deepak Chahar", role: .bowler, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/140.png", description: "Pace bowler, average economy is good and he bowls well as an opening bowler", team: .chennaiSuperKings),
            PlayerInfoModel(name: "Maheesh Theekshana", role: .bowler, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/20570.png", description: "Srilankan bowler", team: .chennaiSuperKings),
            PlayerInfoModel(name: "Mukesh Choudhary", role: .bowler, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/20575.png", description: "Aggressive bowler", team: .chennaiSuperKings)
        ]
        allPlayerData?.append(contentsOf: cskPlayers)
    }
    
    func setupGujratTitansData() {
        teamNames.append(.gujaratTitans)
        let gujratTitanPlayers = [
            PlayerInfoModel(name: "Hardik Pandya", role: .allRounder, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/2740.png", description: "A big hitter and a fast-bowling all-rounder, Hardik ticks all the boxes that a team desires from an all-rounder. It was no surprise that he was fast-tracked into the Indian ODI and T20 side after a successful run in the IPL 2015. In his debut IPL game against RCB, he hit a six off just the second ball he faced.", team: .gujaratTitans),
            PlayerInfoModel(name: "Abhinav Manohar", role: .batsman, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/20589.png", description: "Abhinav Manohar is a good team player", team: .gujaratTitans),
            PlayerInfoModel(name: "David Miller", role: .batsman, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/187.png", description: "Agressive and experienced batsman", team: .gujaratTitans),
            PlayerInfoModel(name: "Shubman Gill", role: .batsman, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/3761.png", description: "Young and good hitter of the ball", team: .gujaratTitans),
            PlayerInfoModel(name: "Matthew Wade", role: .batsman, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/290.png", description: "Overseas player", team: .gujaratTitans),
            PlayerInfoModel(name: "Wriddhiman Saha", role: .wicketKeeperBatsman, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/16.png", description: "Experienced wicketkeeper batsman", team: .gujaratTitans),
            PlayerInfoModel(name: "Vijay Shankar", role: .allRounder, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/1083.png", description: "Good all rounder", team: .gujaratTitans),
            PlayerInfoModel(name: "B. Sai Sudharsan", role: .allRounder, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/20592.png", description: "Good relaiable all rounder for GT", team: .gujaratTitans),
            PlayerInfoModel(name: "Mohammad Shami", role: .bowler, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/94.png", description: "The best pace bowler who is consistent with his lines", team: .gujaratTitans),
            PlayerInfoModel(name: "Rashid Khan", role: .bowler, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/2885.png", description: "The best spin bowler from Afghanisthan", team: .gujaratTitans)
        ]
        allPlayerData?.append(contentsOf: gujratTitanPlayers)
    }
    
    func setupDelhiCapitalsData() {
        teamNames.append(.delhiCapitals)
        let delhiCaptialPlayers = [
            PlayerInfoModel(name: "Rishabh Pant", role: .wicketKeeperBatsman, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/2972.png", description: "Aggressive batsman and captain of the team", team: .delhiCapitals),
            PlayerInfoModel(name: "David Warner", role: .batsman, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/170.png", description: "Mr. Consistency", team: .delhiCapitals),
            PlayerInfoModel(name: "Prithvi Shaw", role: .batsman, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/3764.png", description: "Good batsman", team: .delhiCapitals),
            PlayerInfoModel(name: "Rovman Powell", role: .batsman, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/3333.png", description: "Hard hitter", team: .delhiCapitals),
            PlayerInfoModel(name: "Axar Patel", role: .allRounder, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/1113.png", description: "Spin bowler and good reliable lower order batsman", team: .delhiCapitals),
            PlayerInfoModel(name: "Kamlesh Nagarkoti", role: .bowler, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/3766.png", description: "Seamer Kamlesh Nagarkoti was one of the bright sparks of the 2018 U19 World Cup who looked like a promising fast bowler ready to shine. He was even drafted into the KKR squad for the 2018 IPL season.", team: .delhiCapitals),
            PlayerInfoModel(name: "Sarfaraz Khan", role: .batsman, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/1564.png", description: "Good batsman", team: .delhiCapitals),
            PlayerInfoModel(name: "Pravin Dubey", role: .bowler, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/3188.png", description: "A leg-spinner and a right-handed batsman", team: .delhiCapitals),
            PlayerInfoModel(name: "Mitchell Marsh", role: .bowler, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/221.png", description: "What a bowler!", team: .delhiCapitals)
        ]
        allPlayerData?.append(contentsOf: delhiCaptialPlayers)
    }
    
    func seupKolkataKnightRidersData() {
        teamNames.append(.kolkataKnightRiders)
        let kkrPlayers = [
            PlayerInfoModel(name: "Shreyas Iyer", role: .batsman, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/1563.png", description: "Consistent and good hitter of the ball", team: .kolkataKnightRiders),
            PlayerInfoModel(name: "Rinku Singh", role: .batsman, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/3830.png", description: "Good and set batsman", team: .kolkataKnightRiders),
            PlayerInfoModel(name: "Nitish Rana", role: .batsman, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/2738.png", description: "Good and aggressive batsman", team: .kolkataKnightRiders),
            PlayerInfoModel(name: "Anukul Roy", role: .allRounder, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/3774.png", description: "A five-wicket haul followed by a four-fer in the ICC U19 World Cup helped Anukul Roy shoot to the limelight.", team: .kolkataKnightRiders),
            PlayerInfoModel(name: "Andre Russell", role: .allRounder, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/177.png", description: "The madman who can hit everything to a six", team: .kolkataKnightRiders),
            PlayerInfoModel(name: "Venkatesh Iyer", role: .allRounder, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/8540.png", description: "A look at Venkatesh Iyer’s domestic record would tell you why the Kolkata Knight Riders were keen to pick him ahead of the 2021 season. ", team: .kolkataKnightRiders),
            PlayerInfoModel(name: "Umesh Yadav", role: .bowler, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/59.png", description: "Good bowler with a litter higher economy", team: .kolkataKnightRiders),
            PlayerInfoModel(name: "Tim Southee", role: .bowler, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/307.png", description: "Good everseas bowler", team: .kolkataKnightRiders),
            PlayerInfoModel(name: "Sunil Narine", role: .allRounder, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/203.png", description: "Power hitter and a world class mystery spin bowler", team: .kolkataKnightRiders),
            PlayerInfoModel(name: "Varun Chakaravarthy", role: .bowler, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/5432.png", description: "Good medium paced bowler", team: .kolkataKnightRiders),
        ]
        allPlayerData?.append(contentsOf: kkrPlayers)
    }
    
    func seupLucknowSuperGiantsData() {
        teamNames.append(.lucknowSupergiants)
        let lsgPlayers = [
            PlayerInfoModel(name: "KL Rahul", role: .batsman, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/1125.png", description: "Heavy hitter and consistent batter", team: .lucknowSupergiants),
            PlayerInfoModel(name: "Manan Vohra", role: .batsman, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/1085.png", description: "Good batter who is experienced", team: .lucknowSupergiants),
            PlayerInfoModel(name: "Quinton de Kock", role: .wicketKeeperBatsman, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/834.png", description: "Mr. consistent who is well settled as an opener", team: .lucknowSupergiants),
            PlayerInfoModel(name: "Ayush Badoni", role: .allRounder, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/20586.png", description: "The youngster was brought on board by LSG for INR 20 Lac during the TATA IPL 2022 auction.", team: .lucknowSupergiants),
            PlayerInfoModel(name: "Deepak Hooda", role: .allRounder, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/1556.png", description: "Experienced bowling all rounder", team: .lucknowSupergiants),
            PlayerInfoModel(name: "Krishnappa Gowtham", role: .allRounder, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/3834.png", description: "Growing all rounder", team: .lucknowSupergiants),
            PlayerInfoModel(name: "Karan Sharma", role: .allRounder, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/20588.png", description: "Good all rounder for the team", team: .lucknowSupergiants),
            PlayerInfoModel(name: "Krunal Pandya", role: .allRounder, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/3183.png", description: "Aggressive left hand batter with decent bowling", team: .lucknowSupergiants),
            PlayerInfoModel(name: "Kyle Mayers", role: .allRounder, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/20587.png", description: "Aggressive batter and good bowler", team: .lucknowSupergiants),
            PlayerInfoModel(name: "Marcus Stoinis", role: .allRounder, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/964.png", description: "Heavy hitter and good bowler", team: .lucknowSupergiants),
        ]
        allPlayerData?.append(contentsOf: lsgPlayers)
    }
    
    func seupMumbaiIndiansData() {
        teamNames.append(.mumbaiIndians)
        let miPlayers = [
            PlayerInfoModel(name: "Rohit Sharma", role: .batsman, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/107.png", description: "Good hitter of the ball and is well experienced", team: .mumbaiIndians),
            PlayerInfoModel(name: "Dewald Brevis", role: .allRounder, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/20593.png", description: "Time and again Mumbai Indians have shown faith in youngsters and Dewald Bravis is one such example of their investment.", team: .mumbaiIndians),
            PlayerInfoModel(name: "Suryakumar Yadav", role: .batsman, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/108.png", description: "One hell of a hitter, some say he plays better than ABD", team: .mumbaiIndians),
            PlayerInfoModel(name: "Ishan Kishan", role: .wicketKeeperBatsman, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/2975.png", description: "Good hitter of the ball and is a capped T20 player", team: .mumbaiIndians),
            PlayerInfoModel(name: "Arjun Tendulkar", role: .allRounder, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/10244.png", description: "Son of the great Sachin Tendulkar", team: .mumbaiIndians),
            PlayerInfoModel(name: "Hrithik Shokeen", role: .bowler, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/20598.png", description: "Young player", team: .mumbaiIndians),
            PlayerInfoModel(name: "Mohd. Arshad Khan", role: .allRounder, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/20599.png", description: "Young player", team: .mumbaiIndians),
            PlayerInfoModel(name: "N. Tilak Varma", role: .batsman, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/20594.png", description: "The elegant left-hand batsman from Hyderabad has played 4 first-class games, 16 List A games and 15 T20 games.", team: .mumbaiIndians),
            PlayerInfoModel(name: "Jasprit Bumrah", role: .bowler, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/1124.png", description: "The best Indian bowler with the best economy", team: .mumbaiIndians),
            PlayerInfoModel(name: "Tim David", role: .batsman, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/4524.png", description: "When you attract bids from as many as six IPL franchises on a mega auction day, you got to be special. Born in Singapore, David is amongst the most exciting prospects in world cricket.", team: .mumbaiIndians),
        ]
        allPlayerData?.append(contentsOf: miPlayers)
    }
    
    func seupPunjabKingsData() {
        teamNames.append(.punjabKings)
        let punjabPlayers = [
            PlayerInfoModel(name: "Shikhar Dhawan", role: .batsman, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/41.png", description: "Well experienced player who plays for team India as a T20 opener", team: .punjabKings),
            PlayerInfoModel(name: "Bhanuka Rajapaksa", role: .batsman, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/20604.png", description: "The Sri Lanka left-handed batter was brought on board for INR 50 Lac. Bhanuka Rajapaksa is known for his ability to strike big with the bat and PBKS will want him to live up to that reputation.", team: .punjabKings),
            PlayerInfoModel(name: "Jitesh Sharma", role: .wicketKeeperBatsman, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/3185.png", description: "The Vidarbha wicketkeeper-batter has thus far played 54 T20s and scored 1329 runs with the strike rate of 141.83. He was bought by the PBKS for INR 20 Lac.", team: .punjabKings),
            PlayerInfoModel(name: "Jonny Bairstow", role: .batsman, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/506.png", description: "Power hitter of the ball, and is very much consistent with opening th e batiing innings", team: .punjabKings),
            PlayerInfoModel(name: "Prabhsimran Singh", role: .wicketKeeperBatsman, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/5436.png", description: "Prabhsimran Singh - the Patiala-based wicketkeeper-batsman – continued his stint with Punjab Kings after being bought for INR 60 Lac during the TATA IPL 2022 auction.", team: .punjabKings),
            PlayerInfoModel(name: "Atharva Taide", role: .allRounder, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/20603.png", description: "The young Vidarbha cricketer will join the PBKS unit after being bought for INR 20 Lac. Taide has so far played 8 First Class games, 19 List A matches and 20 T20s and has put on a handful of impressive performances.", team: .punjabKings),
            PlayerInfoModel(name: "Shahrukh Khan", role: .batsman, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/7779.png", description: "Shahrukh Khan was part of the victorious Tamil Nadu team which won the Syed Mushtaq Ali Trophy 2020-21 and 2021-22.", team: .punjabKings),
            PlayerInfoModel(name: "Arshdeep Singh", role: .bowler, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/4698.png", description: "Good bowler who recently played for India and picked many wickets", team: .punjabKings),
            PlayerInfoModel(name: "Kagiso Rabada", role: .bowler, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/1664.png", description: "Best pace bowler who is consistent with his length", team: .punjabKings),
            PlayerInfoModel(name: "Rahul Chahar", role: .bowler, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/3763.png", description: "Young talented spin bowler who has played for India and former Mumbai Indians player", team: .punjabKings),
        ]
        allPlayerData?.append(contentsOf: punjabPlayers)
    }
    
    func seupRajasthanRoyalsData() {
        teamNames.append(.rajasthanRoyal)
        let rajasthanPlayers = [
            PlayerInfoModel(name: "Sanju Samson", role: .wicketKeeperBatsman, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/258.png", description: "Sanju Samson came into reckoning with his gritty knocks for Rajasthan Royals in his debut season for the franchise. The wicketkeeper-batsman from Kerala was groomed by Rahul Dravid into a tough campaigner", team: .rajasthanRoyal),
            PlayerInfoModel(name: "Devdutt Padikkal", role: .batsman, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/5430.png", description: "Born in Edapal, Kerala, Devdutt Padikkal represents Karnataka in domestic cricket. A product of the system, Padikkal has risen through the ranks; he represented India Under-19 and soon after earned a call-up to the Karnataka Ranji Trophy side. ", team: .rajasthanRoyal),
            PlayerInfoModel(name: "Jos Buttler", role: .wicketKeeperBatsman, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/509.png", description: "The swashbuckling wicketkeeper-batsman will be out to make an impact as RR hope to utilise his international experience to guide them and end their long run for a second title. The right-hander had scored 328 runs in the IPL 2020.", team: .rajasthanRoyal),
            PlayerInfoModel(name: "Shimron Hetmyer", role: .batsman, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/1705.png", description: "Power hitter and West Indies player", team: .rajasthanRoyal),
            PlayerInfoModel(name: "Yashasvi Jaiswal", role: .batsman, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/13538.png", description: "Yound and budding batsman, clean hitter of the ball", team: .rajasthanRoyal),
            PlayerInfoModel(name: "Ravichandran Ashwin", role: .allRounder, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/8.png", description: "Well experienced, spin bowler and reliable lower order batter", team: .rajasthanRoyal),
            PlayerInfoModel(name: "Riyan Parag", role: .batsman, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/4445.png", description: "Good player, hard hitter of the ball", team: .rajasthanRoyal),
            PlayerInfoModel(name: "Navdeep Saini", role: .bowler, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/3824.png", description: "Good bowler with nice pace in him", team: .rajasthanRoyal),
            PlayerInfoModel(name: "Prasidh Krishna", role: .bowler, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/5105.png", description: "Young and budding reliable bowler", team: .rajasthanRoyal),
            PlayerInfoModel(name: "Yuzvendra Chahal", role: .bowler, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/111.png", description: "Funny and good bowler for India and RR", team: .rajasthanRoyal),
        ]
        allPlayerData?.append(contentsOf: rajasthanPlayers)
    }
    
    func seupRoyalChallengersBangaloreData() {
        teamNames.append(.royalChallengersBangalore)
        let rcbPlayers = [
            PlayerInfoModel(name: "Faf du Plessis", role: .batsman, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/24.png", description: "On March 12, 2022 the former RCB Skipper, Virat Kohli announced that he would be passing on the baton tow Faf du Plessis, who will be the new Captain for the RCB.", team: .royalChallengersBangalore),
            PlayerInfoModel(name: "Finn Allen", role: .wicketKeeperBatsman, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/3020.png", description: "The RCB bought Finn Allen for a decent sum of INR 80 lakhs at the IPL 2020 Mega Auction. The wicket-keeper batter from New Zealand has been doing the rounds in the shortest format of the game with some great numbers to his name.", team: .royalChallengersBangalore),
            PlayerInfoModel(name: "Rajat Patidar", role: .batsman, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/5471.png", description: "Born in Indore, Madhya Pradesh, Rajat Patidar joined RCB in IPL 2022 as a replacement of the injured Luvnith Sisodia for the price of INR 20 Lakh.", team: .royalChallengersBangalore),
            PlayerInfoModel(name: "Virat Kohli", role: .batsman, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/164.png", description: " Virat Kohli’s ability and hunger to score daddy hundreds has taken the cricket world by storm. The flamboyant cricketer was the captain of the Indian team that won the 2008 ICC U19 Cricket World Cup and since then there has been no looking back for King Kohli. He is the new-age cricketer who is aggressive and expresses his mind on the field.", team: .royalChallengersBangalore),
            PlayerInfoModel(name: "Anuj Rawat", role: .wicketKeeperBatsman, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/10788.png", description: "Born in Uttarakhand, uncapped wicket-keeper batter, Anuj Rawat was picked for INR 3.4 crore by RCB on Day 1 of the IPL 2022 Mega Auction. The left-handed batter made his First-Class debut for Delhi versus Assam.", team: .royalChallengersBangalore),
            PlayerInfoModel(name: "Dinesh Karthik", role: .wicketKeeperBatsman, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/102.png", description: "The wicket-keeper batter has represented six teams over the course of his IPL career. He started off with Delhi Daredevils in 2008 before moving to Kings XI Punjab in 2011. He spent the following two seasons with Mumbai Indians before going back to Delhi in 2014.", team: .royalChallengersBangalore),
            PlayerInfoModel(name: "David Willey", role: .allRounder, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/2758.png", description: "English all rounder", team: .royalChallengersBangalore),
            PlayerInfoModel(name: "Glenn Maxwell", role: .allRounder, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/282.png", description: "A brilliant fielder, who can contribute with his off-spin, the Australian can play the role of a floater in a line-up. His one of the best seasons was in 2014 when Maxwell teamed up with David Miller for Kings XI Punjab in clobbering the opposition and he now again returns to KXIP. ", team: .royalChallengersBangalore),
            PlayerInfoModel(name: "Harshal Patel", role: .bowler, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/157.png", description: "Good bowler who is capped for team India", team: .royalChallengersBangalore),
            PlayerInfoModel(name: "Mohammed Siraj", role: .bowler, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/3840.png", description: "Good bowler who can pick crucial wickets", team: .royalChallengersBangalore),
        ]
        allPlayerData?.append(contentsOf: rcbPlayers)
    }
    
    func setupSunrisersHyderabadData() {
        teamNames.append(.sunrisersHyderabad)
        let srhPlayers = [
            PlayerInfoModel(name: "Abdul Samad", role: .batsman, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/19352.png", description: "A big-hitting right-handed batsman from Jammu Kashmir, Abdul Samad was shortlisted in the Sunrisers Hyderabad trials ahead of the 2020 IPL Auction.", team: .sunrisersHyderabad),
            PlayerInfoModel(name: "Aiden Markram", role: .batsman, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/1667.png", description: "A stylish right-handed batsman, Aiden Markram, joined PBKS as a replacement for England’s Dawid Malan in 2021. In his relatively young international career, the South African has put on some impressive performances with the bat and his occasional off-spinners.", team: .sunrisersHyderabad),
            PlayerInfoModel(name: "Rahul Tripathi", role: .batsman, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/3838.png", description: "Rahul Tripathi over the years has been making waves with his hard-hitting skills. In his debut season in 2017 with Rising Pune Supergiant, he pummelled the bowlers to make his presence felt in the IPL. He slammed a highest of 93 as he gathered 391 runs from 12 matches.", team: .sunrisersHyderabad),
            PlayerInfoModel(name: "Glenn Phillips", role: .wicketKeeperBatsman, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/3027.png", description: "The New Zealand wicketkeeper-batsman joined Rajasthan Royals in 2021 as a replacement for Jofra Archer. Phillips, played just 3 matches in that edition of the IPL and was mostly known for his superman-like fielding efforts on the field.", team: .sunrisersHyderabad),
            PlayerInfoModel(name: "Abhishek Sharma", role: .allRounder, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/3760.png", description: "A hard-hitting lower order batsman who can also bowl left-arm spin, Sharma was brought by the Delhi Daredevils (now known as Delhi Capitals) in 2018.", team: .sunrisersHyderabad),
            PlayerInfoModel(name: "Washington Sundar", role: .allRounder, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/2973.png", description: "One of the most exciting talents to emerge from the Indian domestic circuit, Sundar is a skilful left hand middle order batsman and off-spinning allrounder.", team: .sunrisersHyderabad),
            PlayerInfoModel(name: "Bhuvneshwar Kumar", role: .bowler, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/116.png", description: "Swing bowler with consistent lengths", team: .sunrisersHyderabad),
            PlayerInfoModel(name: "Kartik Tyagi", role: .bowler, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/10059.png", description: "The right-arm pacer impressed one and all with his ability to move the ball around with good pace during the tournament.", team: .sunrisersHyderabad),
            PlayerInfoModel(name: "T Natarajan", role: .bowler, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/3831.png", description: "The left-arm medium-pacer from Tamil Nadu is known for his bowling abilities in the domestic T20 circuit wherein he has sprung up match-winning performances for Tamil Nadu.", team: .sunrisersHyderabad),
            PlayerInfoModel(name: "Umran Malik", role: .bowler, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/15154.png", description: " A smooth, clean action, and clocking 150 kmph effortlessly which was enough to grab the right eyeballs. In one IPL season in October, he was bowling to Glenn Maxwell and AB de Villiers in the IPL, and in November he was making his first-class debut for India A against South Africa A. ", team: .sunrisersHyderabad),
        ]
        allPlayerData?.append(contentsOf: srhPlayers)
    }
}
