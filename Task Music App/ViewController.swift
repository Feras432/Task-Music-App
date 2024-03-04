//
//  ViewController.swift
//  Task Music App
//
//  Created by Feras Alshadad on 04/03/2024.
//

import UIKit
import SnapKit
class ViewController: UIViewController {
    
        let backgroundImageView = UIImageView()
        let blurEffectView = UIVisualEffectView(effect: UIBlurEffect(style: .dark))
        let albumCoverImageView = UIImageView()
        let titleLabelView = UILabel()
        let artistLabelView = UILabel()
        let progressBarView = UISlider()
        let currentTimeLabelView = UILabel()
        let remainingTimeLabelView = UILabel()
        let playButton = UIButton()
        let nextSongButton = UIButton()
        let previousSongButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(backgroundImageView)
        view.addSubview(albumCoverImageView)
        view.addSubview(titleLabelView)
        view.addSubview(artistLabelView)
        view.addSubview(progressBarView)
        view.addSubview(currentTimeLabelView)
        view.addSubview(remainingTimeLabelView)
        view.addSubview(playButton)
        view.addSubview(nextSongButton)
        view.addSubview(previousSongButton)
        
        setupUI()
        setupConstraints()
        
    }

    func setupUI(){
                
        backgroundImageView.contentMode = .scaleAspectFill
        backgroundImageView.image = UIImage(named: "eminem")
        backgroundImageView.addSubview(blurEffectView)
        
        albumCoverImageView.contentMode = .scaleAspectFill
        albumCoverImageView.image = UIImage(named: "eminem")
        
        
        titleLabelView.text = "Eminem"
        titleLabelView.textAlignment = .center
        titleLabelView.font = UIFont.boldSystemFont(ofSize: 24)
        titleLabelView.textColor = .white
        
        artistLabelView.text = "Till I Collapse"
        artistLabelView.textAlignment = .center
        artistLabelView.font = UIFont.systemFont(ofSize: 18)
        artistLabelView.textColor = .white

        
        currentTimeLabelView.text = "0:00"
        currentTimeLabelView.textColor = .white

        
        remainingTimeLabelView.text = "-0:00"
        remainingTimeLabelView.textColor = .white

        
        playButton.setImage(UIImage(systemName: "play.fill"), for: .normal)

        nextSongButton.setImage(UIImage(systemName: "forward.fill"), for: .normal)

        previousSongButton.setImage(UIImage(systemName: "backward.fill"), for: .normal)


    }
    
    func setupConstraints(){
        blurEffectView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        progressBarView.snp.makeConstraints { make in
            make.top.equalTo(artistLabelView.snp.bottom).offset(20)
            make.left.right.equalToSuperview().inset(20)
        }
        
        backgroundImageView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        albumCoverImageView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(-100)
            make.width.equalToSuperview().multipliedBy(0.5)
            make.height.equalTo(albumCoverImageView.snp.width)
        }
        
        titleLabelView.snp.makeConstraints { make in
            make.top.equalTo(albumCoverImageView.snp.bottom).offset(30)
            make.centerX.equalToSuperview()
            make.left.right.equalToSuperview().inset(20)
        }
        
        artistLabelView.snp.makeConstraints { make in
            make.top.equalTo(titleLabelView.snp.bottom).offset(30)
            make.centerX.equalToSuperview()
            make.left.right.equalToSuperview().inset(20)
        }
        
        progressBarView.snp.makeConstraints { make in
            make.top.equalTo(artistLabelView.snp.bottom).offset(20)
            make.left.right.equalToSuperview().inset(20)
        }
        
        currentTimeLabelView.snp.makeConstraints { make in
            make.top.equalTo(progressBarView.snp.bottom).offset(8)
            make.left.equalTo(progressBarView.snp.left)
        }
        
        remainingTimeLabelView.snp.makeConstraints { make in
            make.top.equalTo(progressBarView.snp.bottom).offset(8)
            make.right.equalTo(progressBarView.snp.right)

        }
        
        playButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(currentTimeLabelView.snp.bottom).offset(20)
        }
        
        nextSongButton.snp.makeConstraints { make in
            make.centerY.equalTo(playButton.snp.centerY)
            make.left.equalTo(playButton.snp.right).offset(30)
        }
        
        previousSongButton.snp.makeConstraints { make in
            make.centerY.equalTo(playButton.snp.centerY)
            make.right.equalTo(playButton.snp.left).offset(-30)
        }
    }
}

