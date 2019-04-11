//
//  TableColorCell.swift
//  Colors
//
//  Created by Kaunteya Suryawanshi on 11/04/19.
//  Copyright © 2019 Kaunteya Suryawanshi. All rights reserved.
//

import Cocoa

class TableColorCell: NSTableCellView {
    @IBOutlet weak var colorBox: NSBox!
    required init?(coder decoder: NSCoder) {
        super.init(coder: decoder)
        self.wantsLayer = true
    }

    override init(frame frameRect: NSRect) {
        super.init(frame: frameRect)
        self.wantsLayer = true
    }
}
