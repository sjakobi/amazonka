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
-- Module      : Network.AWS.GuardDuty.GetDetector
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves an Amazon GuardDuty detector specified by the detectorId.
module Network.AWS.GuardDuty.GetDetector
  ( -- * Creating a Request
    getDetector,
    GetDetector,

    -- * Request Lenses
    gdDetectorId,

    -- * Destructuring the Response
    getDetectorResponse,
    GetDetectorResponse,

    -- * Response Lenses
    gdrrsDataSources,
    gdrrsFindingPublishingFrequency,
    gdrrsUpdatedAt,
    gdrrsCreatedAt,
    gdrrsTags,
    gdrrsResponseStatus,
    gdrrsServiceRole,
    gdrrsStatus,
  )
where

import Network.AWS.GuardDuty.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getDetector' smart constructor.
newtype GetDetector = GetDetector'
  { _gdDetectorId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetDetector' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdDetectorId' - The unique ID of the detector that you want to get.
getDetector ::
  -- | 'gdDetectorId'
  Text ->
  GetDetector
getDetector pDetectorId_ =
  GetDetector' {_gdDetectorId = pDetectorId_}

-- | The unique ID of the detector that you want to get.
gdDetectorId :: Lens' GetDetector Text
gdDetectorId = lens _gdDetectorId (\s a -> s {_gdDetectorId = a})

instance AWSRequest GetDetector where
  type Rs GetDetector = GetDetectorResponse
  request = get guardDuty
  response =
    receiveJSON
      ( \s h x ->
          GetDetectorResponse'
            <$> (x .?> "dataSources")
            <*> (x .?> "findingPublishingFrequency")
            <*> (x .?> "updatedAt")
            <*> (x .?> "createdAt")
            <*> (x .?> "tags" .!@ mempty)
            <*> (pure (fromEnum s))
            <*> (x .:> "serviceRole")
            <*> (x .:> "status")
      )

instance Hashable GetDetector

instance NFData GetDetector

instance ToHeaders GetDetector where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetDetector where
  toPath GetDetector' {..} =
    mconcat ["/detector/", toBS _gdDetectorId]

instance ToQuery GetDetector where
  toQuery = const mempty

-- | /See:/ 'getDetectorResponse' smart constructor.
data GetDetectorResponse = GetDetectorResponse'
  { _gdrrsDataSources ::
      !( Maybe
           DataSourceConfigurationsResult
       ),
    _gdrrsFindingPublishingFrequency ::
      !( Maybe
           FindingPublishingFrequency
       ),
    _gdrrsUpdatedAt ::
      !(Maybe Text),
    _gdrrsCreatedAt ::
      !(Maybe Text),
    _gdrrsTags ::
      !(Maybe (Map Text Text)),
    _gdrrsResponseStatus :: !Int,
    _gdrrsServiceRole :: !Text,
    _gdrrsStatus :: !DetectorStatus
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetDetectorResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdrrsDataSources' - Describes which data sources are enabled for the detector.
--
-- * 'gdrrsFindingPublishingFrequency' - The publishing frequency of the finding.
--
-- * 'gdrrsUpdatedAt' - The last-updated timestamp for the detector.
--
-- * 'gdrrsCreatedAt' - The timestamp of when the detector was created.
--
-- * 'gdrrsTags' - The tags of the detector resource.
--
-- * 'gdrrsResponseStatus' - -- | The response status code.
--
-- * 'gdrrsServiceRole' - The GuardDuty service role.
--
-- * 'gdrrsStatus' - The detector status.
getDetectorResponse ::
  -- | 'gdrrsResponseStatus'
  Int ->
  -- | 'gdrrsServiceRole'
  Text ->
  -- | 'gdrrsStatus'
  DetectorStatus ->
  GetDetectorResponse
getDetectorResponse
  pResponseStatus_
  pServiceRole_
  pStatus_ =
    GetDetectorResponse'
      { _gdrrsDataSources = Nothing,
        _gdrrsFindingPublishingFrequency = Nothing,
        _gdrrsUpdatedAt = Nothing,
        _gdrrsCreatedAt = Nothing,
        _gdrrsTags = Nothing,
        _gdrrsResponseStatus = pResponseStatus_,
        _gdrrsServiceRole = pServiceRole_,
        _gdrrsStatus = pStatus_
      }

-- | Describes which data sources are enabled for the detector.
gdrrsDataSources :: Lens' GetDetectorResponse (Maybe DataSourceConfigurationsResult)
gdrrsDataSources = lens _gdrrsDataSources (\s a -> s {_gdrrsDataSources = a})

-- | The publishing frequency of the finding.
gdrrsFindingPublishingFrequency :: Lens' GetDetectorResponse (Maybe FindingPublishingFrequency)
gdrrsFindingPublishingFrequency = lens _gdrrsFindingPublishingFrequency (\s a -> s {_gdrrsFindingPublishingFrequency = a})

-- | The last-updated timestamp for the detector.
gdrrsUpdatedAt :: Lens' GetDetectorResponse (Maybe Text)
gdrrsUpdatedAt = lens _gdrrsUpdatedAt (\s a -> s {_gdrrsUpdatedAt = a})

-- | The timestamp of when the detector was created.
gdrrsCreatedAt :: Lens' GetDetectorResponse (Maybe Text)
gdrrsCreatedAt = lens _gdrrsCreatedAt (\s a -> s {_gdrrsCreatedAt = a})

-- | The tags of the detector resource.
gdrrsTags :: Lens' GetDetectorResponse (HashMap Text Text)
gdrrsTags = lens _gdrrsTags (\s a -> s {_gdrrsTags = a}) . _Default . _Map

-- | -- | The response status code.
gdrrsResponseStatus :: Lens' GetDetectorResponse Int
gdrrsResponseStatus = lens _gdrrsResponseStatus (\s a -> s {_gdrrsResponseStatus = a})

-- | The GuardDuty service role.
gdrrsServiceRole :: Lens' GetDetectorResponse Text
gdrrsServiceRole = lens _gdrrsServiceRole (\s a -> s {_gdrrsServiceRole = a})

-- | The detector status.
gdrrsStatus :: Lens' GetDetectorResponse DetectorStatus
gdrrsStatus = lens _gdrrsStatus (\s a -> s {_gdrrsStatus = a})

instance NFData GetDetectorResponse
