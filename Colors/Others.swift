import Cocoa

extension CGFloat {
    func pr(_ l: Int) -> String {
        return String(format: "%.\(l)f", self)
    }
}
