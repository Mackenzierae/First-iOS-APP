//
//  ViewController.swift
//  storyboards
//
//  Created by Mackenzie Wacker on 11/30/16.
//  Copyright © 2016 Mackenzie Wacker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var count = 0
    var poem = ["I want to go to the mountains...", "and slope the slopes on skis...", "come evening time we'll get real weird...", "drinking too much whiskey!" ]
    
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var poemLabel: UILabel!
    
    
    @IBAction func nextButton(_ sender: Any) {
        if self.count == self.poem.count - 1 {
            self.nextButton.isHidden = true
            self.resetButton.isHidden = false
        }
        poemLabel.text = poem[count]
        if count < poem.count - 1 {
            count += 1
        }
        else {
            count = 0
        }
    }
    
    func initialState(){
        self.poemLabel.text = "Select 'next' to view my poem!"
        self.resetButton.isHidden = true
        self.nextButton.isHidden = false
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.initialState()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func handleResetButtonPressed(_ sender: UIButton) {
        self.initialState()
    }

}

