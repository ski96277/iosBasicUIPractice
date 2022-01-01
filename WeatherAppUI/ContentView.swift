import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
     
        ZStack{
            BackgroundColor();
                
                VStack {
                    
                    CityNameview()
                    
                    TodayTemperature()
                    Spacer()
                    
                    HStack(spacing: 15){
                        
                        ForcastWeather(daysString: "SUN", imageString: "cloud.sun.fill", temString: 35)
                        ForcastWeather(daysString: "MON", imageString: "sun.max.fill", temString: 45)
                        ForcastWeather(daysString: "TUE", imageString: "cloud.fill", temString: 25)
                        ForcastWeather(daysString: "WED", imageString: "cloud.drizzle.fill", temString: 85)
                        ForcastWeather(daysString: "THU", imageString: "cloud.sun.fill", temString: 95)
                        ForcastWeather(daysString: "FRI", imageString: "cloud.sun.fill", temString: 25)
                            
                    }
                    
                    Spacer()
                    Button {
                        print("pressed")
                        
                    }label:{
                        
                        ButtonText()
                    }
                    
                    Spacer()
                        
                }
            
            
        }
    
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.portraitUpsideDown)
    }
}

struct ForcastWeather: View {
    
    var daysString:String
    var imageString:String
    var temString:Int
    
    var body: some View {
        
            VStack {
                Text("\(daysString)").foregroundColor(.white).font(.system(size: 20,weight: .medium))
                Image(systemName: imageString).resizable().renderingMode(.original)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 40
                           , height: 40 )
                Text("\(temString)°").foregroundColor(.white).font(.system(size: 20,weight: .medium))
            }
        
    }
}

struct BackgroundColor: View {
    
    
    var body: some View {
        LinearGradient.init(
            gradient: Gradient(colors: [.blue,Color("ColorLightBlue")]),
            startPoint: UnitPoint.topLeading,
            endPoint: UnitPoint.bottomTrailing)
            .ignoresSafeArea()
    }
}


struct CityNameview: View {
    var body: some View {
        Text("Capertino,CA")
            .font(.system(size: 36 ,weight: .medium  ,design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct TodayTemperature: View {
    var body: some View {
        VStack(spacing: 8){
            
            Image(systemName: "cloud.sun.fill")
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: ContentMode.fit)
                .frame(width: 180, height: 180)
            
            Text("76°")
                .font(.system(size: 70,weight: .medium))
                .foregroundColor(.white)
            
        }
    }
}
