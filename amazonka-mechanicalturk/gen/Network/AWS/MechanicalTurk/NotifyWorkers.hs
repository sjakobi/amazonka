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
-- Module      : Network.AWS.MechanicalTurk.NotifyWorkers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The @NotifyWorkers@ operation sends an email to one or more Workers that you specify with the Worker ID. You can specify up to 100 Worker IDs to send the same message with a single call to the NotifyWorkers operation. The NotifyWorkers operation will send a notification email to a Worker only if you have previously approved or rejected work from the Worker.
module Network.AWS.MechanicalTurk.NotifyWorkers
  ( -- * Creating a Request
    notifyWorkers,
    NotifyWorkers,

    -- * Request Lenses
    nwSubject,
    nwMessageText,
    nwWorkerIds,

    -- * Destructuring the Response
    notifyWorkersResponse,
    NotifyWorkersResponse,

    -- * Response Lenses
    nwrrsNotifyWorkersFailureStatuses,
    nwrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MechanicalTurk.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'notifyWorkers' smart constructor.
data NotifyWorkers = NotifyWorkers'
  { _nwSubject ::
      !Text,
    _nwMessageText :: !Text,
    _nwWorkerIds :: ![Text]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'NotifyWorkers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nwSubject' - The subject line of the email message to send. Can include up to 200 characters.
--
-- * 'nwMessageText' - The text of the email message to send. Can include up to 4,096 characters
--
-- * 'nwWorkerIds' - A list of Worker IDs you wish to notify. You can notify upto 100 Workers at a time.
notifyWorkers ::
  -- | 'nwSubject'
  Text ->
  -- | 'nwMessageText'
  Text ->
  NotifyWorkers
notifyWorkers pSubject_ pMessageText_ =
  NotifyWorkers'
    { _nwSubject = pSubject_,
      _nwMessageText = pMessageText_,
      _nwWorkerIds = mempty
    }

-- | The subject line of the email message to send. Can include up to 200 characters.
nwSubject :: Lens' NotifyWorkers Text
nwSubject = lens _nwSubject (\s a -> s {_nwSubject = a})

-- | The text of the email message to send. Can include up to 4,096 characters
nwMessageText :: Lens' NotifyWorkers Text
nwMessageText = lens _nwMessageText (\s a -> s {_nwMessageText = a})

-- | A list of Worker IDs you wish to notify. You can notify upto 100 Workers at a time.
nwWorkerIds :: Lens' NotifyWorkers [Text]
nwWorkerIds = lens _nwWorkerIds (\s a -> s {_nwWorkerIds = a}) . _Coerce

instance AWSRequest NotifyWorkers where
  type Rs NotifyWorkers = NotifyWorkersResponse
  request = postJSON mechanicalTurk
  response =
    receiveJSON
      ( \s h x ->
          NotifyWorkersResponse'
            <$> (x .?> "NotifyWorkersFailureStatuses" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable NotifyWorkers

instance NFData NotifyWorkers

instance ToHeaders NotifyWorkers where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "MTurkRequesterServiceV20170117.NotifyWorkers" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON NotifyWorkers where
  toJSON NotifyWorkers' {..} =
    object
      ( catMaybes
          [ Just ("Subject" .= _nwSubject),
            Just ("MessageText" .= _nwMessageText),
            Just ("WorkerIds" .= _nwWorkerIds)
          ]
      )

instance ToPath NotifyWorkers where
  toPath = const "/"

instance ToQuery NotifyWorkers where
  toQuery = const mempty

-- | /See:/ 'notifyWorkersResponse' smart constructor.
data NotifyWorkersResponse = NotifyWorkersResponse'
  { _nwrrsNotifyWorkersFailureStatuses ::
      !( Maybe
           [NotifyWorkersFailureStatus]
       ),
    _nwrrsResponseStatus ::
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

-- | Creates a value of 'NotifyWorkersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nwrrsNotifyWorkersFailureStatuses' - When MTurk sends notifications to the list of Workers, it returns back any failures it encounters in this list of NotifyWorkersFailureStatus objects.
--
-- * 'nwrrsResponseStatus' - -- | The response status code.
notifyWorkersResponse ::
  -- | 'nwrrsResponseStatus'
  Int ->
  NotifyWorkersResponse
notifyWorkersResponse pResponseStatus_ =
  NotifyWorkersResponse'
    { _nwrrsNotifyWorkersFailureStatuses =
        Nothing,
      _nwrrsResponseStatus = pResponseStatus_
    }

-- | When MTurk sends notifications to the list of Workers, it returns back any failures it encounters in this list of NotifyWorkersFailureStatus objects.
nwrrsNotifyWorkersFailureStatuses :: Lens' NotifyWorkersResponse [NotifyWorkersFailureStatus]
nwrrsNotifyWorkersFailureStatuses = lens _nwrrsNotifyWorkersFailureStatuses (\s a -> s {_nwrrsNotifyWorkersFailureStatuses = a}) . _Default . _Coerce

-- | -- | The response status code.
nwrrsResponseStatus :: Lens' NotifyWorkersResponse Int
nwrrsResponseStatus = lens _nwrrsResponseStatus (\s a -> s {_nwrrsResponseStatus = a})

instance NFData NotifyWorkersResponse
