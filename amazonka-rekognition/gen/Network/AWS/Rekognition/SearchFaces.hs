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
-- Module      : Network.AWS.Rekognition.SearchFaces
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- For a given input face ID, searches for matching faces in the collection the face belongs to. You get a face ID when you add a face to the collection using the 'IndexFaces' operation. The operation compares the features of the input face with faces in the specified collection.
--
--
-- The operation response returns an array of faces that match, ordered by similarity score with the highest similarity first. More specifically, it is an array of metadata for each face match that is found. Along with the metadata, the response also includes a @confidence@ value for each face match, indicating the confidence that the specific face matches the input face.
--
-- For an example, see Searching for a Face Using Its Face ID in the Amazon Rekognition Developer Guide.
--
-- This operation requires permissions to perform the @rekognition:SearchFaces@ action.
module Network.AWS.Rekognition.SearchFaces
  ( -- * Creating a Request
    searchFaces,
    SearchFaces,

    -- * Request Lenses
    sfMaxFaces,
    sfFaceMatchThreshold,
    sfCollectionId,
    sfFaceId,

    -- * Destructuring the Response
    searchFacesResponse,
    SearchFacesResponse,

    -- * Response Lenses
    sfrrsFaceModelVersion,
    sfrrsFaceMatches,
    sfrrsSearchedFaceId,
    sfrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Rekognition.Types
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'searchFaces' smart constructor.
data SearchFaces = SearchFaces'
  { _sfMaxFaces ::
      !(Maybe Nat),
    _sfFaceMatchThreshold :: !(Maybe Double),
    _sfCollectionId :: !Text,
    _sfFaceId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SearchFaces' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sfMaxFaces' - Maximum number of faces to return. The operation returns the maximum number of faces with the highest confidence in the match.
--
-- * 'sfFaceMatchThreshold' - Optional value specifying the minimum confidence in the face match to return. For example, don't return any matches where confidence in matches is less than 70%. The default value is 80%.
--
-- * 'sfCollectionId' - ID of the collection the face belongs to.
--
-- * 'sfFaceId' - ID of a face to find matches for in the collection.
searchFaces ::
  -- | 'sfCollectionId'
  Text ->
  -- | 'sfFaceId'
  Text ->
  SearchFaces
searchFaces pCollectionId_ pFaceId_ =
  SearchFaces'
    { _sfMaxFaces = Nothing,
      _sfFaceMatchThreshold = Nothing,
      _sfCollectionId = pCollectionId_,
      _sfFaceId = pFaceId_
    }

-- | Maximum number of faces to return. The operation returns the maximum number of faces with the highest confidence in the match.
sfMaxFaces :: Lens' SearchFaces (Maybe Natural)
sfMaxFaces = lens _sfMaxFaces (\s a -> s {_sfMaxFaces = a}) . mapping _Nat

-- | Optional value specifying the minimum confidence in the face match to return. For example, don't return any matches where confidence in matches is less than 70%. The default value is 80%.
sfFaceMatchThreshold :: Lens' SearchFaces (Maybe Double)
sfFaceMatchThreshold = lens _sfFaceMatchThreshold (\s a -> s {_sfFaceMatchThreshold = a})

-- | ID of the collection the face belongs to.
sfCollectionId :: Lens' SearchFaces Text
sfCollectionId = lens _sfCollectionId (\s a -> s {_sfCollectionId = a})

-- | ID of a face to find matches for in the collection.
sfFaceId :: Lens' SearchFaces Text
sfFaceId = lens _sfFaceId (\s a -> s {_sfFaceId = a})

instance AWSRequest SearchFaces where
  type Rs SearchFaces = SearchFacesResponse
  request = postJSON rekognition
  response =
    receiveJSON
      ( \s h x ->
          SearchFacesResponse'
            <$> (x .?> "FaceModelVersion")
            <*> (x .?> "FaceMatches" .!@ mempty)
            <*> (x .?> "SearchedFaceId")
            <*> (pure (fromEnum s))
      )

instance Hashable SearchFaces

instance NFData SearchFaces

instance ToHeaders SearchFaces where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("RekognitionService.SearchFaces" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON SearchFaces where
  toJSON SearchFaces' {..} =
    object
      ( catMaybes
          [ ("MaxFaces" .=) <$> _sfMaxFaces,
            ("FaceMatchThreshold" .=) <$> _sfFaceMatchThreshold,
            Just ("CollectionId" .= _sfCollectionId),
            Just ("FaceId" .= _sfFaceId)
          ]
      )

instance ToPath SearchFaces where
  toPath = const "/"

instance ToQuery SearchFaces where
  toQuery = const mempty

-- | /See:/ 'searchFacesResponse' smart constructor.
data SearchFacesResponse = SearchFacesResponse'
  { _sfrrsFaceModelVersion ::
      !(Maybe Text),
    _sfrrsFaceMatches ::
      !(Maybe [FaceMatch]),
    _sfrrsSearchedFaceId ::
      !(Maybe Text),
    _sfrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SearchFacesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sfrrsFaceModelVersion' - Version number of the face detection model associated with the input collection (@CollectionId@ ).
--
-- * 'sfrrsFaceMatches' - An array of faces that matched the input face, along with the confidence in the match.
--
-- * 'sfrrsSearchedFaceId' - ID of the face that was searched for matches in a collection.
--
-- * 'sfrrsResponseStatus' - -- | The response status code.
searchFacesResponse ::
  -- | 'sfrrsResponseStatus'
  Int ->
  SearchFacesResponse
searchFacesResponse pResponseStatus_ =
  SearchFacesResponse'
    { _sfrrsFaceModelVersion =
        Nothing,
      _sfrrsFaceMatches = Nothing,
      _sfrrsSearchedFaceId = Nothing,
      _sfrrsResponseStatus = pResponseStatus_
    }

-- | Version number of the face detection model associated with the input collection (@CollectionId@ ).
sfrrsFaceModelVersion :: Lens' SearchFacesResponse (Maybe Text)
sfrrsFaceModelVersion = lens _sfrrsFaceModelVersion (\s a -> s {_sfrrsFaceModelVersion = a})

-- | An array of faces that matched the input face, along with the confidence in the match.
sfrrsFaceMatches :: Lens' SearchFacesResponse [FaceMatch]
sfrrsFaceMatches = lens _sfrrsFaceMatches (\s a -> s {_sfrrsFaceMatches = a}) . _Default . _Coerce

-- | ID of the face that was searched for matches in a collection.
sfrrsSearchedFaceId :: Lens' SearchFacesResponse (Maybe Text)
sfrrsSearchedFaceId = lens _sfrrsSearchedFaceId (\s a -> s {_sfrrsSearchedFaceId = a})

-- | -- | The response status code.
sfrrsResponseStatus :: Lens' SearchFacesResponse Int
sfrrsResponseStatus = lens _sfrrsResponseStatus (\s a -> s {_sfrrsResponseStatus = a})

instance NFData SearchFacesResponse
