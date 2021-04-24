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
-- Module      : Network.AWS.GuardDuty.UpdateDetector
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the Amazon GuardDuty detector specified by the detectorId.
module Network.AWS.GuardDuty.UpdateDetector
  ( -- * Creating a Request
    updateDetector,
    UpdateDetector,

    -- * Request Lenses
    udEnable,
    udDataSources,
    udFindingPublishingFrequency,
    udDetectorId,

    -- * Destructuring the Response
    updateDetectorResponse,
    UpdateDetectorResponse,

    -- * Response Lenses
    udrrsResponseStatus,
  )
where

import Network.AWS.GuardDuty.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateDetector' smart constructor.
data UpdateDetector = UpdateDetector'
  { _udEnable ::
      !(Maybe Bool),
    _udDataSources ::
      !(Maybe DataSourceConfigurations),
    _udFindingPublishingFrequency ::
      !(Maybe FindingPublishingFrequency),
    _udDetectorId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateDetector' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udEnable' - Specifies whether the detector is enabled or not enabled.
--
-- * 'udDataSources' - Describes which data sources will be updated.
--
-- * 'udFindingPublishingFrequency' - An enum value that specifies how frequently findings are exported, such as to CloudWatch Events.
--
-- * 'udDetectorId' - The unique ID of the detector to update.
updateDetector ::
  -- | 'udDetectorId'
  Text ->
  UpdateDetector
updateDetector pDetectorId_ =
  UpdateDetector'
    { _udEnable = Nothing,
      _udDataSources = Nothing,
      _udFindingPublishingFrequency = Nothing,
      _udDetectorId = pDetectorId_
    }

-- | Specifies whether the detector is enabled or not enabled.
udEnable :: Lens' UpdateDetector (Maybe Bool)
udEnable = lens _udEnable (\s a -> s {_udEnable = a})

-- | Describes which data sources will be updated.
udDataSources :: Lens' UpdateDetector (Maybe DataSourceConfigurations)
udDataSources = lens _udDataSources (\s a -> s {_udDataSources = a})

-- | An enum value that specifies how frequently findings are exported, such as to CloudWatch Events.
udFindingPublishingFrequency :: Lens' UpdateDetector (Maybe FindingPublishingFrequency)
udFindingPublishingFrequency = lens _udFindingPublishingFrequency (\s a -> s {_udFindingPublishingFrequency = a})

-- | The unique ID of the detector to update.
udDetectorId :: Lens' UpdateDetector Text
udDetectorId = lens _udDetectorId (\s a -> s {_udDetectorId = a})

instance AWSRequest UpdateDetector where
  type Rs UpdateDetector = UpdateDetectorResponse
  request = postJSON guardDuty
  response =
    receiveEmpty
      ( \s h x ->
          UpdateDetectorResponse' <$> (pure (fromEnum s))
      )

instance Hashable UpdateDetector

instance NFData UpdateDetector

instance ToHeaders UpdateDetector where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateDetector where
  toJSON UpdateDetector' {..} =
    object
      ( catMaybes
          [ ("enable" .=) <$> _udEnable,
            ("dataSources" .=) <$> _udDataSources,
            ("findingPublishingFrequency" .=)
              <$> _udFindingPublishingFrequency
          ]
      )

instance ToPath UpdateDetector where
  toPath UpdateDetector' {..} =
    mconcat ["/detector/", toBS _udDetectorId]

instance ToQuery UpdateDetector where
  toQuery = const mempty

-- | /See:/ 'updateDetectorResponse' smart constructor.
newtype UpdateDetectorResponse = UpdateDetectorResponse'
  { _udrrsResponseStatus ::
      Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateDetectorResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udrrsResponseStatus' - -- | The response status code.
updateDetectorResponse ::
  -- | 'udrrsResponseStatus'
  Int ->
  UpdateDetectorResponse
updateDetectorResponse pResponseStatus_ =
  UpdateDetectorResponse'
    { _udrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
udrrsResponseStatus :: Lens' UpdateDetectorResponse Int
udrrsResponseStatus = lens _udrrsResponseStatus (\s a -> s {_udrrsResponseStatus = a})

instance NFData UpdateDetectorResponse
