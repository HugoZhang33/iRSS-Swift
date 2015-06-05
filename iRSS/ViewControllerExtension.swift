//
//  ViewControllerExtension.swift
//  iRSS
//
//  Created by Hugo on 6/4/15.
//  Copyright (c) 2015 HugoZhang33. All rights reserved.
//

import UIKit

extension ViewController: UITableViewDataSource {
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("feedCell") as! UITableViewCell
        var item = items[indexPath.row] as MWFeedItem
        
        let image = cell.contentView.viewWithTag(101) as! UIImageView
        let preview = cell.contentView.viewWithTag(102) as! UITextView
        let title = cell.contentView.viewWithTag(100) as! UILabel
        
        title.text = "  \(item.title)"
        
        if item.summary != nil {
            var summaryComponent = item.summary.componentsSeparatedByString("<img src=\"")
            if summaryComponent.count < 2 { // only have title, no picture
                preview.text = summaryComponent[0]
                image.image = UIImage(named: "ban")
            }
            else {
                summaryComponent = summaryComponent[1].componentsSeparatedByString("</a>")
                
                let imgUrl = summaryComponent[0].componentsSeparatedByString("\"")[0]
                let text = summaryComponent[1].componentsSeparatedByString("</p>")[0]
                
                let url = NSURL(string: imgUrl)
                
                image.setImageWithURL(url, placeholderImage: nil)
                preview.text = text
            }
        }
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    
}


