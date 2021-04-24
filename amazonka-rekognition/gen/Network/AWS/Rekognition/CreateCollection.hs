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
-- Module      : Network.AWS.Rekognition.CreateCollection
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a collection in an AWS Region. You can add faces to the collection using the 'IndexFaces' operation.
--
--
-- For example, you might create collections, one for each of your application users. A user can then index faces using the @IndexFaces@ operation and persist results in a specific collection. Then, a user can search the collection for faces in the user-specific container.
--
-- When you create a collection, it is associated with the latest version of the face model version.
--
-- This operation requires permissions to perform the @rekognition:CreateCollection@ action.
module Network.AWS.Rekognition.CreateCollection
  ( -- * Creating a Request
    createCollection,
    CreateCollection,

    -- * Request Lenses
    ccCollectionId,

    -- * Destructuring the Response
    createCollectionResponse,
    CreateCollectionResponse,

    -- * Response Lenses
    ccrrsFaceModelVersion,
    ccrrsCollectionARN,
    ccrrsStatusCode,
    ccrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Rekognition.Types
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createCollection' smart constructor.
newtype CreateCollection = CreateCollection'
  { _ccCollectionId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateCollection' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccCollectionId' - ID for the collection that you are creating.
createCollection ::
  -- | 'ccCollectionId'
  Text ->
  CreateCollection
createCollection pCollectionId_ =
  CreateCollection' {_ccCollectionId = pCollectionId_}

-- | ID for the collection that you are creating.
ccCollectionId :: Lens' CreateCollection Text
ccCollectionId = lens _ccCollectionId (\s a -> s {_ccCollectionId = a})

instance AWSRequest CreateCollection where
  type Rs CreateCollection = CreateCollectionResponse
  request = postJSON rekognition
  response =
    receiveJSON
      ( \s h x ->
          CreateCollectionResponse'
            <$> (x .?> "FaceModelVersion")
            <*> (x .?> "CollectionArn")
            <*> (x .?> "StatusCode")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateCollection

instance NFData CreateCollection

instance ToHeaders CreateCollection where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "RekognitionService.CreateCollection" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateCollection where
  toJSON CreateCollection' {..} =
    object
      ( catMaybes
          [Just ("CollectionId" .= _ccCollectionId)]
      )

instance ToPath CreateCollection where
  toPath = const "/"

instance ToQuery CreateCollection where
  toQuery = const mempty

-- | /See:/ 'createCollectionResponse' smart constructor.
data CreateCollectionResponse = CreateCollectionResponse'
  { _ccrrsFaceModelVersion ::
      !(Maybe Text),
    _ccrrsCollectionARN ::
      !(Maybe Text),
    _ccrrsStatusCode ::
      !(Maybe Nat),
    _ccrrsResponseStatus ::
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

-- | Creates a value of 'CreateCollectionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccrrsFaceModelVersion' - Version number of the face detection model associated with the collection you are creating.
--
-- * 'ccrrsCollectionARN' - Amazon Resource Name (ARN) of the collection. You can use this to manage permissions on your resources.
--
-- * 'ccrrsStatusCode' - HTTP status code indicating the result of the operation.
--
-- * 'ccrrsResponseStatus' - -- | The response status code.
createCollectionResponse ::
  -- | 'ccrrsResponseStatus'
  Int ->
  CreateCollectionResponse
createCollectionResponse pResponseStatus_ =
  CreateCollectionResponse'
    { _ccrrsFaceModelVersion =
        Nothing,
      _ccrrsCollectionARN = Nothing,
      _ccrrsStatusCode = Nothing,
      _ccrrsResponseStatus = pResponseStatus_
    }

-- | Version number of the face detection model associated with the collection you are creating.
ccrrsFaceModelVersion :: Lens' CreateCollectionResponse (Maybe Text)
ccrrsFaceModelVersion = lens _ccrrsFaceModelVersion (\s a -> s {_ccrrsFaceModelVersion = a})

-- | Amazon Resource Name (ARN) of the collection. You can use this to manage permissions on your resources.
ccrrsCollectionARN :: Lens' CreateCollectionResponse (Maybe Text)
ccrrsCollectionARN = lens _ccrrsCollectionARN (\s a -> s {_ccrrsCollectionARN = a})

-- | HTTP status code indicating the result of the operation.
ccrrsStatusCode :: Lens' CreateCollectionResponse (Maybe Natural)
ccrrsStatusCode = lens _ccrrsStatusCode (\s a -> s {_ccrrsStatusCode = a}) . mapping _Nat

-- | -- | The response status code.
ccrrsResponseStatus :: Lens' CreateCollectionResponse Int
ccrrsResponseStatus = lens _ccrrsResponseStatus (\s a -> s {_ccrrsResponseStatus = a})

instance NFData CreateCollectionResponse
