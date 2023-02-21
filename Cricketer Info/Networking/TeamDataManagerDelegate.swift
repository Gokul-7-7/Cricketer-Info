//
//  TeamDataManagerDelegate.swift
//  Cricketer Info
//
//  Created by Gokul on 21/02/23.
//

protocol TeamDataManagerDelegate: AnyObject {
    func didUpdateTeamData(teamData: TeamResponse)
}
