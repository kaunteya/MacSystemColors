import Cocoa
enum TableCol: String {
    case catCol, nameCol, lightCol, darkCol, descCol, rgbCol, hexCol
}

class ViewController: NSViewController {
    @IBOutlet weak var tableView: NSTableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        let sel = NSSelectorFromString("labelColor")
        let gr = NSColor.perform(sel)?.takeRetainedValue() as! NSColor
        print(gr)

        NotificationCenter.default.addObserver(self, selector: #selector(userDefaultsDidChange), name: UserDefaults.didChangeNotification, object: nil)
    }

    @objc func userDefaultsDidChange(_ notification: Notification) {
//        print("Changed \(notification.object) \(notification)")
        reloadColumnVisibility()
    }

    func reloadColumnVisibility() {
        tableView.tableColumns.forEach { col in
            if let value = UserDefaults.standard.value(forKey: col.identifier.rawValue),
                let bol = value as? Bool, bol == false {
                col.isHidden = true
            } else {
                col.isHidden = false
            }
        }
    }

    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        print("Changed \(keyPath)")
    }
}

extension ViewController: NSTableViewDataSource, NSTableViewDelegate {
    func numberOfRows(in tableView: NSTableView) -> Int {
        return Color.all.count
    }

    func tableView(_ tableView: NSTableView, viewFor tableColumn: NSTableColumn?, row: Int) -> NSView? {
        let iColor = Color.all[row]
        switch TableCol(rawValue: tableColumn!.identifier.rawValue)! {
        case .catCol:
            let cell = tableView.makeView(withIdentifier: NSUserInterfaceItemIdentifier(rawValue: "cat"), owner: self) as! NSTableCellView
            cell.textField?.stringValue = iColor.category.rawValue.capitalized
            return cell
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
        case .rgbCol:
            let cell = tableView.makeView(withIdentifier: NSUserInterfaceItemIdentifier(rawValue: "rgb"), owner: self) as! NSTableCellView
            cell.textField?.stringValue = iColor.rgb255 ?? "-"
            return cell
        case .hexCol:
            let cell = tableView.makeView(withIdentifier: NSUserInterfaceItemIdentifier(rawValue: "hex"), owner: self) as! NSTableCellView
            cell.textField?.stringValue = iColor.hexString ?? "-"
            return cell

        }
    }
}
