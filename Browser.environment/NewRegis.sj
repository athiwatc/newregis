@STATIC;1.0;p;6;main.jt;267;@STATIC;1.0;I;23;Foundation/Foundation.jI;15;AppKit/AppKit.ji;15;AppController.jt;181;
objj_executeFile("Foundation/Foundation.j",NO);
objj_executeFile("AppKit/AppKit.j",NO);
objj_executeFile("AppController.j",YES);
main=function(_1,_2){
CPApplicationMain(_1,_2);
};
p;15;AppController.jt;3912;@STATIC;1.0;I;21;Foundation/CPObject.jt;3867;
objj_executeFile("Foundation/CPObject.j",NO);
var _1=objj_allocateClassPair(CPObject,"AppController"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("theWindow"),new objj_ivar("header"),new objj_ivar("g1"),new objj_ivar("g2"),new objj_ivar("g3"),new objj_ivar("g4"),new objj_ivar("g5"),new objj_ivar("g6"),new objj_ivar("g7"),new objj_ivar("g8"),new objj_ivar("g9"),new objj_ivar("g10"),new objj_ivar("g11"),new objj_ivar("t1"),new objj_ivar("t2"),new objj_ivar("t3"),new objj_ivar("mainView"),new objj_ivar("signInView"),new objj_ivar("personalView"),new objj_ivar("username"),new objj_ivar("password"),new objj_ivar("welcome"),new objj_ivar("incorrectPassword"),new objj_ivar("forgotPasswordPopover"),new objj_ivar("loginButton"),new objj_ivar("zUser"),new objj_ivar("zPass")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("applicationDidFinishLaunching:"),function(_3,_4,_5){
with(_3){
objj_msgSend(mainView,"addSubview:",signInView);
objj_msgSend(header,"setBackgroundColor:",objj_msgSend(CPColor,"colorWithHexString:","F5F5F5"));
objj_msgSend(g1,"setBackgroundColor:",objj_msgSend(CPColor,"colorWithHexString:","F5F5F5"));
objj_msgSend(g2,"setBackgroundColor:",objj_msgSend(CPColor,"colorWithHexString:","F5F5F5"));
objj_msgSend(g3,"setBackgroundColor:",objj_msgSend(CPColor,"colorWithHexString:","F5F5F5"));
objj_msgSend(g5,"setBackgroundColor:",objj_msgSend(CPColor,"colorWithHexString:","F5F5F5"));
objj_msgSend(g6,"setBackgroundColor:",objj_msgSend(CPColor,"colorWithHexString:","F5F5F5"));
objj_msgSend(g7,"setBackgroundColor:",objj_msgSend(CPColor,"colorWithHexString:","F5F5F5"));
objj_msgSend(g8,"setBackgroundColor:",objj_msgSend(CPColor,"colorWithHexString:","F5F5F5"));
objj_msgSend(g9,"setBackgroundColor:",objj_msgSend(CPColor,"colorWithHexString:","F5F5F5"));
objj_msgSend(g10,"setBackgroundColor:",objj_msgSend(CPColor,"colorWithHexString:","F5F5F5"));
objj_msgSend(g11,"setBackgroundColor:",objj_msgSend(CPColor,"colorWithHexString:","F5F5F5"));
objj_msgSend(g4,"setBackgroundColor:",objj_msgSend(CPColor,"colorWithHexString:","F5F5F5"));
objj_msgSend(t1,"setBackgroundColor:",objj_msgSend(CPColor,"colorWithHexString:","FBFBFB"));
objj_msgSend(t2,"setBackgroundColor:",objj_msgSend(CPColor,"colorWithHexString:","FBFBFB"));
objj_msgSend(t3,"setBackgroundColor:",objj_msgSend(CPColor,"colorWithHexString:","FBFBFB"));
}
}),new objj_method(sel_getUid("awakeFromCib"),function(_6,_7){
with(_6){
objj_msgSend(theWindow,"setFullPlatformWindow:",YES);
}
}),new objj_method(sel_getUid("signInButton:"),function(_8,_9,_a){
with(_8){
objj_msgSend(_8,"signin");
}
}),new objj_method(sel_getUid("signOutButton:"),function(_b,_c,_d){
with(_b){
objj_msgSend(_b,"signout");
}
}),new objj_method(sel_getUid("forgotPasswordButton:"),function(_e,_f,_10){
with(_e){
objj_msgSend(forgotPasswordPopover,"showRelativeToRect:ofView:preferredEdge:",nil,_10,CPMaxXEdge);
}
}),new objj_method(sel_getUid("recoverPasswordButton:"),function(_11,_12,_13){
with(_11){
objj_msgSend(forgotPasswordPopover,"close");
}
}),new objj_method(sel_getUid("signin"),function(_14,_15){
with(_14){
zUser=objj_msgSend(username,"stringValue");
zPass=objj_msgSend(password,"stringValue");
objj_msgSend(username,"setStringValue:","");
objj_msgSend(password,"setStringValue:","");
if(zUser=="test"&&zPass=="test"){
objj_msgSend(loginButton,"setTextColor:",objj_msgSend(CPColor,"grayColor"));
objj_msgSend(incorrectPassword,"setHidden:",YES);
objj_msgSend(mainView,"replaceSubview:with:",signInView,personalView);
objj_msgSend(welcome,"setStringValue:","Signed in as "+zUser);
}else{
objj_msgSend(loginButton,"setTextColor:",objj_msgSend(CPColor,"redColor"));
objj_msgSend(incorrectPassword,"setHidden:",NO);
}
}
}),new objj_method(sel_getUid("signout"),function(_16,_17){
with(_16){
objj_msgSend(mainView,"replaceSubview:with:",personalView,signInView);
}
})]);
