import SwiftUI

struct PlantripOneView: View {
    @StateObject var plantripOneViewModel = PlantripOneViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    VStack(alignment: .leading, spacing: 0) {
                        Group {
                            Text(StringConstants.kLblTimeSlot)
                                .font(FontScheme.kInterRegular(size: getRelativeHeight(15.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Gray600)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(67.0),
                                       height: getRelativeHeight(17.0), alignment: .topLeading)
                                .padding(.trailing)
                            HStack {
                                Text(StringConstants.kMsg12001210P)
                                    .font(FontScheme.kInterRegular(size: getRelativeHeight(15.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(126.0),
                                           height: getRelativeHeight(19.0), alignment: .topLeading)
                                    .padding(.vertical, getRelativeHeight(14.0))
                                    .padding(.leading, getRelativeWidth(5.0))
                                Image("img_group_bluegray_900_25x25")
                                    .resizable()
                                    .frame(width: getRelativeWidth(25.0),
                                           height: getRelativeWidth(25.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.top, getRelativeHeight(12.0))
                                    .padding(.bottom, getRelativeHeight(11.0))
                                    .padding(.leading, getRelativeWidth(5.0))
                            }
                            .frame(width: getRelativeWidth(172.0), height: getRelativeHeight(48.0),
                                   alignment: .leading)
                            .background(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                                       bottomRight: 7.0)
                                    .fill(ColorConstants.Gray300))
                            .padding(.top, getRelativeHeight(5.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                            Text(StringConstants.kLblStation)
                                .font(FontScheme.kInterRegular(size: getRelativeHeight(15.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Gray600)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(50.0),
                                       height: getRelativeHeight(17.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(25.0))
                                .padding(.leading, getRelativeWidth(5.0))
                                .padding(.trailing, getRelativeWidth(10.0))
                            HStack {
                                TextField(StringConstants.kLblUnion,
                                          text: $plantripOneViewModel.groupfiftyoneText)
                                    .font(FontScheme.kInterRegular(size: getRelativeHeight(15.0)))
                                    .foregroundColor(ColorConstants.Black900)
                                    .padding()
                                Image("img_group_bluegray_900_26x28")
                                    .resizable()
                                    .frame(width: getRelativeWidth(28.0),
                                           height: getRelativeHeight(26.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.top, getRelativeHeight(10.0))
                                    .padding(.bottom, getRelativeHeight(11.0))
                                    .padding(.leading, getRelativeWidth(30.0))
                                    .padding(.trailing, getRelativeWidth(16.0))
                                Spacer()
                            }
                            .frame(width: getRelativeWidth(328.0), height: getRelativeHeight(48.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                                    bottomRight: 7.0)
                                    .stroke(ColorConstants.Bluegray100,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                                       bottomRight: 7.0)
                                    .fill(ColorConstants.Gray301))
                            .padding(.top, getRelativeHeight(5.0))
                            .padding(.trailing, getRelativeWidth(16.0))
                            Text(StringConstants.kLblDirection)
                                .font(FontScheme.kInterRegular(size: getRelativeHeight(15.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Gray600)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(63.0),
                                       height: getRelativeHeight(17.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(26.0))
                                .padding(.leading, getRelativeWidth(6.0))
                                .padding(.trailing, getRelativeWidth(10.0))
                            Picker(StringConstants.kLblSouth,
                                   selection: $plantripOneViewModel.groupeighteenPicker1) {
                                ForEach(plantripOneViewModel.groupeighteenPicker1Values,
                                        id: \.self) { value in
                                    Text(value)
                                }
                            }
                            .foregroundColor(ColorConstants.Black900)
                            .font(.system(size: getRelativeHeight(15)))
                            .pickerStyle(MenuPickerStyle())
                            Text(StringConstants.kLblDestination)
                                .font(FontScheme.kInterRegular(size: getRelativeHeight(15.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Gray600)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(80.0),
                                       height: getRelativeHeight(17.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(24.0))
                                .padding(.leading, getRelativeWidth(7.0))
                                .padding(.trailing, getRelativeWidth(10.0))
                            HStack {
                                TextField(StringConstants.kLblFinch,
                                          text: $plantripOneViewModel.groupfiftytwoText)
                                    .font(FontScheme.kInterRegular(size: getRelativeHeight(15.0)))
                                    .foregroundColor(ColorConstants.Black900)
                                    .padding()
                                Image("img_group_bluegray_900_26x28")
                                    .resizable()
                                    .frame(width: getRelativeWidth(28.0),
                                           height: getRelativeHeight(26.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.top, getRelativeHeight(10.0))
                                    .padding(.bottom, getRelativeHeight(11.0))
                                    .padding(.leading, getRelativeWidth(30.0))
                                    .padding(.trailing, getRelativeWidth(16.0))
                                Spacer()
                            }
                            .frame(width: getRelativeWidth(328.0), height: getRelativeHeight(48.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                                    bottomRight: 7.0)
                                    .stroke(ColorConstants.Bluegray100,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                                       bottomRight: 7.0)
                                    .fill(ColorConstants.Gray301))
                            .padding(.top, getRelativeHeight(5.0))
                            .padding(.leading, getRelativeWidth(5.0))
                            .padding(.trailing, getRelativeWidth(14.0))
                        }
                        Group {
                            Text(StringConstants.kMsgThisInformati)
                                .font(FontScheme.kInterRegular(size: getRelativeHeight(10.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Gray600)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(316.0),
                                       height: getRelativeHeight(26.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(10.0))
                                .padding(.leading, getRelativeWidth(7.0))
                                .padding(.trailing, getRelativeWidth(10.0))
                            Button(action: {
                                plantripOneViewModel.nextScreen = "PlantripTwoView"
                            }, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kMsgFilterByInter)
                                        .font(FontScheme
                                            .kPoppinsMedium(size: getRelativeHeight(15.0)))
                                        .fontWeight(.medium)
                                        .padding(.trailing, getRelativeWidth(25.0))
                                        .padding(.leading, getRelativeWidth(15.0))
                                        .padding(.vertical, getRelativeHeight(14.0))
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(161.0),
                                               height: getRelativeHeight(52.0), alignment: .leading)
                                        .background(RoundedCorners(topLeft: 15.0, topRight: 15.0,
                                                                   bottomLeft: 15.0,
                                                                   bottomRight: 15.0)
                                                .fill(ColorConstants.Bluegray600))
                                        .padding(.top, getRelativeHeight(40.0))
                                        .padding(.trailing, getRelativeWidth(10.0))
                                }
                            })
                            .frame(width: getRelativeWidth(161.0), height: getRelativeHeight(52.0),
                                   alignment: .leading)
                            .background(RoundedCorners(topLeft: 15.0, topRight: 15.0,
                                                       bottomLeft: 15.0, bottomRight: 15.0)
                                    .fill(ColorConstants.Bluegray600))
                            .padding(.top, getRelativeHeight(40.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                            HStack {
                                Text(StringConstants.kLblFindMatches)
                                    .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(24.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(160.0),
                                           height: getRelativeHeight(36.0), alignment: .topLeading)
                                    .padding(.vertical, getRelativeHeight(13.0))
                                Image("img_arrowright")
                                    .resizable()
                                    .frame(width: getRelativeWidth(21.0),
                                           height: getRelativeHeight(15.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.top, getRelativeHeight(24.0))
                                    .padding(.bottom, getRelativeHeight(23.0))
                                    .padding(.leading, getRelativeWidth(38.0))
                                    .padding(.trailing, getRelativeWidth(25.0))
                            }
                            .onTapGesture {}
                            .frame(width: getRelativeWidth(265.0), height: getRelativeHeight(63.0),
                                   alignment: .trailing)
                            .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                       bottomLeft: 10.0, bottomRight: 10.0)
                                    .fill(ColorConstants.Orange200))
                            .padding(.top, getRelativeHeight(122.0))
                            .padding(.leading, getRelativeWidth(10.0))
                        }
                    }
                    .frame(width: getRelativeWidth(347.0), height: getRelativeHeight(674.0),
                           alignment: .leading)
                    Text("tabbar")
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(323.0), height: getRelativeHeight(42.0),
                               alignment: .leading)
                        .padding(.leading, getRelativeWidth(5.0))
                        .padding(.trailing, getRelativeWidth(10.0))
                }
                .frame(width: getRelativeWidth(347.0), alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(16.0))
                .padding(.bottom, getRelativeHeight(13.0))
                .padding(.leading, getRelativeWidth(28.0))
                .padding(.trailing, getRelativeWidth(15.0))
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: PlantripTwoView(),
                                   tag: "PlantripTwoView",
                                   selection: $plantripOneViewModel.nextScreen,
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

struct PlantripOneView_Previews: PreviewProvider {
    static var previews: some View {
        PlantripOneView()
    }
}
