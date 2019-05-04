import Cocoa
enum TableCol: String {
    case catCol, nameCol, lightCol, darkCol, descCol
}

class ViewController: NSViewController {
    @IBOutlet weak var tableView: NSTableView!
    @IBOutlet weak var rgbaLabel: NSTextField!
    @IBOutlet weak var hexLabel: NSTextField!

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
        }
    }

    func tableViewSelectionDidChange(_ notification: Notification) {
        // Disable highlight
        let selectedRow = tableView.selectedRow
        let rowView = tableView.rowView(atRow: selectedRow, makeIfNecessary: false)
        rowView?.selectionHighlightStyle = .regular
        rowView?.isEmphasized = false

        //Update details view
        let color = Color.all[selectedRow]
        rgbaLabel.stringValue = color.rgb ?? "-"
        hexLabel.stringValue = color.hexString ?? "-"
    }
}
