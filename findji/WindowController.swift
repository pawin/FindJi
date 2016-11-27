//
//  WindowController.swift
//  findji
//
//  Created by win on 11/27/16.
//  Copyright © 2016 Pawin Thepbanchaporn. All rights reserved.
//

import Cocoa

class WindowController: NSWindowController {

    @available(OSX 10.12.1, *)
    override func makeTouchBar() -> NSTouchBar? {
        guard let viewController = contentViewController as? QuestionViewController else {
            return nil
        }
        return viewController.makeTouchBar()
    }
    
}
