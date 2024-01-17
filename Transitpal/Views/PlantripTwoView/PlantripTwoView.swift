import SwiftUI

struct PlantripTwoView: View {
    @StateObject var plantripTwoViewModel = PlantripTwoViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kLblTimeSlot)
                            .font(FontScheme.kInterRegular(size: getRelativeHeight(15.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Gray600)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(67.0), height: getRelativeHeight(17.0),
                                   alignment: .topLeading)
                            .padding(.horizontal, getRelativeWidth(31.0))
                        HStack {
                            TextField(StringConstants.kLbl1217PM,
                                      text: $plantripTwoViewModel.pmcounterText)
                                .font(FontScheme.kInterRegular(size: getRelativeHeight(15.0)))
                                .foregroundColor(ColorConstants.Black900)
                                .padding()
                            Image("img_group_bluegray_900_25x25")
                                .resizable()
                                .frame(width: getRelativeWidth(25.0),
                                       height: getRelativeWidth(25.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.top, getRelativeHeight(11.0))
                                .padding(.bottom, getRelativeHeight(12.0))
                                .padding(.leading, getRelativeWidth(30.0))
                                .padding(.trailing, getRelativeWidth(12.0))
                            Spacer()
                        }
                        .frame(width: getRelativeWidth(155.0), height: getRelativeHeight(48.0),
                               alignment: .leading)
                        .background(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                                   bottomRight: 7.0)
                                .fill(ColorConstants.Gray300))
                        .padding(.top, getRelativeHeight(5.0))
                        .padding(.horizontal, getRelativeWidth(30.0))
                        Text(StringConstants.kLblStation)
                            .font(FontScheme.kInterRegular(size: getRelativeHeight(15.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Gray600)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(50.0), height: getRelativeHeight(17.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(25.0))
                            .padding(.horizontal, getRelativeWidth(33.0))
                        HStack {
                            TextField(StringConstants.kLblUnion,
                                      text: $plantripTwoViewModel.groupfiftyfiveText)
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
                        .padding(.horizontal, getRelativeWidth(30.0))
                        Text(StringConstants.kLblDirection)
                            .font(FontScheme.kInterRegular(size: getRelativeHeight(15.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Gray600)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(63.0), height: getRelativeHeight(17.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(26.0))
                            .padding(.horizontal, getRelativeWidth(34.0))
                        Picker(StringConstants.kLblSouth,
                               selection: $plantripTwoViewModel.groupeighteenPicker1) {
                            ForEach(plantripTwoViewModel.groupeighteenPicker1Values,
                                    id: \.self) { value in
                                Text(value)
                            }
                        }
                        .foregroundColor(ColorConstants.Black900)
                        .font(.system(size: getRelativeHeight(15)))
                        .pickerStyle(MenuPickerStyle())
                        ZStack(alignment: .center) {
                            VStack {
                                ZStack(alignment: .topLeading) {
                                    VStack(alignment: .leading, spacing: 0) {
                                        Text(StringConstants.kLblGender)
                                            .font(FontScheme
                                                .kPoppinsMedium(size: getRelativeHeight(15.0)))
                                            .fontWeight(.medium)
                                            .foregroundColor(ColorConstants.Black900)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(56.0),
                                                   height: getRelativeHeight(23.0),
                                                   alignment: .topLeading)
                                            .padding(.trailing)
                                        VStack {
                                            Text(StringConstants.kLblWoman)
                                                .font(FontScheme
                                                    .kPoppinsRegular(size: getRelativeHeight(12.0)))
                                                .fontWeight(.regular)
                                                .foregroundColor(ColorConstants.Black900)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(48.0),
                                                       height: getRelativeHeight(18.0),
                                                       alignment: .topLeading)
                                                .padding(.top, getRelativeHeight(7.0))
                                                .padding(.bottom, getRelativeHeight(6.0))
                                                .padding(.horizontal, getRelativeWidth(12.0))
                                        }
                                        .frame(width: getRelativeWidth(136.0),
                                               height: getRelativeHeight(32.0), alignment: .leading)
                                        .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                                bottomLeft: 10.0, bottomRight: 10.0)
                                                .stroke(ColorConstants.Bluegray600,
                                                        lineWidth: 1))
                                        .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                                   bottomLeft: 10.0,
                                                                   bottomRight: 10.0)
                                                .fill(Color.clear.opacity(0.7)))
                                        .padding(.top, getRelativeHeight(7.0))
                                    }
                                    .frame(width: getRelativeWidth(136.0),
                                           height: getRelativeHeight(62.0),
                                           alignment: .bottomLeading)
                                    .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                               bottomLeft: 10.0, bottomRight: 10.0))
                                    .padding(.top, getRelativeHeight(144.7))
                                    .padding(.trailing, getRelativeWidth(135.0))
                                    VStack {
                                        Text(StringConstants.kLblAgeRange)
                                            .font(FontScheme
                                                .kPoppinsMedium(size: getRelativeHeight(15.0)))
                                            .fontWeight(.medium)
                                            .foregroundColor(ColorConstants.Black900)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(83.0),
                                                   height: getRelativeHeight(23.0),
                                                   alignment: .topLeading)
                                            .padding(.trailing, getRelativeWidth(10.0))
                                        ZStack(alignment: .leading) {
                                            HStack {
                                                Text(StringConstants.kLbl15)
                                                    .font(FontScheme
                                                        .kPoppinsLight(size: getRelativeHeight(13.0)))
                                                    .fontWeight(.light)
                                                    .foregroundColor(ColorConstants.Black900)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: getRelativeWidth(12.0),
                                                           height: getRelativeHeight(20.0),
                                                           alignment: .topLeading)
                                                ZStack(alignment: .topLeading) {
                                                    Text(StringConstants.kLbl55)
                                                        .font(FontScheme
                                                            .kPoppinsLight(size: getRelativeHeight(13.0)))
                                                        .fontWeight(.light)
                                                        .foregroundColor(ColorConstants.Black900)
                                                        .minimumScaleFactor(0.5)
                                                        .multilineTextAlignment(.leading)
                                                        .frame(width: getRelativeWidth(17.0),
                                                               height: getRelativeHeight(20.0),
                                                               alignment: .topLeading)
                                                        .padding(.leading, getRelativeWidth(4.0))
                                                        .padding(.trailing, getRelativeWidth(34.0))
                                                    ZStack {}
                                                        .hideNavigationBar()
                                                        .frame(width: getRelativeWidth(55.0),
                                                               height: getRelativeHeight(19.0),
                                                               alignment: .topLeading)
                                                        .overlay(RoundedCorners()
                                                            .stroke(ColorConstants.Gray302,
                                                                    lineWidth: 1))
                                                        .background(RoundedCorners()
                                                            .fill(Color.clear.opacity(0.7)))
                                                        .shadow(color: ColorConstants.Black9003f,
                                                                radius: 4, x: 0, y: 4)
                                                }
                                                .hideNavigationBar()
                                                .frame(width: getRelativeWidth(55.0),
                                                       height: getRelativeHeight(20.0),
                                                       alignment: .top)
                                                .padding(.leading, getRelativeWidth(186.0))
                                            }
                                            .frame(width: getRelativeWidth(253.0),
                                                   height: getRelativeHeight(21.0),
                                                   alignment: .center)
                                            .padding(.bottom, getRelativeHeight(86.0))
                                            .padding(.leading, getRelativeWidth(10.0))
                                            Image("img_slider")
                                                .resizable()
                                                .frame(width: getRelativeWidth(265.0),
                                                       height: getRelativeHeight(140.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                        }
                                        .hideNavigationBar()
                                        .frame(width: getRelativeWidth(265.0),
                                               height: getRelativeHeight(140.0), alignment: .center)
                                        .padding(.top, getRelativeHeight(30.0))
                                        .padding(.leading, getRelativeWidth(7.0))
                                    }
                                    .frame(width: getRelativeWidth(272.0),
                                           height: getRelativeHeight(194.0), alignment: .topLeading)
                                    .padding(.bottom, getRelativeHeight(13.0))
                                }
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(272.0),
                                       height: getRelativeHeight(207.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(87.0))
                                .padding(.horizontal, getRelativeWidth(26.0))
                                VStack(alignment: .leading, spacing: 0) {
                                    Text(StringConstants.kLblOrganization)
                                        .font(FontScheme
                                            .kPoppinsMedium(size: getRelativeHeight(15.0)))
                                        .fontWeight(.medium)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(98.0),
                                               height: getRelativeHeight(23.0),
                                               alignment: .topLeading)
                                        .padding(.horizontal, getRelativeWidth(28.0))
                                    HStack {
                                        TextField(StringConstants.kMsgTorontoMetropo,
                                                  text: $plantripTwoViewModel.organizationoneText)
                                            .font(FontScheme
                                                .kPoppinsRegular(size: getRelativeHeight(12.0)))
                                            .foregroundColor(ColorConstants.Black900)
                                            .padding()
                                    }
                                    .frame(width: getRelativeWidth(339.0),
                                           height: getRelativeHeight(32.0), alignment: .trailing)
                                    .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                            bottomLeft: 10.0, bottomRight: 10.0)
                                            .stroke(ColorConstants.Bluegray600,
                                                    lineWidth: 1))
                                    .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                               bottomLeft: 10.0, bottomRight: 10.0)
                                            .fill(Color.clear.opacity(0.7)))
                                    .padding(.top, getRelativeHeight(8.0))
                                    .padding(.leading, getRelativeWidth(10.0))
                                }
                                .frame(width: getRelativeWidth(366.0),
                                       height: getRelativeHeight(63.0), alignment: .leading)
                                .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                           bottomLeft: 10.0, bottomRight: 10.0))
                                .padding(.vertical, getRelativeHeight(30.0))
                                .padding(.trailing, getRelativeWidth(10.0))
                            }
                            .frame(width: getRelativeWidth(387.0), height: getRelativeHeight(559.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 25.0, topRight: 25.0)
                                .stroke(ColorConstants.Bluegray600, lineWidth: 1))
                            .background(RoundedCorners(topLeft: 25.0, topRight: 25.0)
                                .fill(ColorConstants.WhiteA700))
                            VStack {
                                HStack {
                                    Text(StringConstants.kLblX)
                                        .font(FontScheme
                                            .kPoppinsLight(size: getRelativeHeight(16.0)))
                                        .fontWeight(.light)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(8.0),
                                               height: getRelativeHeight(24.0),
                                               alignment: .topLeading)
                                    Spacer()
                                    Text(StringConstants.kLblFilters)
                                        .font(FontScheme
                                            .kPoppinsMedium(size: getRelativeHeight(15.0)))
                                        .fontWeight(.medium)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(45.0),
                                               height: getRelativeHeight(23.0),
                                               alignment: .topLeading)
                                        .padding(.leading, getRelativeWidth(145.0))
                                }
                                .frame(width: getRelativeWidth(198.0),
                                       height: getRelativeHeight(24.0), alignment: .leading)
                                .padding(.horizontal, getRelativeWidth(19.0))
                                Divider()
                                    .frame(width: getRelativeWidth(386.0),
                                           height: getRelativeHeight(1.0), alignment: .leading)
                                    .background(ColorConstants.Bluegray101)
                                    .padding(.top, getRelativeHeight(12.0))
                            }
                            .frame(width: getRelativeWidth(386.0), height: getRelativeHeight(36.0),
                                   alignment: .center)
                            .padding(.bottom, getRelativeHeight(507.37))
                            .padding(.leading, getRelativeWidth(4.0))
                        }
                        .hideNavigationBar()
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(559.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(25.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height,
                           alignment: .topLeading)
                    .background(ColorConstants.WhiteA700)
                }
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height,
                       alignment: .topLeading)
                VStack {
                    Text("tabbar")
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(323.0), height: getRelativeHeight(42.0),
                               alignment: .center)
                        .padding(.horizontal, getRelativeWidth(33.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(42.0),
                       alignment: .leading)
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

struct PlantripTwoView_Previews: PreviewProvider {
    static var previews: some View {
        PlantripTwoView()
    }
}
