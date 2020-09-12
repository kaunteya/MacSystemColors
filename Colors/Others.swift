import Cocoa

extension CGFloat {
    func pr(_ l: Int) -> String {
        return String(format: "%.\(l)f", self)
    }
}

extension UserDefaults {
    @objc dynamic var colorsType: Int {
        get { integer(forKey: #function) }
        set { set(newValue, forKey: #function)}
    }
}

