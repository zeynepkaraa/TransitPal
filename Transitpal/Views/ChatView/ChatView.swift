import SwiftUI

struct ChatView: View {
    @StateObject var chatViewModel = ChatViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    HStack {
                        HStack {
                            Image("img_image3")
                                .resizable()
                                .frame(width: getRelativeWidth(48.0),
                                       height: getRelativeWidth(48.0), alignment: .center)
                                .scaledToFit()
                                .clipShape(Circle())
                                .clipShape(Circle())
                                .padding(.bottom, getRelativeHeight(22.0))
                                .padding(.leading, getRelativeWidth(28.0))
                            Text(StringConstants.kLblSherry)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(36.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(124.0),
                                       height: getRelativeHeight(54.0), alignment: .topLeading)
                                .padding(.vertical, getRelativeHeight(1.0))
                                .padding(.leading, getRelativeWidth(11.0))
                        }
                        .frame(width: UIScreen.main.bounds.width - 20,
                               height: getRelativeHeight(70.0), alignment: .leading)
                        .background(ColorConstants.Bluegray600)
                    }
                    .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(70.0),
                           alignment: .leading)
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(70.0),
                       alignment: .leading)
                VStack {
                    Text(StringConstants.kLbl18Feb1545pm)
                        .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(11.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.Gray500)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(80.0), height: getRelativeHeight(17.0),
                               alignment: .topLeading)
                        .padding(.horizontal, getRelativeWidth(154.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(17.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(24.0))
                VStack(alignment: .trailing, spacing: 0) {
                    Text(StringConstants.kMsgHeySherryNic)
                        .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(15.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.WhiteA700)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(266.0), height: getRelativeHeight(43.0),
                               alignment: .topLeading)
                        .background(ColorConstants.Bluegray600)
                        .padding(.leading)
                        .padding(.leading)
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(43.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(16.0))
                VStack(alignment: .leading, spacing: 0) {
                    HStack {
                        Text(StringConstants.kMsgHiDoeYouAsw)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(15.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(137.0), height: getRelativeHeight(23.0),
                                   alignment: .topLeading)
                            .padding(.vertical, getRelativeHeight(12.0))
                            .padding(.leading, getRelativeWidth(18.0))
                        Image("img_emojismili")
                            .resizable()
                            .frame(width: getRelativeWidth(19.0), height: getRelativeWidth(19.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.top, getRelativeHeight(13.0))
                            .padding(.bottom, getRelativeHeight(11.0))
                            .padding(.leading, getRelativeWidth(5.0))
                    }
                    .frame(width: getRelativeWidth(211.0), height: getRelativeHeight(43.0),
                           alignment: .leading)
                    .background(RoundedCorners(topLeft: 21.5, topRight: 21.5, bottomLeft: 21.5,
                                               bottomRight: 21.5)
                            .fill(ColorConstants.Gray301))
                    .padding(.horizontal, getRelativeWidth(24.0))
                    HStack {
                        TextField(StringConstants.kMsgWhereShouldI,
                                  text: $chatViewModel.groupfiveText)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(15.0)))
                            .foregroundColor(ColorConstants.Black900)
                            .padding()
                    }
                    .frame(width: getRelativeWidth(242.0), height: getRelativeHeight(43.0),
                           alignment: .leading)
                    .background(RoundedCorners(topLeft: 21.5, topRight: 21.5, bottomLeft: 21.5,
                                               bottomRight: 21.5)
                            .fill(ColorConstants.Gray301))
                    .padding(.top, getRelativeHeight(9.0))
                    .padding(.horizontal, getRelativeWidth(24.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(95.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(16.0))
                VStack {
                    Text(StringConstants.kLbl1547pm)
                        .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(11.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.Gray500)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(44.0), height: getRelativeHeight(17.0),
                               alignment: .topLeading)
                        .padding(.horizontal, getRelativeWidth(172.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(17.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(16.0))
                VStack(alignment: .trailing, spacing: 0) {
                    Button(action: {}, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kMsgWeCanMeetAt)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(15.0)))
                                .fontWeight(.regular)
                                .padding(.trailing, getRelativeWidth(15.0))
                                .padding(.leading, getRelativeWidth(21.0))
                                .padding(.vertical, getRelativeHeight(10.0))
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(288.0),
                                       height: getRelativeHeight(43.0), alignment: .topLeading)
                                .background(RoundedCorners(topLeft: 21.5, topRight: 21.5,
                                                           bottomLeft: 21.5, bottomRight: 21.5)
                                        .fill(ColorConstants.Bluegray600))
                                .padding(.horizontal, getRelativeWidth(26.0))
                        }
                    })
                    .frame(width: getRelativeWidth(288.0), height: getRelativeHeight(43.0),
                           alignment: .topLeading)
                    .background(RoundedCorners(topLeft: 21.5, topRight: 21.5, bottomLeft: 21.5,
                                               bottomRight: 21.5)
                            .fill(ColorConstants.Bluegray600))
                    .padding(.horizontal, getRelativeWidth(26.0))
                    Image("img_image13")
                        .resizable()
                        .frame(width: getRelativeWidth(213.0), height: getRelativeHeight(173.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                                   bottomRight: 25.0))
                        .padding(.top, getRelativeHeight(13.0))
                        .padding(.horizontal, getRelativeWidth(23.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(229.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(14.0))
                VStack(alignment: .leading, spacing: 0) {
                    Button(action: {}, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kMsgOkiePerfect)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(15.0)))
                                .fontWeight(.regular)
                                .padding(.trailing, getRelativeWidth(25.0))
                                .padding(.leading, getRelativeWidth(18.0))
                                .padding(.vertical, getRelativeHeight(10.0))
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(242.0),
                                       height: getRelativeHeight(43.0), alignment: .topLeading)
                                .background(RoundedCorners(topLeft: 21.5, topRight: 21.5,
                                                           bottomLeft: 21.5, bottomRight: 21.5)
                                        .fill(ColorConstants.Gray301))
                                .padding(.horizontal, getRelativeWidth(24.0))
                        }
                    })
                    .frame(width: getRelativeWidth(242.0), height: getRelativeHeight(43.0),
                           alignment: .topLeading)
                    .background(RoundedCorners(topLeft: 21.5, topRight: 21.5, bottomLeft: 21.5,
                                               bottomRight: 21.5)
                            .fill(ColorConstants.Gray301))
                    .padding(.horizontal, getRelativeWidth(24.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(43.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(10.0))
                VStack(alignment: .trailing, spacing: 0) {
                    Button(action: {}, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblYep)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(15.0)))
                                .fontWeight(.regular)
                                .padding(.trailing, getRelativeWidth(15.0))
                                .padding(.leading, getRelativeWidth(20.0))
                                .padding(.vertical, getRelativeHeight(10.0))
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(69.0),
                                       height: getRelativeHeight(43.0), alignment: .topLeading)
                                .background(RoundedCorners(topLeft: 21.5, topRight: 21.5,
                                                           bottomLeft: 21.5, bottomRight: 21.5)
                                        .fill(ColorConstants.Bluegray600))
                                .padding(.horizontal, getRelativeWidth(26.0))
                        }
                    })
                    .frame(width: getRelativeWidth(69.0), height: getRelativeHeight(43.0),
                           alignment: .topLeading)
                    .background(RoundedCorners(topLeft: 21.5, topRight: 21.5, bottomLeft: 21.5,
                                               bottomRight: 21.5)
                            .fill(ColorConstants.Bluegray600))
                    .padding(.horizontal, getRelativeWidth(26.0))
                    Text(StringConstants.kLblSeen)
                        .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(11.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.Gray500)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(27.0), height: getRelativeHeight(17.0),
                               alignment: .center)
                        .padding(.horizontal, getRelativeWidth(34.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(62.0),
                       alignment: .leading)
                VStack {
                    HStack {
                        HStack {
                            ZStack {}
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(37.0),
                                       height: getRelativeWidth(37.0), alignment: .center)
                                .overlay(RoundedCorners(topLeft: 18.65, topRight: 18.65,
                                                        bottomLeft: 18.65, bottomRight: 18.65)
                                        .stroke(ColorConstants.Bluegray400,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 18.65, topRight: 18.65,
                                                           bottomLeft: 18.65, bottomRight: 18.65)
                                        .fill(Color.clear.opacity(0.7)))
                            Text(StringConstants.kLblMessage)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(16.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Bluegray401)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(72.0),
                                       height: getRelativeHeight(24.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(16.0))
                        }
                        .frame(width: getRelativeWidth(126.0), height: getRelativeHeight(37.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(9.0))
                        .padding(.bottom, getRelativeHeight(8.0))
                        .padding(.leading, getRelativeWidth(9.0))
                        Spacer()
                        Image("img_group_bluegray_401")
                            .resizable()
                            .frame(width: getRelativeWidth(21.0), height: getRelativeWidth(21.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.vertical, getRelativeHeight(19.0))
                            .padding(.trailing, getRelativeWidth(19.0))
                    }
                    .frame(width: getRelativeWidth(351.0), height: getRelativeHeight(55.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 23.0, topRight: 23.0, bottomLeft: 23.0,
                                               bottomRight: 23.0)
                            .fill(ColorConstants.Gray200))
                    .padding(.horizontal, getRelativeWidth(19.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(55.0),
                       alignment: .leading)
                .padding(.vertical, getRelativeHeight(21.0))
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

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
