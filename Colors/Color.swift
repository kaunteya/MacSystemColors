import Cocoa

struct Color {
    enum Category: String {
        case label, text, content, menu, table, control, window, deprecated
    }
    let color: NSColor
    let name: String
    let category: Category
    let description: String

    var rgb: String? {
        guard let rgbColor = color.usingColorSpace(.deviceRGB) else {
            return nil
        }
        let precision = 4
        return "(\(rgbColor.redComponent.pr(precision)), \(rgbColor.greenComponent.pr(precision)), \(rgbColor.blueComponent.pr(precision)) \(rgbColor.alphaComponent.pr(precision)))"
    }

    var rgb255: String? {
        guard let rgbColor = color.usingColorSpace(.deviceRGB) else {
            return nil
        }
        return "(\(Int(rgbColor.redComponent * 255)),  \(Int(rgbColor.greenComponent * 255)),  \(Int(rgbColor.blueComponent * 255)))"
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
