{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Rekognition.Types.FaceDetail
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Rekognition.Types.FaceDetail where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Rekognition.Types.AgeRange
import Network.AWS.Rekognition.Types.Beard
import Network.AWS.Rekognition.Types.BoundingBox
import Network.AWS.Rekognition.Types.Emotion
import Network.AWS.Rekognition.Types.EyeOpen
import Network.AWS.Rekognition.Types.Eyeglasses
import Network.AWS.Rekognition.Types.Gender
import Network.AWS.Rekognition.Types.ImageQuality
import Network.AWS.Rekognition.Types.Landmark
import Network.AWS.Rekognition.Types.MouthOpen
import Network.AWS.Rekognition.Types.Mustache
import Network.AWS.Rekognition.Types.Pose
import Network.AWS.Rekognition.Types.Smile
import Network.AWS.Rekognition.Types.Sunglasses

-- | Structure containing attributes of the face that the algorithm detected.
--
--
-- A @FaceDetail@ object contains either the default facial attributes or all facial attributes. The default attributes are @BoundingBox@ , @Confidence@ , @Landmarks@ , @Pose@ , and @Quality@ .
--
-- 'GetFaceDetection' is the only Amazon Rekognition Video stored video operation that can return a @FaceDetail@ object with all attributes. To specify which attributes to return, use the @FaceAttributes@ input parameter for 'StartFaceDetection' . The following Amazon Rekognition Video operations return only the default attributes. The corresponding Start operations don't have a @FaceAttributes@ input parameter.
--
--     * GetCelebrityRecognition
--
--     * GetPersonTracking
--
--     * GetFaceSearch
--
--
--
-- The Amazon Rekognition Image 'DetectFaces' and 'IndexFaces' operations can return all facial attributes. To specify which attributes to return, use the @Attributes@ input parameter for @DetectFaces@ . For @IndexFaces@ , use the @DetectAttributes@ input parameter.
--
--
-- /See:/ 'faceDetail' smart constructor.
data FaceDetail = FaceDetail'
  { _fdSunglasses ::
      !(Maybe Sunglasses),
    _fdAgeRange :: !(Maybe AgeRange),
    _fdPose :: !(Maybe Pose),
    _fdLandmarks :: !(Maybe [Landmark]),
    _fdBeard :: !(Maybe Beard),
    _fdEmotions :: !(Maybe [Emotion]),
    _fdEyeglasses :: !(Maybe Eyeglasses),
    _fdGender :: !(Maybe Gender),
    _fdBoundingBox :: !(Maybe BoundingBox),
    _fdMouthOpen :: !(Maybe MouthOpen),
    _fdConfidence :: !(Maybe Double),
    _fdSmile :: !(Maybe Smile),
    _fdEyesOpen :: !(Maybe EyeOpen),
    _fdMustache :: !(Maybe Mustache),
    _fdQuality :: !(Maybe ImageQuality)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'FaceDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fdSunglasses' - Indicates whether or not the face is wearing sunglasses, and the confidence level in the determination.
--
-- * 'fdAgeRange' - The estimated age range, in years, for the face. Low represents the lowest estimated age and High represents the highest estimated age.
--
-- * 'fdPose' - Indicates the pose of the face as determined by its pitch, roll, and yaw. Default attribute.
--
-- * 'fdLandmarks' - Indicates the location of landmarks on the face. Default attribute.
--
-- * 'fdBeard' - Indicates whether or not the face has a beard, and the confidence level in the determination.
--
-- * 'fdEmotions' - The emotions that appear to be expressed on the face, and the confidence level in the determination. The API is only making a determination of the physical appearance of a person's face. It is not a determination of the person’s internal emotional state and should not be used in such a way. For example, a person pretending to have a sad face might not be sad emotionally.
--
-- * 'fdEyeglasses' - Indicates whether or not the face is wearing eye glasses, and the confidence level in the determination.
--
-- * 'fdGender' - The predicted gender of a detected face.
--
-- * 'fdBoundingBox' - Bounding box of the face. Default attribute.
--
-- * 'fdMouthOpen' - Indicates whether or not the mouth on the face is open, and the confidence level in the determination.
--
-- * 'fdConfidence' - Confidence level that the bounding box contains a face (and not a different object such as a tree). Default attribute.
--
-- * 'fdSmile' - Indicates whether or not the face is smiling, and the confidence level in the determination.
--
-- * 'fdEyesOpen' - Indicates whether or not the eyes on the face are open, and the confidence level in the determination.
--
-- * 'fdMustache' - Indicates whether or not the face has a mustache, and the confidence level in the determination.
--
-- * 'fdQuality' - Identifies image brightness and sharpness. Default attribute.
faceDetail ::
  FaceDetail
faceDetail =
  FaceDetail'
    { _fdSunglasses = Nothing,
      _fdAgeRange = Nothing,
      _fdPose = Nothing,
      _fdLandmarks = Nothing,
      _fdBeard = Nothing,
      _fdEmotions = Nothing,
      _fdEyeglasses = Nothing,
      _fdGender = Nothing,
      _fdBoundingBox = Nothing,
      _fdMouthOpen = Nothing,
      _fdConfidence = Nothing,
      _fdSmile = Nothing,
      _fdEyesOpen = Nothing,
      _fdMustache = Nothing,
      _fdQuality = Nothing
    }

-- | Indicates whether or not the face is wearing sunglasses, and the confidence level in the determination.
fdSunglasses :: Lens' FaceDetail (Maybe Sunglasses)
fdSunglasses = lens _fdSunglasses (\s a -> s {_fdSunglasses = a})

-- | The estimated age range, in years, for the face. Low represents the lowest estimated age and High represents the highest estimated age.
fdAgeRange :: Lens' FaceDetail (Maybe AgeRange)
fdAgeRange = lens _fdAgeRange (\s a -> s {_fdAgeRange = a})

-- | Indicates the pose of the face as determined by its pitch, roll, and yaw. Default attribute.
fdPose :: Lens' FaceDetail (Maybe Pose)
fdPose = lens _fdPose (\s a -> s {_fdPose = a})

-- | Indicates the location of landmarks on the face. Default attribute.
fdLandmarks :: Lens' FaceDetail [Landmark]
fdLandmarks = lens _fdLandmarks (\s a -> s {_fdLandmarks = a}) . _Default . _Coerce

-- | Indicates whether or not the face has a beard, and the confidence level in the determination.
fdBeard :: Lens' FaceDetail (Maybe Beard)
fdBeard = lens _fdBeard (\s a -> s {_fdBeard = a})

-- | The emotions that appear to be expressed on the face, and the confidence level in the determination. The API is only making a determination of the physical appearance of a person's face. It is not a determination of the person’s internal emotional state and should not be used in such a way. For example, a person pretending to have a sad face might not be sad emotionally.
fdEmotions :: Lens' FaceDetail [Emotion]
fdEmotions = lens _fdEmotions (\s a -> s {_fdEmotions = a}) . _Default . _Coerce

-- | Indicates whether or not the face is wearing eye glasses, and the confidence level in the determination.
fdEyeglasses :: Lens' FaceDetail (Maybe Eyeglasses)
fdEyeglasses = lens _fdEyeglasses (\s a -> s {_fdEyeglasses = a})

-- | The predicted gender of a detected face.
fdGender :: Lens' FaceDetail (Maybe Gender)
fdGender = lens _fdGender (\s a -> s {_fdGender = a})

-- | Bounding box of the face. Default attribute.
fdBoundingBox :: Lens' FaceDetail (Maybe BoundingBox)
fdBoundingBox = lens _fdBoundingBox (\s a -> s {_fdBoundingBox = a})

-- | Indicates whether or not the mouth on the face is open, and the confidence level in the determination.
fdMouthOpen :: Lens' FaceDetail (Maybe MouthOpen)
fdMouthOpen = lens _fdMouthOpen (\s a -> s {_fdMouthOpen = a})

-- | Confidence level that the bounding box contains a face (and not a different object such as a tree). Default attribute.
fdConfidence :: Lens' FaceDetail (Maybe Double)
fdConfidence = lens _fdConfidence (\s a -> s {_fdConfidence = a})

-- | Indicates whether or not the face is smiling, and the confidence level in the determination.
fdSmile :: Lens' FaceDetail (Maybe Smile)
fdSmile = lens _fdSmile (\s a -> s {_fdSmile = a})

-- | Indicates whether or not the eyes on the face are open, and the confidence level in the determination.
fdEyesOpen :: Lens' FaceDetail (Maybe EyeOpen)
fdEyesOpen = lens _fdEyesOpen (\s a -> s {_fdEyesOpen = a})

-- | Indicates whether or not the face has a mustache, and the confidence level in the determination.
fdMustache :: Lens' FaceDetail (Maybe Mustache)
fdMustache = lens _fdMustache (\s a -> s {_fdMustache = a})

-- | Identifies image brightness and sharpness. Default attribute.
fdQuality :: Lens' FaceDetail (Maybe ImageQuality)
fdQuality = lens _fdQuality (\s a -> s {_fdQuality = a})

instance FromJSON FaceDetail where
  parseJSON =
    withObject
      "FaceDetail"
      ( \x ->
          FaceDetail'
            <$> (x .:? "Sunglasses")
            <*> (x .:? "AgeRange")
            <*> (x .:? "Pose")
            <*> (x .:? "Landmarks" .!= mempty)
            <*> (x .:? "Beard")
            <*> (x .:? "Emotions" .!= mempty)
            <*> (x .:? "Eyeglasses")
            <*> (x .:? "Gender")
            <*> (x .:? "BoundingBox")
            <*> (x .:? "MouthOpen")
            <*> (x .:? "Confidence")
            <*> (x .:? "Smile")
            <*> (x .:? "EyesOpen")
            <*> (x .:? "Mustache")
            <*> (x .:? "Quality")
      )

instance Hashable FaceDetail

instance NFData FaceDetail
