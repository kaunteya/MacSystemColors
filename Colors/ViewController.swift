import Cocoa
enum TableCol: String {
    case nameCol, lightCol, darkCol, descCol
}

class ViewController: NSViewController {
    @IBOutlet weak var tableView: NSTableView!
    override func viewDidLoad() {
        super.viewDidLoad()
//        let list = NSColorList(name: "System")
//        list.color
        let sel = NSSelectorFromString("labelColor")
        let gr = NSColor.perform(sel)?.takeRetainedValue() as! NSColor
        print(gr)
    }
}

extension ViewController: NSTableViewDataSource, NSTableViewDelegate {
    func numberOfRows(in tableView: NSTableView) -> Int {
        return Color.all.count
    }

    func tableView(_ tableView: NSTableView, viewFor tableColumn: NSTableColumn?, row: Int) -> NSView? {
        let iColor = Color.all[row]
        switch TableCol(rawValue: tableColumn!.identifier.rawValue)! {
        case .nameCol:
            let cell = tableView.makeView(withIdentifier: NSUserInterfaceItemIdentifier(rawValue: "name"), owner: self) as! NSTableCellView
            cell.textField?.stringValue = iColor.name
            return cell
        case .lightCol:
            let cell = tableView.makeView(withIdentifier: NSUserInterfaceItemIdentifier(rawValue: "colorLightAqua"), owner: self) as! TableColorCell
            cell.colorBox.fillColor = iColor.color
            return cell
        case .darkCol:
            let cell = tableView.makeView(withIdentifier: NSUserInterfaceItemIdentifier(rawValue: "colorDark"), owner: self) as! TableColorCell
            cell.colorBox.fillColor = iColor.color
            return cell
        case .descCol:
            let cell = tableView.makeView(withIdentifier: NSUserInterfaceItemIdentifier(rawValue: "description"), owner: self) as! NSTableCellView
            cell.textField?.stringValue = iColor.description
            return cell
        }
    }
}

var colors1: [(String, NSColor, String)] = [
    ("labelColor", .labelColor, "The primary color to use for text labels."),
    ("secondaryLabelColor", .secondaryLabelColor, "The secondary color to use for text labels."),
    ("tertiaryLabelColor", .tertiaryLabelColor, "The tertiary color to use for text labels."),
    ("quaternaryLabelColor", .quaternaryLabelColor, "The quaternary color to use for text labels and separators."),

    ("textColor", .textColor, "The color to use for text."),
    ("placeholderTextColor", .placeholderTextColor, "The color to use for placeholder text in controls or text views."),
    ("selectedTextColor", .selectedTextColor, "The color to use for selected text."),
    ("textBackgroundColor", .textBackgroundColor, "The color to use for the background area behind text."),
    ("selectedTextBackgroundColor", .selectedTextBackgroundColor, "The color to use for the background of selected text."),
    ("keyboardFocusIndicatorColor", .keyboardFocusIndicatorColor, "The color to use for the keyboard focus ring around controls."),
    ("unemphasizedSelectedTextColor", .unemphasizedSelectedTextColor, "The color to use for selected text in an unemphasized context."),
    ("unemphasizedSelectedTextBackgroundColor", .unemphasizedSelectedTextBackgroundColor, "The color to use for the text background in an unemphasized context."),

    ("linkColor", .linkColor, "The color to use for links."),
    ("separatorColor", .separatorColor, "The color to use for separators between different sections of content."),
    ("selectedContentBackgroundColor", .selectedContentBackgroundColor, "The color to use for the background of selected and emphasized content."),
    ("unemphasizedSelectedContentBackgroundColor", .unemphasizedSelectedContentBackgroundColor, "The color to use for selected and unemphasized content."),
    ("selectedMenuItemTextColor", .selectedMenuItemTextColor, "The color to use for the text in menu items."),

    ("gridColor", .gridColor, "The color to use for the optional gridlines, such as those in a table view."),
    ("headerTextColor", .headerTextColor, "The color to use for text in header cells in table views and outline views."),
    ("alternatingContentBackgroundColor[0]", NSColor.alternatingContentBackgroundColors[0], "The colors to use for alternating content, typically found in table views and collection views."),
    ("alternatingContentBackgroundColor[1]", NSColor.alternatingContentBackgroundColors[1], "The colors to use for alternating content, typically found in table views and collection views."),

    ("controlAccentColor", .controlAccentColor, "The user's current accent color preference."),
    ("controlColor", .controlColor, "The color to use for the flat surfaces of a control."),
    ("controlBackgroundColor", .controlBackgroundColor, "The color to use for the background of large controls, such as scroll views or table views."),
    ("controlTextColor", .controlTextColor, "The color to use for text on enabled controls."),
    ("disabledControlTextColor", .disabledControlTextColor, "The color to use for text on disabled controls."),
    ("selectedControlColor", .selectedControlColor, "The color to use for the face of a selected control—that is, a control that has been clicked or is being dragged."),
    ("selectedControlTextColor", .selectedControlTextColor, "The color to use for text in a selected control—that is, a control being clicked or dragged."),
    ("alternateSelectedControlTextColor", .alternateSelectedControlTextColor, "The color to use for text in a selected control."),
    ("scrubberTexturedBackground", .scrubberTexturedBackground, "The patterned color to use for the background of a scrubber control."),

    ("windowBackgroundColor", .windowBackgroundColor, "The color to use for the window background."),
    ("windowFrameTextColor", .windowFrameTextColor, "The color to use for text in a window's frame."),
    ("underPageBackgroundColor", .underPageBackgroundColor, "The color to use in the area beneath your window's views."),
    ("findHighlightColor", .findHighlightColor, "The highlight color to use for the bubble that shows inline search result values."),
    ("highlightColor", .highlightColor, "The color to use as a virtual light source on the screen."),
    ("shadowColor", .shadowColor, "The color to use for virtual shadows cast by raised objects on the screen."),

    ("alternateSelectedControlColor", .alternateSelectedControlColor, "The system color used for the face of a selected control in a list or table."),
    ("controlHighlightColor", .controlHighlightColor, "The system color used for the highlighted bezels of controls."),
    ("controlLightHighlightColor", .controlLightHighlightColor, "The system color used for light highlights in controls."),
    ("controlShadowColor", .controlShadowColor, "The system color used for the shadows dropped from controls."),
    ("controlDarkShadowColor", .controlDarkShadowColor, "The system color used for the dark edge of the shadow dropped from controls."),
    ("headerColor", .headerColor, "The system color used as the background color for header cells in table views and outline views."),
    ("knobColor", .knobColor, "The system color used for the flat surface of a slider knob that hasn’t been selected."),
    ("selectedKnobColor", .selectedKnobColor, "The system color used for the slider knob when it is selected."),
    ("scrollBarColor", .scrollBarColor, "The system color used for scroll “bars”—that is, for the groove in which a scroller’s knob moves"),
    ("secondarySelectedControlColor", .secondarySelectedControlColor, "The color used for selected controls in non-key views."),
    ("selectedMenuItemColor", .selectedMenuItemColor, "The color to use for the face of selected menu items."),
    ("windowFrameColor", .windowFrameColor, "The system color used for window frames, except for their text."),
]
