

import SwiftUI

struct ContentView: View {
    
    @State private var show = false
    @State private var texto = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Texto", text: $texto)
                NavigationLink(destination: segundaVista(texto:texto)) {
                    Text("Segunda vista")
                }
                Button("Abrir Modal") {
                    show.toggle()
                }
                .sheet(isPresented: $show) {
                    VentanaModal(texto: texto)
                }.navigationTitle("Navegación")
                    .toolbar{
                        HStack{
                            NavigationLink(destination: segundaVista(texto: texto)) {
                                Image(systemName: "plus")
                            }
                            NavigationLink(destination: TercerVista()) {
                                Image(systemName: "camera")
                            }
                        }
                    }
            }.padding(.all)
        }
    }
}


