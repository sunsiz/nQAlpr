/*
 * Copyright (c) 2015 OpenALPR Technology, Inc.
 * Open source Automated License Plate Recognition [http://www.openalpr.com]
 *
 * This file is part of OpenALPR.
 *
 * OpenALPR is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License
 * version 3 as published by the Free Software Foundation
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
*/


#include "alpr.h"
#include "state_detector.h"
//#include "simpleini.h"

//using namespace alpr;

int main( int argc, const char** argv )
{
  // Initialize the library using United States style license plates.
  // You can use other countries/regions as well (for example: "eu", "au", or "kr")
  alpr::Alpr openalpr("eu", "./config/openalpr.conf");

  // Optionally specify the top N possible plates to return (with confidences).  Default is 10
  openalpr.setTopN(1);

  // Optionally, provide the library with a region for pattern matching.  This improves accuracy by
  // comparing the plate text with the regional pattern.
  openalpr.setDefaultRegion("es");

  openalpr.setPrewarp("");
  // Make sure the library loaded before continuing.
  // For example, it could fail if the config/runtime_data is not found
  if (openalpr.isLoaded() == false)
  {
      std::cerr << "Error loading OpenALPR" << std::endl;
      return 1;
  }

  // Recognize an image file.  You could alternatively provide the image bytes in-memory.
  alpr::AlprResults results = openalpr.recognize("./matriculas/image2.jpg");

  // Iterate through the results.  There may be multiple plates in an image,
  // and each plate return sthe top N candidates.
  for (int i = 0; i < results.plates.size(); i++)
  {
    alpr::AlprPlateResult plate = results.plates[i];
    //std::cout << "plate" << i << ": " << plate.topNPlates.size() << " results" << std::endl;

      for (int k = 0; k < plate.topNPlates.size(); k++)
      {
        alpr::AlprPlate candidate = plate.topNPlates[k];
        std::cout << "    - " << candidate.characters << "\t confidence: " << candidate.overall_confidence;
        //std::cout << "\t pattern_match: " << candidate.matches_template << std::endl;
      }
  }
}

