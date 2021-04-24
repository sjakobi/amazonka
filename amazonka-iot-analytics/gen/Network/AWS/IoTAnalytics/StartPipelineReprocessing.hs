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
-- Module      : Network.AWS.IoTAnalytics.StartPipelineReprocessing
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts the reprocessing of raw message data through the pipeline.
module Network.AWS.IoTAnalytics.StartPipelineReprocessing
  ( -- * Creating a Request
    startPipelineReprocessing,
    StartPipelineReprocessing,

    -- * Request Lenses
    sprChannelMessages,
    sprStartTime,
    sprEndTime,
    sprPipelineName,

    -- * Destructuring the Response
    startPipelineReprocessingResponse,
    StartPipelineReprocessingResponse,

    -- * Response Lenses
    sprrrsReprocessingId,
    sprrrsResponseStatus,
  )
where

import Network.AWS.IoTAnalytics.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'startPipelineReprocessing' smart constructor.
data StartPipelineReprocessing = StartPipelineReprocessing'
  { _sprChannelMessages ::
      !( Maybe
           ChannelMessages
       ),
    _sprStartTime ::
      !(Maybe POSIX),
    _sprEndTime ::
      !(Maybe POSIX),
    _sprPipelineName ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'StartPipelineReprocessing' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sprChannelMessages' - Specifies one or more sets of channel messages that you want to reprocess. If you use the @channelMessages@ object, you must not specify a value for @startTime@ and @endTime@ .
--
-- * 'sprStartTime' - The start time (inclusive) of raw message data that is reprocessed. If you specify a value for the @startTime@ parameter, you must not use the @channelMessages@ object.
--
-- * 'sprEndTime' - The end time (exclusive) of raw message data that is reprocessed. If you specify a value for the @endTime@ parameter, you must not use the @channelMessages@ object.
--
-- * 'sprPipelineName' - The name of the pipeline on which to start reprocessing.
startPipelineReprocessing ::
  -- | 'sprPipelineName'
  Text ->
  StartPipelineReprocessing
startPipelineReprocessing pPipelineName_ =
  StartPipelineReprocessing'
    { _sprChannelMessages =
        Nothing,
      _sprStartTime = Nothing,
      _sprEndTime = Nothing,
      _sprPipelineName = pPipelineName_
    }

-- | Specifies one or more sets of channel messages that you want to reprocess. If you use the @channelMessages@ object, you must not specify a value for @startTime@ and @endTime@ .
sprChannelMessages :: Lens' StartPipelineReprocessing (Maybe ChannelMessages)
sprChannelMessages = lens _sprChannelMessages (\s a -> s {_sprChannelMessages = a})

-- | The start time (inclusive) of raw message data that is reprocessed. If you specify a value for the @startTime@ parameter, you must not use the @channelMessages@ object.
sprStartTime :: Lens' StartPipelineReprocessing (Maybe UTCTime)
sprStartTime = lens _sprStartTime (\s a -> s {_sprStartTime = a}) . mapping _Time

-- | The end time (exclusive) of raw message data that is reprocessed. If you specify a value for the @endTime@ parameter, you must not use the @channelMessages@ object.
sprEndTime :: Lens' StartPipelineReprocessing (Maybe UTCTime)
sprEndTime = lens _sprEndTime (\s a -> s {_sprEndTime = a}) . mapping _Time

-- | The name of the pipeline on which to start reprocessing.
sprPipelineName :: Lens' StartPipelineReprocessing Text
sprPipelineName = lens _sprPipelineName (\s a -> s {_sprPipelineName = a})

instance AWSRequest StartPipelineReprocessing where
  type
    Rs StartPipelineReprocessing =
      StartPipelineReprocessingResponse
  request = postJSON ioTAnalytics
  response =
    receiveJSON
      ( \s h x ->
          StartPipelineReprocessingResponse'
            <$> (x .?> "reprocessingId") <*> (pure (fromEnum s))
      )

instance Hashable StartPipelineReprocessing

instance NFData StartPipelineReprocessing

instance ToHeaders StartPipelineReprocessing where
  toHeaders = const mempty

instance ToJSON StartPipelineReprocessing where
  toJSON StartPipelineReprocessing' {..} =
    object
      ( catMaybes
          [ ("channelMessages" .=) <$> _sprChannelMessages,
            ("startTime" .=) <$> _sprStartTime,
            ("endTime" .=) <$> _sprEndTime
          ]
      )

instance ToPath StartPipelineReprocessing where
  toPath StartPipelineReprocessing' {..} =
    mconcat
      [ "/pipelines/",
        toBS _sprPipelineName,
        "/reprocessing"
      ]

instance ToQuery StartPipelineReprocessing where
  toQuery = const mempty

-- | /See:/ 'startPipelineReprocessingResponse' smart constructor.
data StartPipelineReprocessingResponse = StartPipelineReprocessingResponse'
  { _sprrrsReprocessingId ::
      !( Maybe
           Text
       ),
    _sprrrsResponseStatus ::
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

-- | Creates a value of 'StartPipelineReprocessingResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sprrrsReprocessingId' - The ID of the pipeline reprocessing activity that was started.
--
-- * 'sprrrsResponseStatus' - -- | The response status code.
startPipelineReprocessingResponse ::
  -- | 'sprrrsResponseStatus'
  Int ->
  StartPipelineReprocessingResponse
startPipelineReprocessingResponse pResponseStatus_ =
  StartPipelineReprocessingResponse'
    { _sprrrsReprocessingId =
        Nothing,
      _sprrrsResponseStatus = pResponseStatus_
    }

-- | The ID of the pipeline reprocessing activity that was started.
sprrrsReprocessingId :: Lens' StartPipelineReprocessingResponse (Maybe Text)
sprrrsReprocessingId = lens _sprrrsReprocessingId (\s a -> s {_sprrrsReprocessingId = a})

-- | -- | The response status code.
sprrrsResponseStatus :: Lens' StartPipelineReprocessingResponse Int
sprrrsResponseStatus = lens _sprrrsResponseStatus (\s a -> s {_sprrrsResponseStatus = a})

instance NFData StartPipelineReprocessingResponse
