#include "testApp.h"

//--------------------------------------------------------------
void testApp::setup(){
    ofBackground(0, 0, 0);
    ofSetLineWidth(2);
    ofEnableSmoothing();
    ofEnableAntiAliasing();
    
    ofSetLogLevel(OF_LOG_VERBOSE);
}

//--------------------------------------------------------------
void testApp::update(){
}

//--------------------------------------------------------------
void testApp::draw(){
    line.draw();
}


//--------------------------------------------------------------
void testApp::exit(){

}

//--------------------------------------------------------------
void testApp::touchDown(ofTouchEventArgs & touch){
    //ofLog(OF_LOG_VERBOSE, " down id %i pressure %f",touch.id, touch.pressure);
    line.clear();
}

//--------------------------------------------------------------
void testApp::touchMoved(ofTouchEventArgs & touch){
    ofLog(OF_LOG_VERBOSE, "move id %i pressure %f",touch.id, touch.pressure);
    line.addVertex(touch.x, touch.y, touch.pressure);
}

//--------------------------------------------------------------
void testApp::touchUp(ofTouchEventArgs & touch){
    //ofLog(OF_LOG_VERBOSE, " up id %i pressure %f",touch.id, touch.pressure);
}

//--------------------------------------------------------------
void testApp::touchDoubleTap(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void testApp::touchCancelled(ofTouchEventArgs & touch){
}

//--------------------------------------------------------------
void testApp::lostFocus(){

}

//--------------------------------------------------------------
void testApp::gotFocus(){

}

//--------------------------------------------------------------
void testApp::gotMemoryWarning(){

}

//--------------------------------------------------------------
void testApp::deviceOrientationChanged(int newOrientation){

}

