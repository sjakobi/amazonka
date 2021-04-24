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
-- Module      : Network.AWS.CloudWatchEvents.CancelReplay
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels the specified replay.
module Network.AWS.CloudWatchEvents.CancelReplay
  ( -- * Creating a Request
    cancelReplay,
    CancelReplay,

    -- * Request Lenses
    crReplayName,

    -- * Destructuring the Response
    cancelReplayResponse,
    CancelReplayResponse,

    -- * Response Lenses
    crrrsReplayARN,
    crrrsStateReason,
    crrrsState,
    crrrsResponseStatus,
  )
where

import Network.AWS.CloudWatchEvents.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'cancelReplay' smart constructor.
newtype CancelReplay = CancelReplay'
  { _crReplayName ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CancelReplay' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crReplayName' - The name of the replay to cancel.
cancelReplay ::
  -- | 'crReplayName'
  Text ->
  CancelReplay
cancelReplay pReplayName_ =
  CancelReplay' {_crReplayName = pReplayName_}

-- | The name of the replay to cancel.
crReplayName :: Lens' CancelReplay Text
crReplayName = lens _crReplayName (\s a -> s {_crReplayName = a})

instance AWSRequest CancelReplay where
  type Rs CancelReplay = CancelReplayResponse
  request = postJSON cloudWatchEvents
  response =
    receiveJSON
      ( \s h x ->
          CancelReplayResponse'
            <$> (x .?> "ReplayArn")
            <*> (x .?> "StateReason")
            <*> (x .?> "State")
            <*> (pure (fromEnum s))
      )

instance Hashable CancelReplay

instance NFData CancelReplay

instance ToHeaders CancelReplay where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSEvents.CancelReplay" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CancelReplay where
  toJSON CancelReplay' {..} =
    object
      (catMaybes [Just ("ReplayName" .= _crReplayName)])

instance ToPath CancelReplay where
  toPath = const "/"

instance ToQuery CancelReplay where
  toQuery = const mempty

-- | /See:/ 'cancelReplayResponse' smart constructor.
data CancelReplayResponse = CancelReplayResponse'
  { _crrrsReplayARN ::
      !(Maybe Text),
    _crrrsStateReason ::
      !(Maybe Text),
    _crrrsState ::
      !(Maybe ReplayState),
    _crrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CancelReplayResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crrrsReplayARN' - The ARN of the replay to cancel.
--
-- * 'crrrsStateReason' - The reason that the replay is in the current state.
--
-- * 'crrrsState' - The current state of the replay.
--
-- * 'crrrsResponseStatus' - -- | The response status code.
cancelReplayResponse ::
  -- | 'crrrsResponseStatus'
  Int ->
  CancelReplayResponse
cancelReplayResponse pResponseStatus_ =
  CancelReplayResponse'
    { _crrrsReplayARN = Nothing,
      _crrrsStateReason = Nothing,
      _crrrsState = Nothing,
      _crrrsResponseStatus = pResponseStatus_
    }

-- | The ARN of the replay to cancel.
crrrsReplayARN :: Lens' CancelReplayResponse (Maybe Text)
crrrsReplayARN = lens _crrrsReplayARN (\s a -> s {_crrrsReplayARN = a})

-- | The reason that the replay is in the current state.
crrrsStateReason :: Lens' CancelReplayResponse (Maybe Text)
crrrsStateReason = lens _crrrsStateReason (\s a -> s {_crrrsStateReason = a})

-- | The current state of the replay.
crrrsState :: Lens' CancelReplayResponse (Maybe ReplayState)
crrrsState = lens _crrrsState (\s a -> s {_crrrsState = a})

-- | -- | The response status code.
crrrsResponseStatus :: Lens' CancelReplayResponse Int
crrrsResponseStatus = lens _crrrsResponseStatus (\s a -> s {_crrrsResponseStatus = a})

instance NFData CancelReplayResponse
