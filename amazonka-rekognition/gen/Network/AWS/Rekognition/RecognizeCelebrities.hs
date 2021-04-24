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
-- Module      : Network.AWS.Rekognition.RecognizeCelebrities
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns an array of celebrities recognized in the input image. For more information, see Recognizing Celebrities in the Amazon Rekognition Developer Guide.
--
--
-- @RecognizeCelebrities@ returns the 64 largest faces in the image. It lists recognized celebrities in the @CelebrityFaces@ array and unrecognized faces in the @UnrecognizedFaces@ array. @RecognizeCelebrities@ doesn't return celebrities whose faces aren't among the largest 64 faces in the image.
--
-- For each celebrity recognized, @RecognizeCelebrities@ returns a @Celebrity@ object. The @Celebrity@ object contains the celebrity name, ID, URL links to additional information, match confidence, and a @ComparedFace@ object that you can use to locate the celebrity's face on the image.
--
-- Amazon Rekognition doesn't retain information about which images a celebrity has been recognized in. Your application must store this information and use the @Celebrity@ ID property as a unique identifier for the celebrity. If you don't store the celebrity name or additional information URLs returned by @RecognizeCelebrities@ , you will need the ID to identify the celebrity in a call to the 'GetCelebrityInfo' operation.
--
-- You pass the input image either as base64-encoded image bytes or as a reference to an image in an Amazon S3 bucket. If you use the AWS CLI to call Amazon Rekognition operations, passing image bytes is not supported. The image must be either a PNG or JPEG formatted file.
--
-- For an example, see Recognizing Celebrities in an Image in the Amazon Rekognition Developer Guide.
--
-- This operation requires permissions to perform the @rekognition:RecognizeCelebrities@ operation.
module Network.AWS.Rekognition.RecognizeCelebrities
  ( -- * Creating a Request
    recognizeCelebrities,
    RecognizeCelebrities,

    -- * Request Lenses
    rcImage,

    -- * Destructuring the Response
    recognizeCelebritiesResponse,
    RecognizeCelebritiesResponse,

    -- * Response Lenses
    rcrrsUnrecognizedFaces,
    rcrrsCelebrityFaces,
    rcrrsOrientationCorrection,
    rcrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Rekognition.Types
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'recognizeCelebrities' smart constructor.
newtype RecognizeCelebrities = RecognizeCelebrities'
  { _rcImage ::
      Image
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'RecognizeCelebrities' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcImage' - The input image as base64-encoded bytes or an S3 object. If you use the AWS CLI to call Amazon Rekognition operations, passing base64-encoded image bytes is not supported.  If you are using an AWS SDK to call Amazon Rekognition, you might not need to base64-encode image bytes passed using the @Bytes@ field. For more information, see Images in the Amazon Rekognition developer guide.
recognizeCelebrities ::
  -- | 'rcImage'
  Image ->
  RecognizeCelebrities
recognizeCelebrities pImage_ =
  RecognizeCelebrities' {_rcImage = pImage_}

-- | The input image as base64-encoded bytes or an S3 object. If you use the AWS CLI to call Amazon Rekognition operations, passing base64-encoded image bytes is not supported.  If you are using an AWS SDK to call Amazon Rekognition, you might not need to base64-encode image bytes passed using the @Bytes@ field. For more information, see Images in the Amazon Rekognition developer guide.
rcImage :: Lens' RecognizeCelebrities Image
rcImage = lens _rcImage (\s a -> s {_rcImage = a})

instance AWSRequest RecognizeCelebrities where
  type
    Rs RecognizeCelebrities =
      RecognizeCelebritiesResponse
  request = postJSON rekognition
  response =
    receiveJSON
      ( \s h x ->
          RecognizeCelebritiesResponse'
            <$> (x .?> "UnrecognizedFaces" .!@ mempty)
            <*> (x .?> "CelebrityFaces" .!@ mempty)
            <*> (x .?> "OrientationCorrection")
            <*> (pure (fromEnum s))
      )

instance Hashable RecognizeCelebrities

instance NFData RecognizeCelebrities

instance ToHeaders RecognizeCelebrities where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "RekognitionService.RecognizeCelebrities" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON RecognizeCelebrities where
  toJSON RecognizeCelebrities' {..} =
    object (catMaybes [Just ("Image" .= _rcImage)])

instance ToPath RecognizeCelebrities where
  toPath = const "/"

instance ToQuery RecognizeCelebrities where
  toQuery = const mempty

-- | /See:/ 'recognizeCelebritiesResponse' smart constructor.
data RecognizeCelebritiesResponse = RecognizeCelebritiesResponse'
  { _rcrrsUnrecognizedFaces ::
      !( Maybe
           [ComparedFace]
       ),
    _rcrrsCelebrityFaces ::
      !( Maybe
           [Celebrity]
       ),
    _rcrrsOrientationCorrection ::
      !( Maybe
           OrientationCorrection
       ),
    _rcrrsResponseStatus ::
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

-- | Creates a value of 'RecognizeCelebritiesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcrrsUnrecognizedFaces' - Details about each unrecognized face in the image.
--
-- * 'rcrrsCelebrityFaces' - Details about each celebrity found in the image. Amazon Rekognition can detect a maximum of 64 celebrities in an image.
--
-- * 'rcrrsOrientationCorrection' - The orientation of the input image (counterclockwise direction). If your application displays the image, you can use this value to correct the orientation. The bounding box coordinates returned in @CelebrityFaces@ and @UnrecognizedFaces@ represent face locations before the image orientation is corrected.
--
-- * 'rcrrsResponseStatus' - -- | The response status code.
recognizeCelebritiesResponse ::
  -- | 'rcrrsResponseStatus'
  Int ->
  RecognizeCelebritiesResponse
recognizeCelebritiesResponse pResponseStatus_ =
  RecognizeCelebritiesResponse'
    { _rcrrsUnrecognizedFaces =
        Nothing,
      _rcrrsCelebrityFaces = Nothing,
      _rcrrsOrientationCorrection = Nothing,
      _rcrrsResponseStatus = pResponseStatus_
    }

-- | Details about each unrecognized face in the image.
rcrrsUnrecognizedFaces :: Lens' RecognizeCelebritiesResponse [ComparedFace]
rcrrsUnrecognizedFaces = lens _rcrrsUnrecognizedFaces (\s a -> s {_rcrrsUnrecognizedFaces = a}) . _Default . _Coerce

-- | Details about each celebrity found in the image. Amazon Rekognition can detect a maximum of 64 celebrities in an image.
rcrrsCelebrityFaces :: Lens' RecognizeCelebritiesResponse [Celebrity]
rcrrsCelebrityFaces = lens _rcrrsCelebrityFaces (\s a -> s {_rcrrsCelebrityFaces = a}) . _Default . _Coerce

-- | The orientation of the input image (counterclockwise direction). If your application displays the image, you can use this value to correct the orientation. The bounding box coordinates returned in @CelebrityFaces@ and @UnrecognizedFaces@ represent face locations before the image orientation is corrected.
rcrrsOrientationCorrection :: Lens' RecognizeCelebritiesResponse (Maybe OrientationCorrection)
rcrrsOrientationCorrection = lens _rcrrsOrientationCorrection (\s a -> s {_rcrrsOrientationCorrection = a})

-- | -- | The response status code.
rcrrsResponseStatus :: Lens' RecognizeCelebritiesResponse Int
rcrrsResponseStatus = lens _rcrrsResponseStatus (\s a -> s {_rcrrsResponseStatus = a})

instance NFData RecognizeCelebritiesResponse
