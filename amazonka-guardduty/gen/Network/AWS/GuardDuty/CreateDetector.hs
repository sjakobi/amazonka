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
-- Module      : Network.AWS.GuardDuty.CreateDetector
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a single Amazon GuardDuty detector. A detector is a resource that represents the GuardDuty service. To start using GuardDuty, you must create a detector in each Region where you enable the service. You can have only one detector per account per Region. All data sources are enabled in a new detector by default.
module Network.AWS.GuardDuty.CreateDetector
  ( -- * Creating a Request
    createDetector,
    CreateDetector,

    -- * Request Lenses
    cdDataSources,
    cdFindingPublishingFrequency,
    cdTags,
    cdClientToken,
    cdEnable,

    -- * Destructuring the Response
    createDetectorResponse,
    CreateDetectorResponse,

    -- * Response Lenses
    cdrrsDetectorId,
    cdrrsResponseStatus,
  )
where

import Network.AWS.GuardDuty.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createDetector' smart constructor.
data CreateDetector = CreateDetector'
  { _cdDataSources ::
      !(Maybe DataSourceConfigurations),
    _cdFindingPublishingFrequency ::
      !(Maybe FindingPublishingFrequency),
    _cdTags :: !(Maybe (Map Text Text)),
    _cdClientToken :: !(Maybe Text),
    _cdEnable :: !Bool
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateDetector' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdDataSources' - Describes which data sources will be enabled for the detector.
--
-- * 'cdFindingPublishingFrequency' - A value that specifies how frequently updated findings are exported.
--
-- * 'cdTags' - The tags to be added to a new detector resource.
--
-- * 'cdClientToken' - The idempotency token for the create request.
--
-- * 'cdEnable' - A Boolean value that specifies whether the detector is to be enabled.
createDetector ::
  -- | 'cdEnable'
  Bool ->
  CreateDetector
createDetector pEnable_ =
  CreateDetector'
    { _cdDataSources = Nothing,
      _cdFindingPublishingFrequency = Nothing,
      _cdTags = Nothing,
      _cdClientToken = Nothing,
      _cdEnable = pEnable_
    }

-- | Describes which data sources will be enabled for the detector.
cdDataSources :: Lens' CreateDetector (Maybe DataSourceConfigurations)
cdDataSources = lens _cdDataSources (\s a -> s {_cdDataSources = a})

-- | A value that specifies how frequently updated findings are exported.
cdFindingPublishingFrequency :: Lens' CreateDetector (Maybe FindingPublishingFrequency)
cdFindingPublishingFrequency = lens _cdFindingPublishingFrequency (\s a -> s {_cdFindingPublishingFrequency = a})

-- | The tags to be added to a new detector resource.
cdTags :: Lens' CreateDetector (HashMap Text Text)
cdTags = lens _cdTags (\s a -> s {_cdTags = a}) . _Default . _Map

-- | The idempotency token for the create request.
cdClientToken :: Lens' CreateDetector (Maybe Text)
cdClientToken = lens _cdClientToken (\s a -> s {_cdClientToken = a})

-- | A Boolean value that specifies whether the detector is to be enabled.
cdEnable :: Lens' CreateDetector Bool
cdEnable = lens _cdEnable (\s a -> s {_cdEnable = a})

instance AWSRequest CreateDetector where
  type Rs CreateDetector = CreateDetectorResponse
  request = postJSON guardDuty
  response =
    receiveJSON
      ( \s h x ->
          CreateDetectorResponse'
            <$> (x .?> "detectorId") <*> (pure (fromEnum s))
      )

instance Hashable CreateDetector

instance NFData CreateDetector

instance ToHeaders CreateDetector where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateDetector where
  toJSON CreateDetector' {..} =
    object
      ( catMaybes
          [ ("dataSources" .=) <$> _cdDataSources,
            ("findingPublishingFrequency" .=)
              <$> _cdFindingPublishingFrequency,
            ("tags" .=) <$> _cdTags,
            ("clientToken" .=) <$> _cdClientToken,
            Just ("enable" .= _cdEnable)
          ]
      )

instance ToPath CreateDetector where
  toPath = const "/detector"

instance ToQuery CreateDetector where
  toQuery = const mempty

-- | /See:/ 'createDetectorResponse' smart constructor.
data CreateDetectorResponse = CreateDetectorResponse'
  { _cdrrsDetectorId ::
      !(Maybe Text),
    _cdrrsResponseStatus ::
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

-- | Creates a value of 'CreateDetectorResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdrrsDetectorId' - The unique ID of the created detector.
--
-- * 'cdrrsResponseStatus' - -- | The response status code.
createDetectorResponse ::
  -- | 'cdrrsResponseStatus'
  Int ->
  CreateDetectorResponse
createDetectorResponse pResponseStatus_ =
  CreateDetectorResponse'
    { _cdrrsDetectorId = Nothing,
      _cdrrsResponseStatus = pResponseStatus_
    }

-- | The unique ID of the created detector.
cdrrsDetectorId :: Lens' CreateDetectorResponse (Maybe Text)
cdrrsDetectorId = lens _cdrrsDetectorId (\s a -> s {_cdrrsDetectorId = a})

-- | -- | The response status code.
cdrrsResponseStatus :: Lens' CreateDetectorResponse Int
cdrrsResponseStatus = lens _cdrrsResponseStatus (\s a -> s {_cdrrsResponseStatus = a})

instance NFData CreateDetectorResponse
