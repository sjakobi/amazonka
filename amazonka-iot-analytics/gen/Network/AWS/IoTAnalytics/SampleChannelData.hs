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
-- Module      : Network.AWS.IoTAnalytics.SampleChannelData
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a sample of messages from the specified channel ingested during the specified timeframe. Up to 10 messages can be retrieved.
module Network.AWS.IoTAnalytics.SampleChannelData
  ( -- * Creating a Request
    sampleChannelData,
    SampleChannelData,

    -- * Request Lenses
    scdMaxMessages,
    scdStartTime,
    scdEndTime,
    scdChannelName,

    -- * Destructuring the Response
    sampleChannelDataResponse,
    SampleChannelDataResponse,

    -- * Response Lenses
    scdrrsPayloads,
    scdrrsResponseStatus,
  )
where

import Network.AWS.IoTAnalytics.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'sampleChannelData' smart constructor.
data SampleChannelData = SampleChannelData'
  { _scdMaxMessages ::
      !(Maybe Nat),
    _scdStartTime :: !(Maybe POSIX),
    _scdEndTime :: !(Maybe POSIX),
    _scdChannelName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SampleChannelData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scdMaxMessages' - The number of sample messages to be retrieved. The limit is 10. The default is also 10.
--
-- * 'scdStartTime' - The start of the time window from which sample messages are retrieved.
--
-- * 'scdEndTime' - The end of the time window from which sample messages are retrieved.
--
-- * 'scdChannelName' - The name of the channel whose message samples are retrieved.
sampleChannelData ::
  -- | 'scdChannelName'
  Text ->
  SampleChannelData
sampleChannelData pChannelName_ =
  SampleChannelData'
    { _scdMaxMessages = Nothing,
      _scdStartTime = Nothing,
      _scdEndTime = Nothing,
      _scdChannelName = pChannelName_
    }

-- | The number of sample messages to be retrieved. The limit is 10. The default is also 10.
scdMaxMessages :: Lens' SampleChannelData (Maybe Natural)
scdMaxMessages = lens _scdMaxMessages (\s a -> s {_scdMaxMessages = a}) . mapping _Nat

-- | The start of the time window from which sample messages are retrieved.
scdStartTime :: Lens' SampleChannelData (Maybe UTCTime)
scdStartTime = lens _scdStartTime (\s a -> s {_scdStartTime = a}) . mapping _Time

-- | The end of the time window from which sample messages are retrieved.
scdEndTime :: Lens' SampleChannelData (Maybe UTCTime)
scdEndTime = lens _scdEndTime (\s a -> s {_scdEndTime = a}) . mapping _Time

-- | The name of the channel whose message samples are retrieved.
scdChannelName :: Lens' SampleChannelData Text
scdChannelName = lens _scdChannelName (\s a -> s {_scdChannelName = a})

instance AWSRequest SampleChannelData where
  type Rs SampleChannelData = SampleChannelDataResponse
  request = get ioTAnalytics
  response =
    receiveJSON
      ( \s h x ->
          SampleChannelDataResponse'
            <$> (x .?> "payloads") <*> (pure (fromEnum s))
      )

instance Hashable SampleChannelData

instance NFData SampleChannelData

instance ToHeaders SampleChannelData where
  toHeaders = const mempty

instance ToPath SampleChannelData where
  toPath SampleChannelData' {..} =
    mconcat
      ["/channels/", toBS _scdChannelName, "/sample"]

instance ToQuery SampleChannelData where
  toQuery SampleChannelData' {..} =
    mconcat
      [ "maxMessages" =: _scdMaxMessages,
        "startTime" =: _scdStartTime,
        "endTime" =: _scdEndTime
      ]

-- | /See:/ 'sampleChannelDataResponse' smart constructor.
data SampleChannelDataResponse = SampleChannelDataResponse'
  { _scdrrsPayloads ::
      !( Maybe
           (List1 Base64)
       ),
    _scdrrsResponseStatus ::
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

-- | Creates a value of 'SampleChannelDataResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scdrrsPayloads' - The list of message samples. Each sample message is returned as a base64-encoded string.
--
-- * 'scdrrsResponseStatus' - -- | The response status code.
sampleChannelDataResponse ::
  -- | 'scdrrsResponseStatus'
  Int ->
  SampleChannelDataResponse
sampleChannelDataResponse pResponseStatus_ =
  SampleChannelDataResponse'
    { _scdrrsPayloads =
        Nothing,
      _scdrrsResponseStatus = pResponseStatus_
    }

-- | The list of message samples. Each sample message is returned as a base64-encoded string.
scdrrsPayloads :: Lens' SampleChannelDataResponse (Maybe (NonEmpty ByteString))
scdrrsPayloads = lens _scdrrsPayloads (\s a -> s {_scdrrsPayloads = a}) . mapping _List1

-- | -- | The response status code.
scdrrsResponseStatus :: Lens' SampleChannelDataResponse Int
scdrrsResponseStatus = lens _scdrrsResponseStatus (\s a -> s {_scdrrsResponseStatus = a})

instance NFData SampleChannelDataResponse
