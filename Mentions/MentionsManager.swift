//
//  MentionsManager.swift
//  Mentions
//
//  Created by Apple on 01/09/18.
//  Copyright © 2018 Batth. All rights reserved.
//

import UIKit
import Hakawai

class MentionsManager: NSObject,HKWMentionsDelegate {
    
    static let sharedManager = MentionsManager()
    
    func asyncRetrieveEntities(forKeyString keyString: String!, searchType type: HKWMentionsSearchType, controlCharacter character: unichar, completion completionBlock: (([Any]?, Bool, Bool) -> Void)!) {
        let data = [User(name: "User !", id: 1), User(name: "User 2", id: 2)]
        completionBlock(data, false, true)
    }
    
    func cell(forMentionsEntity entity: HKWMentionsEntityProtocol!, withMatch matchString: String!, tableView: UITableView!) -> UITableViewCell! {
        tableView.register(UINib(nibName: "UserTableViewCell", bundle: nil), forCellReuseIdentifier: "userCell")
        let cell = tableView.dequeueReusableCell(withIdentifier: "userCell") as! UserTableViewCell
        cell.textLabel?.text = entity.entityName()
        return cell
    }
    
    func heightForCell(forMentionsEntity entity: HKWMentionsEntityProtocol!, tableView: UITableView!) -> CGFloat {
        return 44
    }
    
    
    

}
