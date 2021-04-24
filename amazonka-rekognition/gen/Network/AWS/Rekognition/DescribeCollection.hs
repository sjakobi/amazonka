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
-- Module      : Network.AWS.Rekognition.DescribeCollection
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified collection. You can use @DescribeCollection@ to get information, such as the number of faces indexed into a collection and the version of the model used by the collection for face detection.
--
--
-- For more information, see Describing a Collection in the Amazon Rekognition Developer Guide.
module Network.AWS.Rekognition.DescribeCollection
  ( -- * Creating a Request
    describeCollection,
    DescribeCollection,

    -- * Request Lenses
    dCollectionId,

    -- * Destructuring the Response
    describeCollectionResponse,
    DescribeCollectionResponse,

    -- * Response Lenses
    desrsCreationTimestamp,
    desrsFaceModelVersion,
    desrsCollectionARN,
    desrsFaceCount,
    desrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Rekognition.Types
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeCollection' smart constructor.
newtype DescribeCollection = DescribeCollection'
  { _dCollectionId ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeCollection' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dCollectionId' - The ID of the collection to describe.
describeCollection ::
  -- | 'dCollectionId'
  Text ->
  DescribeCollection
describeCollection pCollectionId_ =
  DescribeCollection'
    { _dCollectionId =
        pCollectionId_
    }

-- | The ID of the collection to describe.
dCollectionId :: Lens' DescribeCollection Text
dCollectionId = lens _dCollectionId (\s a -> s {_dCollectionId = a})

instance AWSRequest DescribeCollection where
  type
    Rs DescribeCollection =
      DescribeCollectionResponse
  request = postJSON rekognition
  response =
    receiveJSON
      ( \s h x ->
          DescribeCollectionResponse'
            <$> (x .?> "CreationTimestamp")
            <*> (x .?> "FaceModelVersion")
            <*> (x .?> "CollectionARN")
            <*> (x .?> "FaceCount")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeCollection

instance NFData DescribeCollection

instance ToHeaders DescribeCollection where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "RekognitionService.DescribeCollection" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeCollection where
  toJSON DescribeCollection' {..} =
    object
      (catMaybes [Just ("CollectionId" .= _dCollectionId)])

instance ToPath DescribeCollection where
  toPath = const "/"

instance ToQuery DescribeCollection where
  toQuery = const mempty

-- | /See:/ 'describeCollectionResponse' smart constructor.
data DescribeCollectionResponse = DescribeCollectionResponse'
  { _desrsCreationTimestamp ::
      !(Maybe POSIX),
    _desrsFaceModelVersion ::
      !(Maybe Text),
    _desrsCollectionARN ::
      !(Maybe Text),
    _desrsFaceCount ::
      !(Maybe Nat),
    _desrsResponseStatus ::
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

-- | Creates a value of 'DescribeCollectionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desrsCreationTimestamp' - The number of milliseconds since the Unix epoch time until the creation of the collection. The Unix epoch time is 00:00:00 Coordinated Universal Time (UTC), Thursday, 1 January 1970.
--
-- * 'desrsFaceModelVersion' - The version of the face model that's used by the collection for face detection. For more information, see Model Versioning in the Amazon Rekognition Developer Guide.
--
-- * 'desrsCollectionARN' - The Amazon Resource Name (ARN) of the collection.
--
-- * 'desrsFaceCount' - The number of faces that are indexed into the collection. To index faces into a collection, use 'IndexFaces' .
--
-- * 'desrsResponseStatus' - -- | The response status code.
describeCollectionResponse ::
  -- | 'desrsResponseStatus'
  Int ->
  DescribeCollectionResponse
describeCollectionResponse pResponseStatus_ =
  DescribeCollectionResponse'
    { _desrsCreationTimestamp =
        Nothing,
      _desrsFaceModelVersion = Nothing,
      _desrsCollectionARN = Nothing,
      _desrsFaceCount = Nothing,
      _desrsResponseStatus = pResponseStatus_
    }

-- | The number of milliseconds since the Unix epoch time until the creation of the collection. The Unix epoch time is 00:00:00 Coordinated Universal Time (UTC), Thursday, 1 January 1970.
desrsCreationTimestamp :: Lens' DescribeCollectionResponse (Maybe UTCTime)
desrsCreationTimestamp = lens _desrsCreationTimestamp (\s a -> s {_desrsCreationTimestamp = a}) . mapping _Time

-- | The version of the face model that's used by the collection for face detection. For more information, see Model Versioning in the Amazon Rekognition Developer Guide.
desrsFaceModelVersion :: Lens' DescribeCollectionResponse (Maybe Text)
desrsFaceModelVersion = lens _desrsFaceModelVersion (\s a -> s {_desrsFaceModelVersion = a})

-- | The Amazon Resource Name (ARN) of the collection.
desrsCollectionARN :: Lens' DescribeCollectionResponse (Maybe Text)
desrsCollectionARN = lens _desrsCollectionARN (\s a -> s {_desrsCollectionARN = a})

-- | The number of faces that are indexed into the collection. To index faces into a collection, use 'IndexFaces' .
desrsFaceCount :: Lens' DescribeCollectionResponse (Maybe Natural)
desrsFaceCount = lens _desrsFaceCount (\s a -> s {_desrsFaceCount = a}) . mapping _Nat

-- | -- | The response status code.
desrsResponseStatus :: Lens' DescribeCollectionResponse Int
desrsResponseStatus = lens _desrsResponseStatus (\s a -> s {_desrsResponseStatus = a})

instance NFData DescribeCollectionResponse
