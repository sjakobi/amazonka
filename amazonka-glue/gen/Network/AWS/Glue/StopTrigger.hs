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
-- Module      : Network.AWS.Glue.StopTrigger
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops a specified trigger.
module Network.AWS.Glue.StopTrigger
  ( -- * Creating a Request
    stopTrigger,
    StopTrigger,

    -- * Request Lenses
    stoName,

    -- * Destructuring the Response
    stopTriggerResponse,
    StopTriggerResponse,

    -- * Response Lenses
    strrsName,
    strrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'stopTrigger' smart constructor.
newtype StopTrigger = StopTrigger' {_stoName :: Text}
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StopTrigger' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'stoName' - The name of the trigger to stop.
stopTrigger ::
  -- | 'stoName'
  Text ->
  StopTrigger
stopTrigger pName_ = StopTrigger' {_stoName = pName_}

-- | The name of the trigger to stop.
stoName :: Lens' StopTrigger Text
stoName = lens _stoName (\s a -> s {_stoName = a})

instance AWSRequest StopTrigger where
  type Rs StopTrigger = StopTriggerResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          StopTriggerResponse'
            <$> (x .?> "Name") <*> (pure (fromEnum s))
      )

instance Hashable StopTrigger

instance NFData StopTrigger

instance ToHeaders StopTrigger where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.StopTrigger" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StopTrigger where
  toJSON StopTrigger' {..} =
    object (catMaybes [Just ("Name" .= _stoName)])

instance ToPath StopTrigger where
  toPath = const "/"

instance ToQuery StopTrigger where
  toQuery = const mempty

-- | /See:/ 'stopTriggerResponse' smart constructor.
data StopTriggerResponse = StopTriggerResponse'
  { _strrsName ::
      !(Maybe Text),
    _strrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StopTriggerResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'strrsName' - The name of the trigger that was stopped.
--
-- * 'strrsResponseStatus' - -- | The response status code.
stopTriggerResponse ::
  -- | 'strrsResponseStatus'
  Int ->
  StopTriggerResponse
stopTriggerResponse pResponseStatus_ =
  StopTriggerResponse'
    { _strrsName = Nothing,
      _strrsResponseStatus = pResponseStatus_
    }

-- | The name of the trigger that was stopped.
strrsName :: Lens' StopTriggerResponse (Maybe Text)
strrsName = lens _strrsName (\s a -> s {_strrsName = a})

-- | -- | The response status code.
strrsResponseStatus :: Lens' StopTriggerResponse Int
strrsResponseStatus = lens _strrsResponseStatus (\s a -> s {_strrsResponseStatus = a})

instance NFData StopTriggerResponse
