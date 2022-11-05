

import SwiftUI

struct segundaVista: View {
    var texto : String
    var body: some View {
        Text("Segunda Vista")
            .navigationTitle(texto)
        NavigationLink(destination: TercerVista()) {
            Text("Ir a tercer vista")
        }
    }
}


