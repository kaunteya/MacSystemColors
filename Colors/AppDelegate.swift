//
//  AppDelegate.swift
//  Colors
//
//  Created by Kaunteya Suryawanshi on 11/04/19.
//  Copyright © 2019 Kaunteya Suryawanshi. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        UserDefaults.standard.register(defaults: [
            "catCol": false,
            "descCol": false,
            "rgbCol": true,
            "hexCol": true
            ]
        )
    }
}

