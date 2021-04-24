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
-- Module      : Network.AWS.MediaLive.BatchUpdateSchedule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update a channel schedule
module Network.AWS.MediaLive.BatchUpdateSchedule
  ( -- * Creating a Request
    batchUpdateSchedule,
    BatchUpdateSchedule,

    -- * Request Lenses
    busDeletes,
    busCreates,
    busChannelId,

    -- * Destructuring the Response
    batchUpdateScheduleResponse,
    BatchUpdateScheduleResponse,

    -- * Response Lenses
    busrrsDeletes,
    busrrsCreates,
    busrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | List of actions to create and list of actions to delete.
--
-- /See:/ 'batchUpdateSchedule' smart constructor.
data BatchUpdateSchedule = BatchUpdateSchedule'
  { _busDeletes ::
      !( Maybe
           BatchScheduleActionDeleteRequest
       ),
    _busCreates ::
      !( Maybe
           BatchScheduleActionCreateRequest
       ),
    _busChannelId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'BatchUpdateSchedule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'busDeletes' - Schedule actions to delete from the schedule.
--
-- * 'busCreates' - Schedule actions to create in the schedule.
--
-- * 'busChannelId' - Id of the channel whose schedule is being updated.
batchUpdateSchedule ::
  -- | 'busChannelId'
  Text ->
  BatchUpdateSchedule
batchUpdateSchedule pChannelId_ =
  BatchUpdateSchedule'
    { _busDeletes = Nothing,
      _busCreates = Nothing,
      _busChannelId = pChannelId_
    }

-- | Schedule actions to delete from the schedule.
busDeletes :: Lens' BatchUpdateSchedule (Maybe BatchScheduleActionDeleteRequest)
busDeletes = lens _busDeletes (\s a -> s {_busDeletes = a})

-- | Schedule actions to create in the schedule.
busCreates :: Lens' BatchUpdateSchedule (Maybe BatchScheduleActionCreateRequest)
busCreates = lens _busCreates (\s a -> s {_busCreates = a})

-- | Id of the channel whose schedule is being updated.
busChannelId :: Lens' BatchUpdateSchedule Text
busChannelId = lens _busChannelId (\s a -> s {_busChannelId = a})

instance AWSRequest BatchUpdateSchedule where
  type
    Rs BatchUpdateSchedule =
      BatchUpdateScheduleResponse
  request = putJSON mediaLive
  response =
    receiveJSON
      ( \s h x ->
          BatchUpdateScheduleResponse'
            <$> (x .?> "deletes")
            <*> (x .?> "creates")
            <*> (pure (fromEnum s))
      )

instance Hashable BatchUpdateSchedule

instance NFData BatchUpdateSchedule

instance ToHeaders BatchUpdateSchedule where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON BatchUpdateSchedule where
  toJSON BatchUpdateSchedule' {..} =
    object
      ( catMaybes
          [ ("deletes" .=) <$> _busDeletes,
            ("creates" .=) <$> _busCreates
          ]
      )

instance ToPath BatchUpdateSchedule where
  toPath BatchUpdateSchedule' {..} =
    mconcat
      ["/prod/channels/", toBS _busChannelId, "/schedule"]

instance ToQuery BatchUpdateSchedule where
  toQuery = const mempty

-- | Placeholder documentation for BatchUpdateScheduleResponse
--
-- /See:/ 'batchUpdateScheduleResponse' smart constructor.
data BatchUpdateScheduleResponse = BatchUpdateScheduleResponse'
  { _busrrsDeletes ::
      !( Maybe
           BatchScheduleActionDeleteResult
       ),
    _busrrsCreates ::
      !( Maybe
           BatchScheduleActionCreateResult
       ),
    _busrrsResponseStatus ::
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

-- | Creates a value of 'BatchUpdateScheduleResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'busrrsDeletes' - Schedule actions deleted from the schedule.
--
-- * 'busrrsCreates' - Schedule actions created in the schedule.
--
-- * 'busrrsResponseStatus' - -- | The response status code.
batchUpdateScheduleResponse ::
  -- | 'busrrsResponseStatus'
  Int ->
  BatchUpdateScheduleResponse
batchUpdateScheduleResponse pResponseStatus_ =
  BatchUpdateScheduleResponse'
    { _busrrsDeletes =
        Nothing,
      _busrrsCreates = Nothing,
      _busrrsResponseStatus = pResponseStatus_
    }

-- | Schedule actions deleted from the schedule.
busrrsDeletes :: Lens' BatchUpdateScheduleResponse (Maybe BatchScheduleActionDeleteResult)
busrrsDeletes = lens _busrrsDeletes (\s a -> s {_busrrsDeletes = a})

-- | Schedule actions created in the schedule.
busrrsCreates :: Lens' BatchUpdateScheduleResponse (Maybe BatchScheduleActionCreateResult)
busrrsCreates = lens _busrrsCreates (\s a -> s {_busrrsCreates = a})

-- | -- | The response status code.
busrrsResponseStatus :: Lens' BatchUpdateScheduleResponse Int
busrrsResponseStatus = lens _busrrsResponseStatus (\s a -> s {_busrrsResponseStatus = a})

instance NFData BatchUpdateScheduleResponse
