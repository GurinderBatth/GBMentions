//
//  ViewController.swift
//  Mentions
//
//  Created by Apple on 01/09/18.
//  Copyright © 2018 Batth. All rights reserved.
//

import UIKit
import Hakawai

class ViewController: UIViewController {

    @IBOutlet weak var mTextView: HKWTextView!
    
    var plugin = HKWMentionsPlugin()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let mode = HKWMentionsChooserPositionMode.enclosedTop
        let cchars = CharacterSet(charactersIn: "@")
        let mPlugin = HKWMentionsPlugin(chooserMode: mode,
                                        controlCharacters: cchars,
                                        searchLength: 0,
                                        unselectedColor: .white,
                                        selectedColor: .blue,
                                        selectedBackgroundColor: .green)
        
        self.plugin = mPlugin!
        self.mTextView.controlFlowPlugin = mPlugin
        mPlugin?.delegate = MentionsManager.sharedManager
    }

    @IBAction func btnMentions(_ sender: Any?){
        for mention in plugin.mentions(){
            print(mention)
        }
    }
}

