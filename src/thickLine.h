//
//  thickLine.h
//  ticknessLine
//
//  Created by Felix Heibeck on 4/26/14.
//
//

#pragma once

#include "ofMain.h"


class thickLine : public ofPolyline
{
    public:
    
    void draw();
    void addVertex(float x, float y, float thick);
    void clear();
    
    vector<float> thickness;
};