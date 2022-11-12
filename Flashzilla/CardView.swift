//
//  CardView.swift
//  Flashzilla
//
//  Created by Николай Никитин on 10.11.2022.
//

import SwiftUI

struct CardView: View {

  //MARK: - View Properties
  let card: Card
  var removal: (() -> Void)? = nil
  @State private var isShowingAnswer = false
  @State private var offset = CGSize.zero

  //MARK: - View Body
    var body: some View {
      ZStack {
        RoundedRectangle(cornerRadius: 25, style: .continuous)
          .fill(.white)
          .shadow(radius: 10)
        VStack {
          Text(card.prompt)
            .font(.largeTitle)
            .foregroundColor(.black)
          if isShowingAnswer {
            Text(card.answer)
              .font(.title)
              .foregroundColor(.gray)
          }
        }
        .padding()
        .multilineTextAlignment(.center)
      }
      .frame(width: 450, height: 250)
      .rotationEffect(.degrees(Double(offset.width / 5)))
      .offset(x: offset.width * 5, y: 0)
      .opacity(2 - Double(abs(offset.width / 50)))
      .gesture(
        DragGesture()
          .onChanged({ gesture in
            offset = gesture.translation
          })
          .onEnded({ _ in
            if abs(offset.width) > 100 {
              removal?()
            } else {
              offset = .zero
            }
          })
      )
      .onTapGesture {
        isShowingAnswer = true
      }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
      CardView(card: Card.example)
    }
}
