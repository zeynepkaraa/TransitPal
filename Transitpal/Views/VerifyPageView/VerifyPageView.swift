import SwiftUI

struct VerifyPageView: View {
    @StateObject var verifyPageViewModel = VerifyPageViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                Text(StringConstants.kMsgTimeRemaining)
                    .font(FontScheme.kInterBold(size: getRelativeHeight(20.0)))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.Black900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.center)
                    .frame(width: getRelativeWidth(207.0), height: getRelativeHeight(49.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(176.0))
                    .padding(.horizontal, getRelativeWidth(36.0))
                ZStack(alignment: .center) {
                    Text(StringConstants.kLbl2047)
                        .font(FontScheme.kInterBold(size: getRelativeHeight(80.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.WhiteA700)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(233.0), height: getRelativeHeight(97.0),
                               alignment: .topLeading)
                        .padding(.vertical, getRelativeHeight(106.65))
                        .padding(.leading, getRelativeWidth(38.4))
                        .padding(.trailing, getRelativeWidth(46.6))
                    ZStack {}
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(300.0), height: getRelativeHeight(298.0),
                               alignment: .center)
                        .overlay(RoundedCorners(topLeft: 150.0, topRight: 150.0, bottomLeft: 150.0,
                                                bottomRight: 150.0)
                                .stroke(ColorConstants.WhiteA700,
                                        lineWidth: 5))
                        .background(RoundedCorners(topLeft: 150.0, topRight: 150.0,
                                                   bottomLeft: 150.0, bottomRight: 150.0)
                                .fill(Color.clear.opacity(0.7)))
                        .padding(.top, getRelativeHeight(11.0))
                        .padding(.bottom, getRelativeHeight(10.0))
                        .padding(.horizontal, getRelativeWidth(9.0))
                }
                .hideNavigationBar()
                .frame(width: getRelativeWidth(318.0), height: getRelativeHeight(319.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 159.5, topRight: 159.5, bottomLeft: 159.5,
                                           bottomRight: 159.5)
                        .fill(ColorConstants.Bluegray600))
                .padding(.vertical, getRelativeHeight(32.0))
                .padding(.horizontal, getRelativeWidth(36.0))
            }
            .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
            .background(ColorConstants.WhiteA700)
            .padding(.top, getRelativeHeight(30.0))
            .padding(.bottom, getRelativeHeight(10.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.WhiteA700)
        .ignoresSafeArea()
        .hideNavigationBar()
    }
}

struct VerifyPageView_Previews: PreviewProvider {
    static var previews: some View {
        VerifyPageView()
    }
}
