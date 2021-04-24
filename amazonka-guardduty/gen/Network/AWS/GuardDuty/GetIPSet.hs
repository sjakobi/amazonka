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
-- Module      : Network.AWS.GuardDuty.GetIPSet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the IPSet specified by the @ipSetId@ .
module Network.AWS.GuardDuty.GetIPSet
  ( -- * Creating a Request
    getIPSet,
    GetIPSet,

    -- * Request Lenses
    gisDetectorId,
    gisIPSetId,

    -- * Destructuring the Response
    getIPSetResponse,
    GetIPSetResponse,

    -- * Response Lenses
    gisrrsTags,
    gisrrsResponseStatus,
    gisrrsName,
    gisrrsFormat,
    gisrrsLocation,
    gisrrsStatus,
  )
where

import Network.AWS.GuardDuty.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getIPSet' smart constructor.
data GetIPSet = GetIPSet'
  { _gisDetectorId :: !Text,
    _gisIPSetId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetIPSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gisDetectorId' - The unique ID of the detector that the IPSet is associated with.
--
-- * 'gisIPSetId' - The unique ID of the IPSet to retrieve.
getIPSet ::
  -- | 'gisDetectorId'
  Text ->
  -- | 'gisIPSetId'
  Text ->
  GetIPSet
getIPSet pDetectorId_ pIPSetId_ =
  GetIPSet'
    { _gisDetectorId = pDetectorId_,
      _gisIPSetId = pIPSetId_
    }

-- | The unique ID of the detector that the IPSet is associated with.
gisDetectorId :: Lens' GetIPSet Text
gisDetectorId = lens _gisDetectorId (\s a -> s {_gisDetectorId = a})

-- | The unique ID of the IPSet to retrieve.
gisIPSetId :: Lens' GetIPSet Text
gisIPSetId = lens _gisIPSetId (\s a -> s {_gisIPSetId = a})

instance AWSRequest GetIPSet where
  type Rs GetIPSet = GetIPSetResponse
  request = get guardDuty
  response =
    receiveJSON
      ( \s h x ->
          GetIPSetResponse'
            <$> (x .?> "tags" .!@ mempty)
            <*> (pure (fromEnum s))
            <*> (x .:> "name")
            <*> (x .:> "format")
            <*> (x .:> "location")
            <*> (x .:> "status")
      )

instance Hashable GetIPSet

instance NFData GetIPSet

instance ToHeaders GetIPSet where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetIPSet where
  toPath GetIPSet' {..} =
    mconcat
      [ "/detector/",
        toBS _gisDetectorId,
        "/ipset/",
        toBS _gisIPSetId
      ]

instance ToQuery GetIPSet where
  toQuery = const mempty

-- | /See:/ 'getIPSetResponse' smart constructor.
data GetIPSetResponse = GetIPSetResponse'
  { _gisrrsTags ::
      !(Maybe (Map Text Text)),
    _gisrrsResponseStatus :: !Int,
    _gisrrsName :: !Text,
    _gisrrsFormat :: !IPSetFormat,
    _gisrrsLocation :: !Text,
    _gisrrsStatus :: !IPSetStatus
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetIPSetResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gisrrsTags' - The tags of the IPSet resource.
--
-- * 'gisrrsResponseStatus' - -- | The response status code.
--
-- * 'gisrrsName' - The user-friendly name for the IPSet.
--
-- * 'gisrrsFormat' - The format of the file that contains the IPSet.
--
-- * 'gisrrsLocation' - The URI of the file that contains the IPSet. For example: https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key.
--
-- * 'gisrrsStatus' - The status of IPSet file that was uploaded.
getIPSetResponse ::
  -- | 'gisrrsResponseStatus'
  Int ->
  -- | 'gisrrsName'
  Text ->
  -- | 'gisrrsFormat'
  IPSetFormat ->
  -- | 'gisrrsLocation'
  Text ->
  -- | 'gisrrsStatus'
  IPSetStatus ->
  GetIPSetResponse
getIPSetResponse
  pResponseStatus_
  pName_
  pFormat_
  pLocation_
  pStatus_ =
    GetIPSetResponse'
      { _gisrrsTags = Nothing,
        _gisrrsResponseStatus = pResponseStatus_,
        _gisrrsName = pName_,
        _gisrrsFormat = pFormat_,
        _gisrrsLocation = pLocation_,
        _gisrrsStatus = pStatus_
      }

-- | The tags of the IPSet resource.
gisrrsTags :: Lens' GetIPSetResponse (HashMap Text Text)
gisrrsTags = lens _gisrrsTags (\s a -> s {_gisrrsTags = a}) . _Default . _Map

-- | -- | The response status code.
gisrrsResponseStatus :: Lens' GetIPSetResponse Int
gisrrsResponseStatus = lens _gisrrsResponseStatus (\s a -> s {_gisrrsResponseStatus = a})

-- | The user-friendly name for the IPSet.
gisrrsName :: Lens' GetIPSetResponse Text
gisrrsName = lens _gisrrsName (\s a -> s {_gisrrsName = a})

-- | The format of the file that contains the IPSet.
gisrrsFormat :: Lens' GetIPSetResponse IPSetFormat
gisrrsFormat = lens _gisrrsFormat (\s a -> s {_gisrrsFormat = a})

-- | The URI of the file that contains the IPSet. For example: https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key.
gisrrsLocation :: Lens' GetIPSetResponse Text
gisrrsLocation = lens _gisrrsLocation (\s a -> s {_gisrrsLocation = a})

-- | The status of IPSet file that was uploaded.
gisrrsStatus :: Lens' GetIPSetResponse IPSetStatus
gisrrsStatus = lens _gisrrsStatus (\s a -> s {_gisrrsStatus = a})

instance NFData GetIPSetResponse
