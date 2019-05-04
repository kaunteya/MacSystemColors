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

    var rgb: String? {
        guard let rgbColor = color.usingColorSpace(.deviceRGB) else {
            return nil
        }
        let precision = 4
        return "R=\(rgbColor.redComponent.pr(precision)) G=\(rgbColor.greenComponent.pr(precision)) B=\(rgbColor.blueComponent.pr(precision)) A=\(rgbColor.alphaComponent.pr(precision))"
    }

    var hexString: String? {
        guard let rgbColor = color.usingColorSpace(.deviceRGB) else {
            return nil
        }
        let red = Int(round(rgbColor.redComponent * 0xFF))
        let green = Int(round(rgbColor.greenComponent * 0xFF))
        let blue = Int(round(rgbColor.blueComponent * 0xFF))
        let hexString = NSString(format: "#%02X%02X%02X", red, green, blue)
        return hexString as String
    }
}
