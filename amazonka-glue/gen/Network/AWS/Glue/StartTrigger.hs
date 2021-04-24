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
-- Module      : Network.AWS.Glue.StartTrigger
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts an existing trigger. See <https://docs.aws.amazon.com/glue/latest/dg/trigger-job.html Triggering Jobs> for information about how different types of trigger are started.
module Network.AWS.Glue.StartTrigger
  ( -- * Creating a Request
    startTrigger,
    StartTrigger,

    -- * Request Lenses
    stName,

    -- * Destructuring the Response
    startTriggerResponse,
    StartTriggerResponse,

    -- * Response Lenses
    strtrsName,
    strtrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'startTrigger' smart constructor.
newtype StartTrigger = StartTrigger' {_stName :: Text}
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StartTrigger' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'stName' - The name of the trigger to start.
startTrigger ::
  -- | 'stName'
  Text ->
  StartTrigger
startTrigger pName_ = StartTrigger' {_stName = pName_}

-- | The name of the trigger to start.
stName :: Lens' StartTrigger Text
stName = lens _stName (\s a -> s {_stName = a})

instance AWSRequest StartTrigger where
  type Rs StartTrigger = StartTriggerResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          StartTriggerResponse'
            <$> (x .?> "Name") <*> (pure (fromEnum s))
      )

instance Hashable StartTrigger

instance NFData StartTrigger

instance ToHeaders StartTrigger where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.StartTrigger" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StartTrigger where
  toJSON StartTrigger' {..} =
    object (catMaybes [Just ("Name" .= _stName)])

instance ToPath StartTrigger where
  toPath = const "/"

instance ToQuery StartTrigger where
  toQuery = const mempty

-- | /See:/ 'startTriggerResponse' smart constructor.
data StartTriggerResponse = StartTriggerResponse'
  { _strtrsName ::
      !(Maybe Text),
    _strtrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StartTriggerResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'strtrsName' - The name of the trigger that was started.
--
-- * 'strtrsResponseStatus' - -- | The response status code.
startTriggerResponse ::
  -- | 'strtrsResponseStatus'
  Int ->
  StartTriggerResponse
startTriggerResponse pResponseStatus_ =
  StartTriggerResponse'
    { _strtrsName = Nothing,
      _strtrsResponseStatus = pResponseStatus_
    }

-- | The name of the trigger that was started.
strtrsName :: Lens' StartTriggerResponse (Maybe Text)
strtrsName = lens _strtrsName (\s a -> s {_strtrsName = a})

-- | -- | The response status code.
strtrsResponseStatus :: Lens' StartTriggerResponse Int
strtrsResponseStatus = lens _strtrsResponseStatus (\s a -> s {_strtrsResponseStatus = a})

instance NFData StartTriggerResponse
