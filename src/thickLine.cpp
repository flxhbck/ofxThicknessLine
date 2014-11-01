//
//  thickLine.cpp
//  ticknessLine
//
//  Created by Felix Heibeck on 4/26/14.
//
//

#include "thickLine.h"


void thickLine::draw()
{
    
    ofLog(OF_LOG_VERBOSE, "draw poly %i", thickness.size());
    
    if (this->size() < 2) {
        return;
    }
    
    /*
    for (int i = 0; i < this->size()-1; i++) {
        
        ofSetLineWidth((thickness.at(i)-6)*6);
        //ofLog(OF_LOG_VERBOSE, "draw poly %f", thickness.at(i));
        ofLine(this->getVertices().at(i), this->getVertices().at(i+1));
    }
     */
     
    ofPushStyle();
    
    ofSetPolyMode(OF_POLY_WINDING_NONZERO);
    ofBeginShape();
    
    ofPoint pt;
    ofVec2f norm;
    
    for (int i = 0; i < this->size(); i++) {
        pt = this->getPointAtIndexInterpolated(i);
        norm = this->getNormalAtIndex(i);
        norm *= (thickness[i]-6)*6;
        
        ofVertex( (pt + norm).x, (pt+norm).y);
    }
    
    for (int i = this->size()-1; i >= 0; i--) {
        pt = this->getPointAtIndexInterpolated(i);
        norm = this->getNormalAtIndex(i);
        norm *= (thickness[i]-6)*6;
        
        ofVertex( (pt - norm).x, (pt-norm).y);
    }
    
    
    ofEndShape();
    
    ofPopStyle();
    
    
    
    
}

void thickLine::addVertex(float x, float y, float thick)
{
    this->ofPolyline::addVertex(x, y);
    thickness.push_back(thick);
}

void thickLine::clear()
{
    this->ofPolyline::clear();
    thickness.clear();
}
