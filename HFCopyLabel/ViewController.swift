//
//  ViewController.swift
//  HFCopyLabel
//
//  Created by HF on 2019/1/22.
//  Copyright © 2019 com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    fileprivate let contentArray = [["想出家了":"回家的路上，下雪了。一片一片的雪花啊，纷纷扬扬地，欢天喜地地，雀跃地，像是跟我要回家的心情一样。天气很冷。但是回到这里就觉得安全，内心一片宁静，仿佛自己随意往地上一站，就长成了一根树，把根深深地往地底扎下去。仿佛回到天地鸿蒙最初的朴素和纯粹，仿佛自己晶莹得不带一点杂质。感谢老天，赐予我孤独，却至少给我一个可以安放灵魂的故土，而不是一个飘荡的游魂。"],
                                    ["赠废柴群简友------人生何处不相逢":"人生何处不相逢，青山还与旧时同。今朝有酒今朝醉，昨夜星辰昨夜风。梦为远别啼难唤，书被催成墨未浓。忆事怀人兼得句，心有灵犀一点通。"],
                                    ["古典：只有两种人会成功，你是哪一种？":"生命的意义，不在乎以什么绚丽的方式开始，而是在漫长的时光里如何成长为最真实的自己。"],
                                    ["别再说喜欢我了，你根本什么都没做":"我有一个朋友，高中时学校严令禁止早恋，所以她跟本没可能会谈恋爱。今年的九月份，她终于从炼狱高三进入了她一直憧憬的大学。有人说，在大学里如果不谈一场恋爱是会后悔一生的，所以每一个刚上大学的人都渴望着能在美丽的大学校园里邂逅一个他（她）。这不上了大学之后，也有男同学来向她表白，但是第一次碰到这些事情的她却不知所措，就时不时地会问我一些感情问题。"],
                                    ["2018年我坚持养成了这些微习惯，宛如重生。":"始终坚信每一个想要变好的人，心里都会有一个想要成为的人，但若不行动，只不过是人们口中思想的巨人，行动的矮子而已。每一个人都希望自己的人生一直在不断的更新，进化成更高级的版本！"],
                                    ["你们的鼓励，激励我不断前行":"最近，写文后喜欢起看文后的评论来。许多老师的留言，真是暖到了心窝窝里。征文儿时的年味|杀年猪发布后，梅拾樱老师的留言很有启发，看完后心里暖暖的。之后，很快井底女蛙老师也来助力，还提出了很好的建议，当时就被感动了。我对照老师的留言，认真将征文又修改了一遍。"],
                                    ["用小程序这样发微信语音，看对方不打死你":"很多人遇到的这种人是相当不喜的，那就是总爱用语音的人，特别是爱用语音刷屏的人，小到2、3秒，大到59秒，看着那些红点点，真真让人火大。但是吧，如果真的很不方便，也不知道对方是否有空来听语音的话，小编教你一个不讨人烦（但是可能会直接被打死）的方法，那就是用【搞趣电话】小程序，让对方接听语音就像打电话一样。首先，打开【搞趣电话】小程序，点击下方的红色“+”按钮开始搞事情。"],
                                    ["中3条以上的女生 真的很难追":"经常会听到一些男生讨论，谁谁谁真的很难追。我追了她一个多月，每天都跟她说早安晚安，想约她出来一起吃饭，可她总是以各种理由拒绝我，一点也不领情，实在是太难追了。我觉得这不是难追，是现在男生追求你，你都不知道对方是想爱你还是想睡你。现在谈恋爱，谈着谈着就不理你了，大面积撒网，选择性捕捞，感觉好像被放生一样。生活在这个时代，爱情变得廉价，我们都想要牵了手就能结婚的爱情，却活在一个上了床也没有结果的年代。现在很少有男生把心爱的人的照片放进钱包里面，一般是聊聊微信，打打电话，看一眼照片，就说喜欢上你了，三言两语就开房了。即使是这样分得也快，一言不合一个电话一个微信，就说我们分手，互删吧。其实女生难不难追，从这三条就能看得出。"],
                                    ["再见了媒体行业，明年我要转行卖烧饼去了":"冷风如刀，以大地为砧板，视众生为鱼肉。万里飞雪，将穹苍作洪炉，熔万物为白银。雪将住，风未定，一辆滴滴快车自北而来，滚动的车轮辗碎了地上的冰雪，却辗不碎天地间的寂寞。野生自媒体人李砍柴在车上打了个呵欠。多年来不规律的饮食和作息，虽然已使他的腹部逐渐凸起，但是在拼多多购买的高领毛衣掩饰下，他看起来还是要比他的实际岁数年轻得多。只有他自己知道，他已不再年轻。多年熬夜写稿练就的熊猫眼，让他一笑起来眼角全是褶子，每一条褶子里都蓄满了无数个熬夜写稿的忧患和不幸。多年写稿生涯，键盘已经敲坏了几块，尤其是“WASD”这四个字母，经常模糊不见。胳膊和肩膀处的结节，一碰就疼。只有他的眼睛，却是年轻的。作为一个内容人，这么多年徘徊在新媒体鄙视链的最末端，他早已经习惯了这样的寒冷和寂寞，越是在黑夜里，眼睛里越是绽放着寒光。"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        navigationItem.title = "Copy"
        view.backgroundColor = UIColor.white
        self.edgesForExtendedLayout = []
        //tableView
        setUpTableView()
        
        //UIMenuController
        NotificationCenter.default.addObserver(self, selector: #selector(willShow), name: UIMenuController.willShowMenuNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(willHide), name: UIMenuController.willHideMenuNotification, object: nil)
    }
    
    @objc func willShow() {
       print("willShow")
    }
    
    @objc func willHide() {
       print("willHide")
    }
    
    fileprivate func setUpTableView() {
        let tableView = UITableView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height-UIApplication.shared.statusBarFrame.size.height-44), style: .grouped)
        tableView.backgroundColor = UIColor.white
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(ContentCell.self, forCellReuseIdentifier: "ContentCellIdentifer")
        view.addSubview(tableView)
    }
    
    deinit {
        print("ViewController-deinit")
        NotificationCenter.default.removeObserver(self, name: UIMenuController.willShowMenuNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: UIMenuController.willHideMenuNotification, object: nil)
    }
}

extension ViewController: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contentArray.count
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return nil
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0.1
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return nil
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0.1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContentCellIdentifer") as! ContentCell
        cell.textLabel?.text = contentArray[indexPath.row].keys.first
        cell.detailTextLabel?.text = contentArray[indexPath.row].values.first
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        //消失
        UIMenuController.shared.setMenuVisible(false, animated: true)
        let detailVC = DetailViewController()
        self.navigationController?.pushViewController(detailVC, animated: true)
    }
    
    
}

