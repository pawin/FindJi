//
//  QuestionViewController.swift
//  findji
//
//  Created by win on 11/27/16.
//  Copyright © 2016 Pawin Thepbanchaporn. All rights reserved.
//

import Cocoa

class QuestionViewController: NSViewController {

    // Stack view as a button container view
    let stackView = NSStackView()
    
    @IBOutlet weak var timeTextField: NSTextField!
    @IBOutlet weak var answerTextField: NSTextField!
    @IBOutlet weak var scoreTextField: NSTextField!
    
    let countdownsJis = ["3️⃣","2️⃣","1️⃣","🎉"]
    let successJis = ["👍","👏","🤘","👌"]
    let failJis = ["👎","😡","👿","💩"]
    
    // Variables
    var timer: Timer?
    
    var question: Question?
    
    var score: Int = 0 {
        didSet {
            let string = "\(score)"
            scoreTextField.stringValue = string.numberEmoji
        }
    }
    
    var time: Int = 0 {
        didSet {
            let string: String
            if time < 0 {
                string = "0"
            } else {
                string = "\(time)"
            }
            timeTextField.stringValue = "🕘" + string.numberEmoji
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        
        configureViews()
        
        startGame()
        
        createQuestion()
    }
    
    private func configureViews() {
        self.title = "🕵️ FindJi"
        preferredContentSize = NSSize(width: 440, height: 440)
    }
    
    func startGame() {
        score = 0
        time = 60
        
        timer?.invalidate()
        timer = Timer.scheduledTimer(timeInterval: 1,
                                     target: self,
                                     selector: #selector(QuestionViewController.updateTime),
                                     userInfo: nil,
                                     repeats: true)
    }
    
    func stopGame() {
        timer?.invalidate()
        
        removeAllButtons()
    }
    
    func updateTime() {
        time -= 1
        
        if time <= 0 {
            stopGame()
        }
    }
    
    func createQuestion() {
        if #available(OSX 10.12.1, *) {

            question = Question.random()
            
            answerTextField.stringValue = question?.answer ?? ""
            
            removeAllButtons()
            
            displayButtons()
            
        } else {
            // Fallback on earlier versions
        }
    }
    
    func answer(_ button: NSButton) {
        NSLog("answer: \(button.title)")
        
        if button.title == question?.answer {
            NSLog("✅")
            score += 1
        }
        else {
            NSLog("❌")
        }
        
        createQuestion()
    }
}

extension QuestionViewController {
    func removeAllButtons() {
        stackView.subviews.forEach({ [weak self] (view) in
            self?.stackView.removeArrangedSubview(view)
            view.removeFromSuperview()
        })
    }
    
    func displayButtons() {
        question?.choices.forEach({ [weak self] (choice) in
            let button = NSButton(title: choice, target: self, action: #selector(QuestionViewController.answer))
            self?.stackView.addArrangedSubview(button)
        })
    }
}

@available(OSX 10.12.1, *)
extension QuestionViewController: NSTouchBarDelegate {
    override func makeTouchBar() -> NSTouchBar? {
        let touchBar = NSTouchBar()
        touchBar.delegate = self
        touchBar.customizationIdentifier = NSTouchBarCustomizationIdentifier("me.pawin.findji")
        touchBar.defaultItemIdentifiers = [NSTouchBarItemIdentifier("findji")]
        touchBar.customizationAllowedItemIdentifiers = [NSTouchBarItemIdentifier("findji")]
        return touchBar
    }
    
    func touchBar(_ touchBar: NSTouchBar, makeItemForIdentifier identifier: NSTouchBarItemIdentifier) -> NSTouchBarItem? {
        switch identifier {
        case NSTouchBarItemIdentifier("findji"):
            
            let viewItem = NSCustomTouchBarItem(identifier: identifier)
            viewItem.view = stackView
            return viewItem
            
        default:
            return nil
        }
    }
}
