//
//  Home.swift
//  PassFinder
//
//  Created by underTheBlueSun on 2021/12/04.
//

import SwiftUI

struct Home: View {
    
//    @State var nativeAlert = false
    @State var customAlert = false
    @State var HUD = false
    @State var password = ""
    
    var body: some View {
        
        ZStack {
            
            VStack(spacing: 25) {
                
                Button(action: {
                    alertView()
                }) {
                    Text("native alert with textfield")
                }

                Text(password)
                    .fontWeight(.bold)

                Button(action: {
                    withAnimation {
                        HUD.toggle()
                    }
                }) {
                    Text("hud progress view")
                }

                Button(action: {
                    customAlert.toggle()
//                    withAnimation {
//                        customAlert.toggle()
//                    }
                }) {
                    Text("custom alert")
                }


            }

            if HUD {

                HUDProgressView(placeHolder: "please wait", show: $HUD)

            }
            
            if customAlert {
                
                CustomAlertView(show: $customAlert)
            }
        } // zstack
        .edgesIgnoringSafeArea(.all)
    }
    
    func alertView() {

        let alert = UIAlertController(title: "login", message: "enter passwd", preferredStyle: .alert)
        alert.addTextField { (pass) in
            pass.isSecureTextEntry = true
            pass.placeholder = "password"

        }

        // action button...
        let login = UIAlertAction(title: "login", style: .default) { (_) in
            // do your own stuff...

            // retreving password...
            password = alert.textFields![0].text!

        }

        let cancel = UIAlertAction(title: "cancel", style: .destructive) { (_) in
            // same...

        }

        // adding into alertview...
        alert.addAction(cancel)
        alert.addAction(login)

        // presenting alertview...
        UIApplication.shared.windows.first?.rootViewController?.present(alert, animated: true, completion: {
            // do your own stuff..

        })

    }
    
    
}

struct HUDProgressView: View {
    
    var placeHolder: String
    @Binding var show: Bool
    @State var animate = false
    
    var body: some View {
        
        VStack {
            
            Circle()
            // for dark mode adoption...
                .stroke(AngularGradient(gradient: .init(colors: [Color.primary,Color.primary.opacity(0)]), center: .center))
                .frame(width: 80, height: 80)
            // animating...
                .rotationEffect(.init(degrees: animate ? 360 : 0))
            
            Text(placeHolder)
                .fontWeight(.bold)
                
            
        }
        .padding(.vertical, 25)
        .padding(.horizontal, 35)
        .background(BlurView())
        .cornerRadius(20)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.primary.opacity(0.35)
                        .onTapGesture {
                            withAnimation {
                                // closing view...
                                show.toggle()
                                
                            }
                        }
        )
        .onAppear {
            
            // starting animation...
            
            withAnimation(Animation.linear(duration: 1.5).repeatForever(autoreverses: false)) {
                animate.toggle()
            }
        }
    }
}

struct BlurView : UIViewRepresentable {
    
    func makeUIView(context: Context) -> UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: .systemThinMaterial))
        
        return view
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        
    }
}

struct CustomAlertView: View {
    
    @Binding var show: Bool
    
    var body: some View {
        
        ZStack(alignment: Alignment(horizontal: .trailing, vertical: .top)) {
            
            VStack(spacing: 25) {
                
                Image(systemName: "text.badge.checkmark")
                
                Text("congratulations")
                    .font(.title)
                    .foregroundColor(.pink)
                
                Text("you have successfully done the work")
                
                Button(action: {}) {
                    
                    Text("back to home")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .padding(.vertical, 10)
                        .padding(.horizontal, 25)
                        .background(Color.purple)
                        .clipShape(Capsule())
                }
            }
            .padding(.vertical, 25)
            .padding(.horizontal, 30)
//            .background(BlurView())
            .background(Color.blue)
            .cornerRadius(25)
            
            Button(action: {
                
                withAnimation {
                    show.toggle()
                }
            }) {
                Image(systemName: "person.2.fill")
                    .font(.system(size: 28, weight: .bold))
                    .foregroundColor(.purple)
                
            }
            .padding()
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.primary.opacity(0.9))
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
