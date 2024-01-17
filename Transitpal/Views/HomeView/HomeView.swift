import SwiftUI

struct HomeView: View {
    @StateObject var homeViewModel = HomeViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                ZStack(alignment: .leading) {
                    Image("img_joshuasongkht")
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(796.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                    VStack {
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kLblWelcome)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(64.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(331.0),
                                       height: getRelativeHeight(84.0), alignment: .topLeading)
                            Text(StringConstants.kLblDjohn03)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(40.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(163.0),
                                       height: getRelativeHeight(48.0), alignment: .center)
                                .padding(.horizontal, getRelativeWidth(20.0))
                            Button(action: {
                                homeViewModel.nextScreen = "PlantripOneView"
                            }, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kLblStartNewTrip)
                                        .font(FontScheme
                                            .kPoppinsMedium(size: getRelativeHeight(24.0)))
                                        .fontWeight(.medium)
                                        .padding(.horizontal, getRelativeWidth(30.0))
                                        .padding(.vertical, getRelativeHeight(19.0))
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: getRelativeWidth(330.0),
                                               height: getRelativeHeight(75.0), alignment: .center)
                                        .overlay(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                                bottomLeft: 20.0, bottomRight: 20.0)
                                                .stroke(ColorConstants.Orange200,
                                                        lineWidth: 1))
                                        .background(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                                   bottomLeft: 20.0,
                                                                   bottomRight: 20.0)
                                                .fill(ColorConstants.WhiteA700))
                                        .padding(.top, getRelativeHeight(323.0))
                                }
                            })
                            .frame(width: getRelativeWidth(330.0), height: getRelativeHeight(75.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 20.0, topRight: 20.0, bottomLeft: 20.0,
                                                    bottomRight: 20.0)
                                    .stroke(ColorConstants.Orange200,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                       bottomLeft: 20.0, bottomRight: 20.0)
                                    .fill(ColorConstants.WhiteA700))
                            .padding(.top, getRelativeHeight(323.0))
                        }
                        .frame(width: getRelativeWidth(331.0), height: getRelativeHeight(531.0),
                               alignment: .center)
                        .padding(.leading, getRelativeWidth(31.0))
                        .padding(.trailing, getRelativeWidth(28.0))
                        Text("tabbar")
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: UIScreen.main.bounds.width - 20,
                                   height: getRelativeHeight(82.0), alignment: .leading)
                            .background(ColorConstants.WhiteA700)
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(786.0),
                           alignment: .leading)
                }
                .hideNavigationBar()
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: PlantripOneView(),
                                   tag: "PlantripOneView",
                                   selection: $homeViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.WhiteA700)
            .ignoresSafeArea()
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
