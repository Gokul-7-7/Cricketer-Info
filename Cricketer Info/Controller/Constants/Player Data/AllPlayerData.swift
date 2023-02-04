//
//  AllTeamData.swift
//  Cricketer Info
//
//  Created by Gokul on 05/02/23.
//

import Foundation

extension MainPageViewController {
    
    func setupGujratTitansData() {
        teamNames.append(.gujaratTitans)
        let gujratTitanPlayers = [
            PlayerInfoModel(name: "Hardik Pandya", role: .allRounder, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/2740.png", team: .gujaratTitans),
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
    
    func setupChennaiSuperKingsData() {
        teamNames.append(.chennaiSuperKings)
        let cskPlayers = [
            PlayerInfoModel(name: "Mahendra Singh Dhoni", role: .wicketKeeperBatsman, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/1.png", description: "Legend of the cricket game, everyone loves Dhoni", team: .chennaiSuperKings),
            PlayerInfoModel(name: "Devon Conway", role: .batsman, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/20572.png", description: "Good opening batsman", team: .chennaiSuperKings),
            PlayerInfoModel(name: "Ruturaj Gaikwad", role: .batsman, image: "https://assets.iplt20.com/ipl/IPLHeadshot2022/5443.png", description: "Young and good opener who can be reliable", team: .chennaiSuperKings),
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
    
//    func seupPunjabKingsData() {
//        teamNames.append(.punjabKings)
//        let punjabPlayers = [
//            PlayerInfoModel(name: <#T##String?#>, role: <#T##RoleType?#>, image: <#T##String?#>, description: <#T##String?#>, team: <#T##TeamName?#>),
//            PlayerInfoModel(name: <#T##String?#>, role: <#T##RoleType?#>, image: <#T##String?#>, description: <#T##String?#>, team: <#T##TeamName?#>),
//            PlayerInfoModel(name: <#T##String?#>, role: <#T##RoleType?#>, image: <#T##String?#>, description: <#T##String?#>, team: <#T##TeamName?#>),
//            PlayerInfoModel(name: <#T##String?#>, role: <#T##RoleType?#>, image: <#T##String?#>, description: <#T##String?#>, team: <#T##TeamName?#>),
//            PlayerInfoModel(name: <#T##String?#>, role: <#T##RoleType?#>, image: <#T##String?#>, description: <#T##String?#>, team: <#T##TeamName?#>),
//            PlayerInfoModel(name: <#T##String?#>, role: <#T##RoleType?#>, image: <#T##String?#>, description: <#T##String?#>, team: <#T##TeamName?#>),
//            PlayerInfoModel(name: <#T##String?#>, role: <#T##RoleType?#>, image: <#T##String?#>, description: <#T##String?#>, team: <#T##TeamName?#>),
//            PlayerInfoModel(name: <#T##String?#>, role: <#T##RoleType?#>, image: <#T##String?#>, description: <#T##String?#>, team: <#T##TeamName?#>),
//            PlayerInfoModel(name: <#T##String?#>, role: <#T##RoleType?#>, image: <#T##String?#>, description: <#T##String?#>, team: <#T##TeamName?#>),
//            PlayerInfoModel(name: <#T##String?#>, role: <#T##RoleType?#>, image: <#T##String?#>, description: <#T##String?#>, team: <#T##TeamName?#>),
//        ]
//        allPlayerData?.append(contentsOf: punjabPlayers)
//    }
//    func seupRajasthanRoyalsData() {
//        teamNames.append(.rajasthanRoyal)
//        let rajasthanPlayers = [
//            PlayerInfoModel(name: <#T##String?#>, role: <#T##RoleType?#>, image: <#T##String?#>, description: <#T##String?#>, team: <#T##TeamName?#>),
//            PlayerInfoModel(name: <#T##String?#>, role: <#T##RoleType?#>, image: <#T##String?#>, description: <#T##String?#>, team: <#T##TeamName?#>),
//            PlayerInfoModel(name: <#T##String?#>, role: <#T##RoleType?#>, image: <#T##String?#>, description: <#T##String?#>, team: <#T##TeamName?#>),
//            PlayerInfoModel(name: <#T##String?#>, role: <#T##RoleType?#>, image: <#T##String?#>, description: <#T##String?#>, team: <#T##TeamName?#>),
//            PlayerInfoModel(name: <#T##String?#>, role: <#T##RoleType?#>, image: <#T##String?#>, description: <#T##String?#>, team: <#T##TeamName?#>),
//            PlayerInfoModel(name: <#T##String?#>, role: <#T##RoleType?#>, image: <#T##String?#>, description: <#T##String?#>, team: <#T##TeamName?#>),
//            PlayerInfoModel(name: <#T##String?#>, role: <#T##RoleType?#>, image: <#T##String?#>, description: <#T##String?#>, team: <#T##TeamName?#>),
//            PlayerInfoModel(name: <#T##String?#>, role: <#T##RoleType?#>, image: <#T##String?#>, description: <#T##String?#>, team: <#T##TeamName?#>),
//            PlayerInfoModel(name: <#T##String?#>, role: <#T##RoleType?#>, image: <#T##String?#>, description: <#T##String?#>, team: <#T##TeamName?#>),
//            PlayerInfoModel(name: <#T##String?#>, role: <#T##RoleType?#>, image: <#T##String?#>, description: <#T##String?#>, team: <#T##TeamName?#>),
//        ]
//        allPlayerData?.append(contentsOf: rajasthanPlayers)
//    }
//    func seupRoyalChallengersBangaloreData() {
//        teamNames.append(.royalChallengersBangalore)
//        let rcbPlayers = [
//            PlayerInfoModel(name: <#T##String?#>, role: <#T##RoleType?#>, image: <#T##String?#>, description: <#T##String?#>, team: <#T##TeamName?#>),
//            PlayerInfoModel(name: <#T##String?#>, role: <#T##RoleType?#>, image: <#T##String?#>, description: <#T##String?#>, team: <#T##TeamName?#>),
//            PlayerInfoModel(name: <#T##String?#>, role: <#T##RoleType?#>, image: <#T##String?#>, description: <#T##String?#>, team: <#T##TeamName?#>),
//            PlayerInfoModel(name: <#T##String?#>, role: <#T##RoleType?#>, image: <#T##String?#>, description: <#T##String?#>, team: <#T##TeamName?#>),
//            PlayerInfoModel(name: <#T##String?#>, role: <#T##RoleType?#>, image: <#T##String?#>, description: <#T##String?#>, team: <#T##TeamName?#>),
//            PlayerInfoModel(name: <#T##String?#>, role: <#T##RoleType?#>, image: <#T##String?#>, description: <#T##String?#>, team: <#T##TeamName?#>),
//            PlayerInfoModel(name: <#T##String?#>, role: <#T##RoleType?#>, image: <#T##String?#>, description: <#T##String?#>, team: <#T##TeamName?#>),
//            PlayerInfoModel(name: <#T##String?#>, role: <#T##RoleType?#>, image: <#T##String?#>, description: <#T##String?#>, team: <#T##TeamName?#>),
//            PlayerInfoModel(name: <#T##String?#>, role: <#T##RoleType?#>, image: <#T##String?#>, description: <#T##String?#>, team: <#T##TeamName?#>),
//            PlayerInfoModel(name: <#T##String?#>, role: <#T##RoleType?#>, image: <#T##String?#>, description: <#T##String?#>, team: <#T##TeamName?#>),
//        ]
//        allPlayerData?.append(contentsOf: rcbPlayers)
//    }
//    
//    func seupSunrisersHyderabadData() {
//        teamNames.append(.sunrisersHyderabad)
//        let srhPlayers = [
//            PlayerInfoModel(name: <#T##String?#>, role: <#T##RoleType?#>, image: <#T##String?#>, description: <#T##String?#>, team: <#T##TeamName?#>),
//            PlayerInfoModel(name: <#T##String?#>, role: <#T##RoleType?#>, image: <#T##String?#>, description: <#T##String?#>, team: <#T##TeamName?#>),
//            PlayerInfoModel(name: <#T##String?#>, role: <#T##RoleType?#>, image: <#T##String?#>, description: <#T##String?#>, team: <#T##TeamName?#>),
//            PlayerInfoModel(name: <#T##String?#>, role: <#T##RoleType?#>, image: <#T##String?#>, description: <#T##String?#>, team: <#T##TeamName?#>),
//            PlayerInfoModel(name: <#T##String?#>, role: <#T##RoleType?#>, image: <#T##String?#>, description: <#T##String?#>, team: <#T##TeamName?#>),
//            PlayerInfoModel(name: <#T##String?#>, role: <#T##RoleType?#>, image: <#T##String?#>, description: <#T##String?#>, team: <#T##TeamName?#>),
//            PlayerInfoModel(name: <#T##String?#>, role: <#T##RoleType?#>, image: <#T##String?#>, description: <#T##String?#>, team: <#T##TeamName?#>),
//            PlayerInfoModel(name: <#T##String?#>, role: <#T##RoleType?#>, image: <#T##String?#>, description: <#T##String?#>, team: <#T##TeamName?#>),
//            PlayerInfoModel(name: <#T##String?#>, role: <#T##RoleType?#>, image: <#T##String?#>, description: <#T##String?#>, team: <#T##TeamName?#>),
//            PlayerInfoModel(name: <#T##String?#>, role: <#T##RoleType?#>, image: <#T##String?#>, description: <#T##String?#>, team: <#T##TeamName?#>),
//        ]
//        allPlayerData?.append(contentsOf: srhPlayers)
//    }
}
