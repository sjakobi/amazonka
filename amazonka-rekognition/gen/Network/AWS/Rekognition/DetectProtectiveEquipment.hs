{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Rekognition.DetectProtectiveEquipment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Detects Personal Protective Equipment (PPE) worn by people detected in an image. Amazon Rekognition can detect the following types of PPE.
--
--
--     * Face cover
--
--     * Hand cover
--
--     * Head cover
--
--
--
-- You pass the input image as base64-encoded image bytes or as a reference to an image in an Amazon S3 bucket. The image must be either a PNG or JPG formatted file.
--
-- @DetectProtectiveEquipment@ detects PPE worn by up to 15 persons detected in an image.
--
-- For each person detected in the image the API returns an array of body parts (face, head, left-hand, right-hand). For each body part, an array of detected items of PPE is returned, including an indicator of whether or not the PPE covers the body part. The API returns the confidence it has in each detection (person, PPE, body part and body part coverage). It also returns a bounding box ('BoundingBox' ) for each detected person and each detected item of PPE.
--
-- You can optionally request a summary of detected PPE items with the @SummarizationAttributes@ input parameter. The summary provides the following information.
--
--     * The persons detected as wearing all of the types of PPE that you specify.
--
--     * The persons detected as not wearing all of the types PPE that you specify.
--
--     * The persons detected where PPE adornment could not be determined.
--
--
--
-- This is a stateless API operation. That is, the operation does not persist any data.
--
-- This operation requires permissions to perform the @rekognition:DetectProtectiveEquipment@ action.
module Network.AWS.Rekognition.DetectProtectiveEquipment
  ( -- * Creating a Request
    detectProtectiveEquipment,
    DetectProtectiveEquipment,

    -- * Request Lenses
    dpeSummarizationAttributes,
    dpeImage,

    -- * Destructuring the Response
    detectProtectiveEquipmentResponse,
    DetectProtectiveEquipmentResponse,

    -- * Response Lenses
    dperrsProtectiveEquipmentModelVersion,
    dperrsSummary,
    dperrsPersons,
    dperrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Rekognition.Types
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'detectProtectiveEquipment' smart constructor.
data DetectProtectiveEquipment = DetectProtectiveEquipment'
  { _dpeSummarizationAttributes ::
      !( Maybe
           ProtectiveEquipmentSummarizationAttributes
       ),
    _dpeImage :: !Image
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DetectProtectiveEquipment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpeSummarizationAttributes' - An array of PPE types that you want to summarize.
--
-- * 'dpeImage' - The image in which you want to detect PPE on detected persons. The image can be passed as image bytes or you can reference an image stored in an Amazon S3 bucket.
detectProtectiveEquipment ::
  -- | 'dpeImage'
  Image ->
  DetectProtectiveEquipment
detectProtectiveEquipment pImage_ =
  DetectProtectiveEquipment'
    { _dpeSummarizationAttributes =
        Nothing,
      _dpeImage = pImage_
    }

-- | An array of PPE types that you want to summarize.
dpeSummarizationAttributes :: Lens' DetectProtectiveEquipment (Maybe ProtectiveEquipmentSummarizationAttributes)
dpeSummarizationAttributes = lens _dpeSummarizationAttributes (\s a -> s {_dpeSummarizationAttributes = a})

-- | The image in which you want to detect PPE on detected persons. The image can be passed as image bytes or you can reference an image stored in an Amazon S3 bucket.
dpeImage :: Lens' DetectProtectiveEquipment Image
dpeImage = lens _dpeImage (\s a -> s {_dpeImage = a})

instance AWSRequest DetectProtectiveEquipment where
  type
    Rs DetectProtectiveEquipment =
      DetectProtectiveEquipmentResponse
  request = postJSON rekognition
  response =
    receiveJSON
      ( \s h x ->
          DetectProtectiveEquipmentResponse'
            <$> (x .?> "ProtectiveEquipmentModelVersion")
            <*> (x .?> "Summary")
            <*> (x .?> "Persons" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DetectProtectiveEquipment

instance NFData DetectProtectiveEquipment

instance ToHeaders DetectProtectiveEquipment where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "RekognitionService.DetectProtectiveEquipment" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DetectProtectiveEquipment where
  toJSON DetectProtectiveEquipment' {..} =
    object
      ( catMaybes
          [ ("SummarizationAttributes" .=)
              <$> _dpeSummarizationAttributes,
            Just ("Image" .= _dpeImage)
          ]
      )

instance ToPath DetectProtectiveEquipment where
  toPath = const "/"

instance ToQuery DetectProtectiveEquipment where
  toQuery = const mempty

-- | /See:/ 'detectProtectiveEquipmentResponse' smart constructor.
data DetectProtectiveEquipmentResponse = DetectProtectiveEquipmentResponse'
  { _dperrsProtectiveEquipmentModelVersion ::
      !( Maybe
           Text
       ),
    _dperrsSummary ::
      !( Maybe
           ProtectiveEquipmentSummary
       ),
    _dperrsPersons ::
      !( Maybe
           [ProtectiveEquipmentPerson]
       ),
    _dperrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DetectProtectiveEquipmentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dperrsProtectiveEquipmentModelVersion' - The version number of the PPE detection model used to detect PPE in the image.
--
-- * 'dperrsSummary' - Summary information for the types of PPE specified in the @SummarizationAttributes@ input parameter.
--
-- * 'dperrsPersons' - An array of persons detected in the image (including persons not wearing PPE).
--
-- * 'dperrsResponseStatus' - -- | The response status code.
detectProtectiveEquipmentResponse ::
  -- | 'dperrsResponseStatus'
  Int ->
  DetectProtectiveEquipmentResponse
detectProtectiveEquipmentResponse pResponseStatus_ =
  DetectProtectiveEquipmentResponse'
    { _dperrsProtectiveEquipmentModelVersion =
        Nothing,
      _dperrsSummary = Nothing,
      _dperrsPersons = Nothing,
      _dperrsResponseStatus = pResponseStatus_
    }

-- | The version number of the PPE detection model used to detect PPE in the image.
dperrsProtectiveEquipmentModelVersion :: Lens' DetectProtectiveEquipmentResponse (Maybe Text)
dperrsProtectiveEquipmentModelVersion = lens _dperrsProtectiveEquipmentModelVersion (\s a -> s {_dperrsProtectiveEquipmentModelVersion = a})

-- | Summary information for the types of PPE specified in the @SummarizationAttributes@ input parameter.
dperrsSummary :: Lens' DetectProtectiveEquipmentResponse (Maybe ProtectiveEquipmentSummary)
dperrsSummary = lens _dperrsSummary (\s a -> s {_dperrsSummary = a})

-- | An array of persons detected in the image (including persons not wearing PPE).
dperrsPersons :: Lens' DetectProtectiveEquipmentResponse [ProtectiveEquipmentPerson]
dperrsPersons = lens _dperrsPersons (\s a -> s {_dperrsPersons = a}) . _Default . _Coerce

-- | -- | The response status code.
dperrsResponseStatus :: Lens' DetectProtectiveEquipmentResponse Int
dperrsResponseStatus = lens _dperrsResponseStatus (\s a -> s {_dperrsResponseStatus = a})

instance NFData DetectProtectiveEquipmentResponse
