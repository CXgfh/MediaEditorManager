//
//  ViewController.swift
//  MediaEditorManager
//
//  Created by oauth2 on 05/19/2023.
//  Copyright (c) 2023 oauth2. All rights reserved.
//

/*
 https://tenloy.github.io/2022/03/18/avfoundation.html
 
 https://developer.apple.com/documentation/avfoundation/video_settings
 https://developer.apple.com/documentation/avfoundation/audio_settings
  
 */

/*
 videoTrack.formatDescriptions 配置
 
 AVAssetWriterInputPixelBufferAdaptor 将视频样本追加到资产写入器输入的对象
 */


import UIKit
import MediaEditorManager
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let asset = AVAsset(url: URL(string: "")!)
        
        let manager = MediaEditorManager()
        manager.changedAVType(type: .mov)
        manager.changedAVExportPreset(type: .highest)
        
        //旋转
        manager.correctingVideo(at: asset) { result in
            switch result {
            case .success(let url):
                break
            case .failure(let error):
                break
            }
        }
        
        //格式转换
        manager.transformFormat(at: asset, to: .mov) { result in
            
        }
        
        //裁剪
        manager.tailoringVideo(at: asset, CMTimeRange.zero) { result in
            
        }
        manager.tailoringVideo(at: asset, tailoring: MediaEditorTailoring(star: 0, end: 1)) { result in
            
        }
        
        //拼接
        manager.combinedGrowthVideo(by: [asset]) { result in
            
        }
        
        //水印元数据
        var waterMaker = MediaEditorWaterMaker(image: UIImage(), centerOffsetX: 0, centerOffsetY: 0, star: .zero, duration: 1)
        //添加关键帧动画
        waterMaker.addAnimation(keyPath: "", values: [], keyTimes: [])
        
        //水印
        manager.waterMaker(at: asset, waterMakers: [waterMaker]) { result in
            
        }
        
        //视频压缩
        //视频设置不能为空
        let video = [
            AVVideoCodecKey: AVVideoCodecType.h264,
            AVVideoWidthKey: 1080,
            AVVideoHeightKey: 760,
            AVVideoCompressionPropertiesKey: [
                AVVideoAverageBitRateKey: 960000, //比特率
                AVVideoExpectedSourceFrameRateKey: 24, //帧
                AVVideoProfileLevelKey: AVVideoProfileLevelH264High40
            ] as [String : Any]
        ] as [String : Any]
        
        let audio = [
            AVFormatIDKey: kAudioFormatMPEG4AAC,
            AVNumberOfChannelsKey: 2,
            AVSampleRateKey: 44100,
            AVEncoderBitRateKey: 128000
        ]
        
        let manager2 = MediaDataEditorManager()
        manager2.changedAVType(type: .mov)
        
        manager2.edit(at: asset, tailoring: nil, compression: nil, waterMakers: nil) { result in
            
        }
    }
}

