//
//  TransactionHistoryTableViewCell.swift
//  FPT Banking
//
//  Created by hưng hoàng on 6/22/20.
//  Copyright © 2020 hưng hoàng. All rights reserved.
//

import UIKit

class TransactionHistoryTableViewCell: UITableViewCell {

    @IBOutlet weak var transacsionView: UIView!
    @IBOutlet weak var lbAmount: UILabel!
    @IBOutlet weak var lbDate: UILabel!
    @IBOutlet weak var lbContent: UILabel!
    @IBOutlet weak var lbTypeSend: UILabel!
    @IBOutlet weak var dayView: UIView!
    @IBOutlet weak var lbVND: UILabel!
    var indexPath: IndexPath?
    override func awakeFromNib() {
        super.awakeFromNib()
        contentView.layer.cornerRadius = 10
        contentView.layer.masksToBounds = true
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 0, left: 0, bottom: 10, right: 0))
        contentView.setMutilColorForView(nameColor: ColorName.CallBackground)
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    func setupDataTransacsion(obj:TransactionsObj?,index: IndexPath) {
        lbDate.text = tail(s: obj?.createdAt! ?? "")
        lbContent.text = obj?.description
        lbAmount.text = "\(obj?.amount ?? 0)"
        lbTypeSend.text = obj?.transactionType.transactionType
        if obj?.amount ?? 0 >= 0 {
            lbAmount.textColor = .green
            lbDate.textColor = .green
            lbVND.textColor = .green
        } else if obj?.amount ?? 0 < 0 {
            lbAmount.textColor = .red
            lbDate.textColor = .red
            lbVND.textColor = .red
        }
    }
    func tail(s: String) -> String {
        return String(s.prefix(10))
    }
}

