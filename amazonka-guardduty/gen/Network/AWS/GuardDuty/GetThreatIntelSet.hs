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
-- Module      : Network.AWS.GuardDuty.GetThreatIntelSet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the ThreatIntelSet that is specified by the ThreatIntelSet ID.
module Network.AWS.GuardDuty.GetThreatIntelSet
  ( -- * Creating a Request
    getThreatIntelSet,
    GetThreatIntelSet,

    -- * Request Lenses
    gtisDetectorId,
    gtisThreatIntelSetId,

    -- * Destructuring the Response
    getThreatIntelSetResponse,
    GetThreatIntelSetResponse,

    -- * Response Lenses
    gtisrrsTags,
    gtisrrsResponseStatus,
    gtisrrsName,
    gtisrrsFormat,
    gtisrrsLocation,
    gtisrrsStatus,
  )
where

import Network.AWS.GuardDuty.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getThreatIntelSet' smart constructor.
data GetThreatIntelSet = GetThreatIntelSet'
  { _gtisDetectorId ::
      !Text,
    _gtisThreatIntelSetId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetThreatIntelSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtisDetectorId' - The unique ID of the detector that the threatIntelSet is associated with.
--
-- * 'gtisThreatIntelSetId' - The unique ID of the threatIntelSet that you want to get.
getThreatIntelSet ::
  -- | 'gtisDetectorId'
  Text ->
  -- | 'gtisThreatIntelSetId'
  Text ->
  GetThreatIntelSet
getThreatIntelSet pDetectorId_ pThreatIntelSetId_ =
  GetThreatIntelSet'
    { _gtisDetectorId = pDetectorId_,
      _gtisThreatIntelSetId = pThreatIntelSetId_
    }

-- | The unique ID of the detector that the threatIntelSet is associated with.
gtisDetectorId :: Lens' GetThreatIntelSet Text
gtisDetectorId = lens _gtisDetectorId (\s a -> s {_gtisDetectorId = a})

-- | The unique ID of the threatIntelSet that you want to get.
gtisThreatIntelSetId :: Lens' GetThreatIntelSet Text
gtisThreatIntelSetId = lens _gtisThreatIntelSetId (\s a -> s {_gtisThreatIntelSetId = a})

instance AWSRequest GetThreatIntelSet where
  type Rs GetThreatIntelSet = GetThreatIntelSetResponse
  request = get guardDuty
  response =
    receiveJSON
      ( \s h x ->
          GetThreatIntelSetResponse'
            <$> (x .?> "tags" .!@ mempty)
            <*> (pure (fromEnum s))
            <*> (x .:> "name")
            <*> (x .:> "format")
            <*> (x .:> "location")
            <*> (x .:> "status")
      )

instance Hashable GetThreatIntelSet

instance NFData GetThreatIntelSet

instance ToHeaders GetThreatIntelSet where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetThreatIntelSet where
  toPath GetThreatIntelSet' {..} =
    mconcat
      [ "/detector/",
        toBS _gtisDetectorId,
        "/threatintelset/",
        toBS _gtisThreatIntelSetId
      ]

instance ToQuery GetThreatIntelSet where
  toQuery = const mempty

-- | /See:/ 'getThreatIntelSetResponse' smart constructor.
data GetThreatIntelSetResponse = GetThreatIntelSetResponse'
  { _gtisrrsTags ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _gtisrrsResponseStatus ::
      !Int,
    _gtisrrsName ::
      !Text,
    _gtisrrsFormat ::
      !ThreatIntelSetFormat,
    _gtisrrsLocation ::
      !Text,
    _gtisrrsStatus ::
      !ThreatIntelSetStatus
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetThreatIntelSetResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtisrrsTags' - The tags of the threat list resource.
--
-- * 'gtisrrsResponseStatus' - -- | The response status code.
--
-- * 'gtisrrsName' - A user-friendly ThreatIntelSet name displayed in all findings that are generated by activity that involves IP addresses included in this ThreatIntelSet.
--
-- * 'gtisrrsFormat' - The format of the threatIntelSet.
--
-- * 'gtisrrsLocation' - The URI of the file that contains the ThreatIntelSet. For example: https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key.
--
-- * 'gtisrrsStatus' - The status of threatIntelSet file uploaded.
getThreatIntelSetResponse ::
  -- | 'gtisrrsResponseStatus'
  Int ->
  -- | 'gtisrrsName'
  Text ->
  -- | 'gtisrrsFormat'
  ThreatIntelSetFormat ->
  -- | 'gtisrrsLocation'
  Text ->
  -- | 'gtisrrsStatus'
  ThreatIntelSetStatus ->
  GetThreatIntelSetResponse
getThreatIntelSetResponse
  pResponseStatus_
  pName_
  pFormat_
  pLocation_
  pStatus_ =
    GetThreatIntelSetResponse'
      { _gtisrrsTags = Nothing,
        _gtisrrsResponseStatus = pResponseStatus_,
        _gtisrrsName = pName_,
        _gtisrrsFormat = pFormat_,
        _gtisrrsLocation = pLocation_,
        _gtisrrsStatus = pStatus_
      }

-- | The tags of the threat list resource.
gtisrrsTags :: Lens' GetThreatIntelSetResponse (HashMap Text Text)
gtisrrsTags = lens _gtisrrsTags (\s a -> s {_gtisrrsTags = a}) . _Default . _Map

-- | -- | The response status code.
gtisrrsResponseStatus :: Lens' GetThreatIntelSetResponse Int
gtisrrsResponseStatus = lens _gtisrrsResponseStatus (\s a -> s {_gtisrrsResponseStatus = a})

-- | A user-friendly ThreatIntelSet name displayed in all findings that are generated by activity that involves IP addresses included in this ThreatIntelSet.
gtisrrsName :: Lens' GetThreatIntelSetResponse Text
gtisrrsName = lens _gtisrrsName (\s a -> s {_gtisrrsName = a})

-- | The format of the threatIntelSet.
gtisrrsFormat :: Lens' GetThreatIntelSetResponse ThreatIntelSetFormat
gtisrrsFormat = lens _gtisrrsFormat (\s a -> s {_gtisrrsFormat = a})

-- | The URI of the file that contains the ThreatIntelSet. For example: https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key.
gtisrrsLocation :: Lens' GetThreatIntelSetResponse Text
gtisrrsLocation = lens _gtisrrsLocation (\s a -> s {_gtisrrsLocation = a})

-- | The status of threatIntelSet file uploaded.
gtisrrsStatus :: Lens' GetThreatIntelSetResponse ThreatIntelSetStatus
gtisrrsStatus = lens _gtisrrsStatus (\s a -> s {_gtisrrsStatus = a})

instance NFData GetThreatIntelSetResponse
