import Cocoa

class WindowController: NSWindowController {
    @IBAction func appearanceSelection(_ sender: NSSegmentedControl) {
        let appearance: NSAppearance.Name = sender.selectedSegment == 0 ? .aqua : .darkAqua
        window?.appearance = NSAppearance(named: appearance)
//        NSApp.appearance = NSAppearance(named: appearance)
    }
}
