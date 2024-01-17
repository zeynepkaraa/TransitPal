import SwiftUI

struct SignUpView: View {
    @StateObject var signUpViewModel = SignUpViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    VStack(alignment: .leading, spacing: 0) {
                        Group {
                            Text(StringConstants.kMsgLetSGetStart)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(20.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(169.0),
                                       height: getRelativeHeight(30.0), alignment: .topLeading)
                                .padding(.trailing)
                            Text(StringConstants.kLblName)
                                .font(FontScheme.kInterRegular(size: getRelativeHeight(15.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Gray600)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(50.0),
                                       height: getRelativeHeight(18.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(37.0))
                                .padding(.trailing, getRelativeWidth(10.0))
                            Text(StringConstants.kLblDoeJohn)
                                .font(FontScheme.kInterRegular(size: getRelativeHeight(15.0)))
                                .fontWeight(.regular)
                                .padding(.leading, getRelativeWidth(5.0))
                                .padding(.vertical, getRelativeHeight(12.0))
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(328.0),
                                       height: getRelativeHeight(48.0), alignment: .topLeading)
                                .overlay(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                        bottomLeft: 7.0,
                                                        bottomRight: 7.0)
                                        .stroke(ColorConstants.Bluegray100,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                           bottomLeft: 7.0, bottomRight: 7.0)
                                        .fill(Color.clear.opacity(0.7)))
                                .padding(.top, getRelativeHeight(4.0))
                            VStack(alignment: .leading, spacing: 0) {
                                Text(StringConstants.kLblPhoneNo)
                                    .font(FontScheme.kInterRegular(size: getRelativeHeight(15.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Gray600)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(78.0),
                                           height: getRelativeHeight(18.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(4.0))
                                    .padding(.trailing, getRelativeWidth(4.0))
                                HStack {
                                    HStack {
                                        TextField(StringConstants.kLbl647,
                                                  text: $signUpViewModel.groupnineteenText)
                                            .font(FontScheme
                                                .kInterRegular(size: getRelativeHeight(15.0)))
                                            .foregroundColor(ColorConstants.Black900)
                                            .padding()
                                    }
                                    .frame(width: getRelativeWidth(70.0),
                                           height: getRelativeHeight(48.0), alignment: .center)
                                    .overlay(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                            bottomLeft: 7.0, bottomRight: 7.0)
                                            .stroke(ColorConstants.Bluegray100,
                                                    lineWidth: 1))
                                    .background(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                               bottomLeft: 7.0, bottomRight: 7.0)
                                            .fill(Color.clear.opacity(0.7)))
                                    Spacer()
                                    HStack {
                                        TextField(StringConstants.kLbl4874657,
                                                  text: $signUpViewModel.groupeighteenoneText)
                                            .font(FontScheme
                                                .kInterRegular(size: getRelativeHeight(15.0)))
                                            .foregroundColor(ColorConstants.Black900)
                                            .padding()
                                    }
                                    .frame(width: getRelativeWidth(246.0),
                                           height: getRelativeHeight(48.0), alignment: .center)
                                    .overlay(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                            bottomLeft: 7.0, bottomRight: 7.0)
                                            .stroke(ColorConstants.Bluegray100,
                                                    lineWidth: 1))
                                    .background(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                               bottomLeft: 7.0, bottomRight: 7.0)
                                            .fill(Color.clear.opacity(0.7)))
                                }
                                .frame(width: getRelativeWidth(328.0),
                                       height: getRelativeHeight(48.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(4.0))
                            }
                            .frame(width: getRelativeWidth(328.0), height: getRelativeHeight(71.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(12.0))
                            Text(StringConstants.kLblEmail2)
                                .font(FontScheme.kInterRegular(size: getRelativeHeight(15.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Gray600)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(44.0),
                                       height: getRelativeHeight(17.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(12.0))
                                .padding(.leading, getRelativeWidth(5.0))
                                .padding(.trailing, getRelativeWidth(10.0))
                            Group {
                                HStack {
                                    TextField(StringConstants.kMsgDoejohnGmailC,
                                              text: $signUpViewModel.emailoneText)
                                        .font(FontScheme
                                            .kInterRegular(size: getRelativeHeight(15.0)))
                                        .foregroundColor(ColorConstants.Black900)
                                        .padding()
                                        .keyboardType(.emailAddress)
                                }
                                .onChange(of: signUpViewModel.emailoneText) { newValue in

                                    signUpViewModel.isValidEmailoneText = newValue
                                        .isValidEmail(isMandatory: true)
                                }
                                .frame(width: getRelativeWidth(328.0),
                                       height: getRelativeHeight(48.0), alignment: .center)
                                .overlay(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                        bottomLeft: 7.0,
                                                        bottomRight: 7.0)
                                        .stroke(ColorConstants.Bluegray100,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                           bottomLeft: 7.0, bottomRight: 7.0)
                                        .fill(Color.clear.opacity(0.7)))
                                .padding(.top, getRelativeHeight(5.0))
                                if !signUpViewModel.isValidEmailoneText {
                                    Text("Please enter valid email.")
                                        .foregroundColor(Color.red)
                                        .font(FontScheme
                                            .kInterRegular(size: getRelativeHeight(15.0)))
                                        .frame(width: getRelativeWidth(328.0),
                                               height: getRelativeHeight(48.0), alignment: .center)
                                }
                            }
                            HStack {
                                VStack(alignment: .leading, spacing: 0) {
                                    Text(StringConstants.kLblDateOfBirth)
                                        .font(FontScheme
                                            .kInterRegular(size: getRelativeHeight(15.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Gray600)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(97.0),
                                               height: getRelativeHeight(17.0),
                                               alignment: .topLeading)
                                        .padding(.leading, getRelativeWidth(4.0))
                                        .padding(.trailing, getRelativeWidth(4.0))
                                    ZStack(alignment: .leading) {
                                        CalendarModuleView(firstDate: $signUpViewModel.bxStartDate,
                                                           lastDate: $signUpViewModel.bxEndDate) {
                                            Image("img_vector_black_900")
                                                .resizable()
                                                .frame(width: getRelativeWidth(10.0),
                                                       height: getRelativeHeight(6.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                                .padding(.top, getRelativeHeight(9.0))
                                                .padding(.horizontal, getRelativeWidth(4.0))
                                            Image("img_vector_black_900_20x18")
                                                .resizable()
                                                .frame(width: getRelativeWidth(18.0),
                                                       height: getRelativeHeight(20.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                        }
                                        .frame(width: getRelativeWidth(18.0),
                                               height: getRelativeHeight(20.0),
                                               alignment: .trailing)
                                        .padding(.leading, getRelativeWidth(127.0))
                                        .padding(.trailing, getRelativeWidth(10.0))
                                        HStack {
                                            TextField(StringConstants.kLbl121291,
                                                      text: $signUpViewModel.groupfortyeightText)
                                                .font(FontScheme
                                                    .kInterRegular(size: getRelativeHeight(15.0)))
                                                .foregroundColor(ColorConstants.Black900)
                                                .padding()
                                        }
                                        .frame(width: getRelativeWidth(155.0),
                                               height: getRelativeHeight(48.0), alignment: .leading)
                                        .overlay(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                                bottomLeft: 7.0, bottomRight: 7.0)
                                                .stroke(ColorConstants.Bluegray100,
                                                        lineWidth: 1))
                                        .background(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                                   bottomLeft: 7.0,
                                                                   bottomRight: 7.0)
                                                .fill(Color.clear.opacity(0.7)))
                                    }
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(155.0),
                                           height: getRelativeHeight(48.0), alignment: .leading)
                                    .padding(.top, getRelativeHeight(5.0))
                                }
                                .frame(width: getRelativeWidth(155.0),
                                       height: getRelativeHeight(71.0), alignment: .center)
                                Spacer()
                                VStack(alignment: .leading, spacing: 0) {
                                    Text(StringConstants.kLblGender2)
                                        .font(FontScheme
                                            .kInterRegular(size: getRelativeHeight(15.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Gray600)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(60.0),
                                               height: getRelativeHeight(18.0),
                                               alignment: .topLeading)
                                        .padding(.leading, getRelativeWidth(4.0))
                                        .padding(.trailing, getRelativeWidth(4.0))
                                    Picker(StringConstants.kLblMale,
                                           selection: $signUpViewModel.genderOnePicker1) {
                                        ForEach(signUpViewModel.genderOnePicker1Values,
                                                id: \.self) { value in
                                            Text(value)
                                        }
                                    }
                                    .foregroundColor(ColorConstants.Black900)
                                    .font(.system(size: getRelativeHeight(15)))
                                    .pickerStyle(MenuPickerStyle())
                                }
                                .frame(width: getRelativeWidth(155.0),
                                       height: getRelativeHeight(71.0), alignment: .center)
                            }
                            .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(71.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(12.0))
                            .padding(.horizontal, getRelativeWidth(1.0))
                            Text(StringConstants.kLblUsername)
                                .font(FontScheme.kInterRegular(size: getRelativeHeight(15.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Gray600)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(79.0),
                                       height: getRelativeHeight(18.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(22.0))
                                .padding(.trailing, getRelativeWidth(10.0))
                        }
                        Group {
                            HStack {
                                TextField(StringConstants.kLblDjohn03,
                                          text: $signUpViewModel.groupfortysevenText)
                                    .font(FontScheme.kInterRegular(size: getRelativeHeight(15.0)))
                                    .foregroundColor(ColorConstants.Black900)
                                    .padding()
                            }
                            .frame(width: getRelativeWidth(328.0), height: getRelativeHeight(48.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                                    bottomRight: 7.0)
                                    .stroke(ColorConstants.Bluegray100,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 7.0, topRight: 7.0, bottomLeft: 7.0,
                                                       bottomRight: 7.0)
                                    .fill(Color.clear.opacity(0.7)))
                            .padding(.top, getRelativeHeight(4.0))
                            Text(StringConstants.kLblPassword2)
                                .font(FontScheme.kInterRegular(size: getRelativeHeight(15.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Gray600)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(76.0),
                                       height: getRelativeHeight(19.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(13.0))
                                .padding(.leading, getRelativeWidth(5.0))
                                .padding(.trailing, getRelativeWidth(10.0))
                            ZStack(alignment: .leading) {
                                ZStack {
                                    Image("img_group_bluegray_900_19x22")
                                        .resizable()
                                        .frame(width: getRelativeWidth(22.0),
                                               height: getRelativeHeight(19.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.leading, getRelativeWidth(290.0))
                                        .padding(.trailing, getRelativeWidth(16.0))
                                }
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(328.0),
                                       height: getRelativeHeight(48.0), alignment: .leading)
                                .overlay(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                        bottomLeft: 7.0,
                                                        bottomRight: 7.0)
                                        .stroke(ColorConstants.Bluegray100,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                           bottomLeft: 7.0, bottomRight: 7.0)
                                        .fill(Color.clear.opacity(0.7)))
                                Text(StringConstants.kLbl2)
                                    .font(FontScheme
                                        .kPoppinsSemiBold(size: getRelativeHeight(32.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(109.0),
                                           height: getRelativeHeight(48.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(14.0))
                                    .padding(.trailing, getRelativeWidth(205.0))
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(328.0), height: getRelativeHeight(48.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(4.0))
                            HStack {
                                Button(action: {}, label: {
                                    Image("img_vector_bluegray_600")
                                })
                                .frame(width: getRelativeWidth(17.0),
                                       height: getRelativeWidth(17.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 8.5, topRight: 8.5,
                                                           bottomLeft: 8.5, bottomRight: 8.5)
                                        .fill(ColorConstants.Bluegray600))
                                Text(StringConstants.kMsgIAcceptTheTe)
                                    .font(FontScheme.kPoppinsLight(size: getRelativeHeight(15.0)))
                                    .fontWeight(.light)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(233.0),
                                           height: getRelativeHeight(23.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(4.0))
                            }
                            .frame(width: getRelativeWidth(254.0), height: getRelativeHeight(23.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(29.0))
                            .padding(.horizontal, getRelativeWidth(9.0))
                            Button(action: {
                                signUpViewModel.nextScreen = "VerifyGovernmentIDView"
                            }, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kLblSubmit)
                                        .font(FontScheme
                                            .kPoppinsMedium(size: getRelativeHeight(20.0)))
                                        .fontWeight(.medium)
                                        .padding(.horizontal, getRelativeWidth(30.0))
                                        .padding(.vertical, getRelativeHeight(13.0))
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: getRelativeWidth(295.0),
                                               height: getRelativeHeight(56.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                                   bottomLeft: 25.0,
                                                                   bottomRight: 25.0)
                                                .fill(ColorConstants.Bluegray600))
                                        .padding(.top, getRelativeHeight(32.0))
                                        .padding(.leading, getRelativeWidth(21.0))
                                        .padding(.trailing, getRelativeWidth(14.0))
                                }
                            })
                            .frame(width: getRelativeWidth(295.0), height: getRelativeHeight(56.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 25.0, topRight: 25.0,
                                                       bottomLeft: 25.0, bottomRight: 25.0)
                                    .fill(ColorConstants.Bluegray600))
                            .padding(.top, getRelativeHeight(32.0))
                            .padding(.leading, getRelativeWidth(21.0))
                            .padding(.trailing, getRelativeWidth(14.0))
                            Text(StringConstants.kMsgAlreadyHaveAn)
                                .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(15.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(259.0),
                                       height: getRelativeHeight(23.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(28.0))
                                .padding(.horizontal, getRelativeWidth(21.0))
                        }
                    }
                    .frame(width: getRelativeWidth(330.0), height: getRelativeHeight(758.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(15.68))
                    .padding(.horizontal, getRelativeWidth(29.0))
                }
                .hideNavigationBar()
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: VerifyGovernmentIDView(),
                                   tag: "VerifyGovernmentIDView",
                                   selection: $signUpViewModel.nextScreen,
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

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
