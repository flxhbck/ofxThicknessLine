#include "ofMain.h"
#include "testApp.h"

#include "ofxiOS.h"
#include "ofxiOSExtras.h"

int main()
{
    ofAppiOSWindow * iOSWindow = new ofAppiOSWindow();
    iOSWindow->enableAntiAliasing(4);
    iOSWindow->enableRetina();
    ofSetupOpenGL(iOSWindow, 1024, 768, OF_FULLSCREEN);
    ofRunApp(new testApp);
}
