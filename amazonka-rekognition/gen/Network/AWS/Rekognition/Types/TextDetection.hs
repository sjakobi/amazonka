{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Rekognition.Types.TextDetection
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Rekognition.Types.TextDetection where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Rekognition.Types.Geometry
import Network.AWS.Rekognition.Types.TextTypes

-- | Information about a word or line of text detected by 'DetectText' .
--
--
-- The @DetectedText@ field contains the text that Amazon Rekognition detected in the image.
--
-- Every word and line has an identifier (@Id@ ). Each word belongs to a line and has a parent identifier (@ParentId@ ) that identifies the line of text in which the word appears. The word @Id@ is also an index for the word within a line of words.
--
-- For more information, see Detecting Text in the Amazon Rekognition Developer Guide.
--
--
-- /See:/ 'textDetection' smart constructor.
data TextDetection = TextDetection'
  { _tdDetectedText ::
      !(Maybe Text),
    _tdId :: !(Maybe Nat),
    _tdConfidence :: !(Maybe Double),
    _tdParentId :: !(Maybe Nat),
    _tdType :: !(Maybe TextTypes),
    _tdGeometry :: !(Maybe Geometry)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TextDetection' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tdDetectedText' - The word or line of text recognized by Amazon Rekognition.
--
-- * 'tdId' - The identifier for the detected text. The identifier is only unique for a single call to @DetectText@ .
--
-- * 'tdConfidence' - The confidence that Amazon Rekognition has in the accuracy of the detected text and the accuracy of the geometry points around the detected text.
--
-- * 'tdParentId' - The Parent identifier for the detected text identified by the value of @ID@ . If the type of detected text is @LINE@ , the value of @ParentId@ is @Null@ .
--
-- * 'tdType' - The type of text that was detected.
--
-- * 'tdGeometry' - The location of the detected text on the image. Includes an axis aligned coarse bounding box surrounding the text and a finer grain polygon for more accurate spatial information.
textDetection ::
  TextDetection
textDetection =
  TextDetection'
    { _tdDetectedText = Nothing,
      _tdId = Nothing,
      _tdConfidence = Nothing,
      _tdParentId = Nothing,
      _tdType = Nothing,
      _tdGeometry = Nothing
    }

-- | The word or line of text recognized by Amazon Rekognition.
tdDetectedText :: Lens' TextDetection (Maybe Text)
tdDetectedText = lens _tdDetectedText (\s a -> s {_tdDetectedText = a})

-- | The identifier for the detected text. The identifier is only unique for a single call to @DetectText@ .
tdId :: Lens' TextDetection (Maybe Natural)
tdId = lens _tdId (\s a -> s {_tdId = a}) . mapping _Nat

-- | The confidence that Amazon Rekognition has in the accuracy of the detected text and the accuracy of the geometry points around the detected text.
tdConfidence :: Lens' TextDetection (Maybe Double)
tdConfidence = lens _tdConfidence (\s a -> s {_tdConfidence = a})

-- | The Parent identifier for the detected text identified by the value of @ID@ . If the type of detected text is @LINE@ , the value of @ParentId@ is @Null@ .
tdParentId :: Lens' TextDetection (Maybe Natural)
tdParentId = lens _tdParentId (\s a -> s {_tdParentId = a}) . mapping _Nat

-- | The type of text that was detected.
tdType :: Lens' TextDetection (Maybe TextTypes)
tdType = lens _tdType (\s a -> s {_tdType = a})

-- | The location of the detected text on the image. Includes an axis aligned coarse bounding box surrounding the text and a finer grain polygon for more accurate spatial information.
tdGeometry :: Lens' TextDetection (Maybe Geometry)
tdGeometry = lens _tdGeometry (\s a -> s {_tdGeometry = a})

instance FromJSON TextDetection where
  parseJSON =
    withObject
      "TextDetection"
      ( \x ->
          TextDetection'
            <$> (x .:? "DetectedText")
            <*> (x .:? "Id")
            <*> (x .:? "Confidence")
            <*> (x .:? "ParentId")
            <*> (x .:? "Type")
            <*> (x .:? "Geometry")
      )

instance Hashable TextDetection

instance NFData TextDetection
