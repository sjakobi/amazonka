{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Rekognition.Types.CelebrityDetail
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Rekognition.Types.CelebrityDetail where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Rekognition.Types.BoundingBox
import Network.AWS.Rekognition.Types.FaceDetail

-- | Information about a recognized celebrity.
--
--
--
-- /See:/ 'celebrityDetail' smart constructor.
data CelebrityDetail = CelebrityDetail'
  { _cdURLs ::
      !(Maybe [Text]),
    _cdId :: !(Maybe Text),
    _cdBoundingBox :: !(Maybe BoundingBox),
    _cdName :: !(Maybe Text),
    _cdConfidence :: !(Maybe Double),
    _cdFace :: !(Maybe FaceDetail)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CelebrityDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdURLs' - An array of URLs pointing to additional celebrity information.
--
-- * 'cdId' - The unique identifier for the celebrity.
--
-- * 'cdBoundingBox' - Bounding box around the body of a celebrity.
--
-- * 'cdName' - The name of the celebrity.
--
-- * 'cdConfidence' - The confidence, in percentage, that Amazon Rekognition has that the recognized face is the celebrity.
--
-- * 'cdFace' - Face details for the recognized celebrity.
celebrityDetail ::
  CelebrityDetail
celebrityDetail =
  CelebrityDetail'
    { _cdURLs = Nothing,
      _cdId = Nothing,
      _cdBoundingBox = Nothing,
      _cdName = Nothing,
      _cdConfidence = Nothing,
      _cdFace = Nothing
    }

-- | An array of URLs pointing to additional celebrity information.
cdURLs :: Lens' CelebrityDetail [Text]
cdURLs = lens _cdURLs (\s a -> s {_cdURLs = a}) . _Default . _Coerce

-- | The unique identifier for the celebrity.
cdId :: Lens' CelebrityDetail (Maybe Text)
cdId = lens _cdId (\s a -> s {_cdId = a})

-- | Bounding box around the body of a celebrity.
cdBoundingBox :: Lens' CelebrityDetail (Maybe BoundingBox)
cdBoundingBox = lens _cdBoundingBox (\s a -> s {_cdBoundingBox = a})

-- | The name of the celebrity.
cdName :: Lens' CelebrityDetail (Maybe Text)
cdName = lens _cdName (\s a -> s {_cdName = a})

-- | The confidence, in percentage, that Amazon Rekognition has that the recognized face is the celebrity.
cdConfidence :: Lens' CelebrityDetail (Maybe Double)
cdConfidence = lens _cdConfidence (\s a -> s {_cdConfidence = a})

-- | Face details for the recognized celebrity.
cdFace :: Lens' CelebrityDetail (Maybe FaceDetail)
cdFace = lens _cdFace (\s a -> s {_cdFace = a})

instance FromJSON CelebrityDetail where
  parseJSON =
    withObject
      "CelebrityDetail"
      ( \x ->
          CelebrityDetail'
            <$> (x .:? "Urls" .!= mempty)
            <*> (x .:? "Id")
            <*> (x .:? "BoundingBox")
            <*> (x .:? "Name")
            <*> (x .:? "Confidence")
            <*> (x .:? "Face")
      )

instance Hashable CelebrityDetail

instance NFData CelebrityDetail
