//
//  ViewController.swift
//  iRSS
//
//  Created by Hugo on 6/4/15.
//  Copyright (c) 2015 HugoZhang33. All rights reserved.
//

import UIKit

class ViewController: UIViewController, MWFeedParserDelegate {

    @IBOutlet weak var feedsButton: UIButton!
    
    @IBOutlet weak var categoryButton: UIButton!
    
    @IBOutlet weak var sourceTitle: UILabel!
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var items = [MWFeedItem]()
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        request()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.dataSource = self
        tableView.delegate = self
    }

//#pragma mark Parser
    func request() {
        let url = NSURL(string: "http://rss.news.yahoo.com/rss/tech");
        let feedParser = MWFeedParser(feedURL: url)
        feedParser.delegate = self
        feedParser.parse()
    }
    
    func feedParserDidStart(parser: MWFeedParser!) {
        self.items = [MWFeedItem]()
    }
    
    func feedParserDidFinish(parser: MWFeedParser!) {
        self.tableView.reloadData()
    }
    
    func feedParser(parser: MWFeedParser!, didParseFeedInfo info: MWFeedInfo!) {
        sourceTitle.text = info.title
    }
    
    func feedParser(parser: MWFeedParser!, didParseFeedItem item: MWFeedItem!) {
        println("\(item.summary)" + "__________________________++++++++++++++++++++++++++++" + "\(items.count)")
        self.items.append(item)
        
    }

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showWeb" {
            let vc = segue.destinationViewController as! WebViewController
            var indexPath = tableView.indexPathForSelectedRow()
            if let index = indexPath {
                vc.urlString = items[index.row].link
            }
        }
    }
    
    @IBAction func close(segue: UIStoryboardSegue) {}
    
}

