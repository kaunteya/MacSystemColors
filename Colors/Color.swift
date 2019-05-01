import Cocoa

struct Color {
    enum Category: String {
        case label, text, content, menu, table, control, window, deprecated
    }

    let name: String
    let category: Category
    let description: String

    var color: NSColor {
        if name == "scrubberTexturedBackground" {
//            (lldb) po type(of: NSColor.scrubberTexturedBackground)
//            NSPatternColor
            return .scrubberTexturedBackground
        }
        if name == "alternatingContentBackgroundColor[0]" {
            return NSColor.alternatingContentBackgroundColors[0]
        }
        if name == "alternatingContentBackgroundColor[1]" {
            return NSColor.alternatingContentBackgroundColors[1]
        }
        let sel = NSSelectorFromString(name)
        return NSColor.perform(sel)?.takeRetainedValue() as! NSColor
    }

    var rgb: String {
        let ciColor = CIColor(color: color)!
        let col = color.usingColorSpace(.deviceRGB)!
        return "\(col.redComponent)"
    }
}
