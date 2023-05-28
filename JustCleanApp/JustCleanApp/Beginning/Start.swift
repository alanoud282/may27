//
//  Start.swift
//  JustCleanApp
//
//  Created by ساره المرشد on 26/05/2023.
//

//
//  GetStarted.swift
//  CALO
//
//  Created by ساره المرشد on 20/05/2023.
import SwiftUI
import AVFoundation

struct Start: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    var body: some View {
        
        
      
            ZStack{
               
                Start1()
        if isActive {
            Welcome()

        } else {

        VStack {

        VStack {

        Image(systemName: "person")
                .resizable()
                .foregroundColor(Color.white)
                .frame(width: 1.0, height: 1)
        }
       // .scaleEffect(size)

        .opacity(opacity)

        .onAppear { withAnimation(.easeIn(duration: 2)) {

      //  self.size = 0.9

        self.opacity = 1.0
        }
        }
        }
            

        .onAppear { DispatchQueue.main.asyncAfter(deadline: .now() + 5.5) { self.isActive = true
        }
        }
    }
                
            
            }
}
    }


struct Start1: UIViewRepresentable {


    func makeUIView(context: Context) -> UIView {
        return QueuePlayerUIView(frame: .zero)

    }

    func updateUIView(_ uiView: UIView, context: Context) {

    }
}

class QueuePlayerUIView: UIView {
    private var playerLayer = AVPlayerLayer()
   // private var playerLooper: AVPlayerLooper?

    override init(frame: CGRect) {
        super.init(frame: frame)

        // Load Video
        let fileUrl = Bundle.main.url(forResource: "WhatsApp Video 2023-05-26 at 10.01.28 PM", withExtension: "mp4")!
        let playerItem = AVPlayerItem(url: fileUrl)

        // Setup Player
        let player = AVQueuePlayer(playerItem: playerItem)
        playerLayer.player = player
        playerLayer.videoGravity = .resizeAspectFill
        layer.addSublayer(playerLayer)

//        // Loop
//        playerLooper = AVPlayerLooper(player: player, templateItem: playerItem)

        // Play
        player.play()
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        playerLayer.frame = bounds
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}



struct Start_Previews: PreviewProvider {
    static var previews: some View {
        Start()
    }
}


