import SwiftUI

struct ListContainerView: View {
    @StateObject var listContainerViewModel = ListContainerViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 0) {
                Text("Content")
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(332.0), height: getRelativeHeight(792.0))
                Text("tabbar")
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(323.0), height: getRelativeHeight(42.0),
                           alignment: .center)
                    .padding(.trailing, getRelativeWidth(6.0))
            }
            .frame(width: getRelativeWidth(332.0), alignment: .topLeading)
            .background(ColorConstants.WhiteA700)
            .padding(.vertical, getRelativeHeight(19.0))
            .padding(.leading, getRelativeWidth(31.0))
            .padding(.trailing, getRelativeWidth(27.0))
            .padding(.top, getRelativeHeight(30.0))
            .padding(.bottom, getRelativeHeight(10.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.WhiteA700)
        .ignoresSafeArea()
        .hideNavigationBar()
        .onAppear {}
    }
}

struct ListContainerView_Previews: PreviewProvider {
    static var previews: some View {
        ListContainerView()
    }
}
