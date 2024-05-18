//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    var story = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI(){
        storyLabel.text = story.getStory()
        choice1Button.setTitle(story.choice1(), for: .normal)
        choice2Button.setTitle(story.choice2(), for: .normal)
    }

    @IBAction func choose(_ sender: UIButton) {
        if(story.choosing(c:sender.titleLabel?.text ?? "")){
            
        }else{
            
        }
        updateUI()
    }
    
}

