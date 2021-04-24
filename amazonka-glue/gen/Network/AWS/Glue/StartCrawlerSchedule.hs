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
-- Module      : Network.AWS.Glue.StartCrawlerSchedule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Changes the schedule state of the specified crawler to @SCHEDULED@ , unless the crawler is already running or the schedule state is already @SCHEDULED@ .
module Network.AWS.Glue.StartCrawlerSchedule
  ( -- * Creating a Request
    startCrawlerSchedule,
    StartCrawlerSchedule,

    -- * Request Lenses
    sCrawlerName,

    -- * Destructuring the Response
    startCrawlerScheduleResponse,
    StartCrawlerScheduleResponse,

    -- * Response Lenses
    scsrrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'startCrawlerSchedule' smart constructor.
newtype StartCrawlerSchedule = StartCrawlerSchedule'
  { _sCrawlerName ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'StartCrawlerSchedule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sCrawlerName' - Name of the crawler to schedule.
startCrawlerSchedule ::
  -- | 'sCrawlerName'
  Text ->
  StartCrawlerSchedule
startCrawlerSchedule pCrawlerName_ =
  StartCrawlerSchedule'
    { _sCrawlerName =
        pCrawlerName_
    }

-- | Name of the crawler to schedule.
sCrawlerName :: Lens' StartCrawlerSchedule Text
sCrawlerName = lens _sCrawlerName (\s a -> s {_sCrawlerName = a})

instance AWSRequest StartCrawlerSchedule where
  type
    Rs StartCrawlerSchedule =
      StartCrawlerScheduleResponse
  request = postJSON glue
  response =
    receiveEmpty
      ( \s h x ->
          StartCrawlerScheduleResponse'
            <$> (pure (fromEnum s))
      )

instance Hashable StartCrawlerSchedule

instance NFData StartCrawlerSchedule

instance ToHeaders StartCrawlerSchedule where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.StartCrawlerSchedule" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StartCrawlerSchedule where
  toJSON StartCrawlerSchedule' {..} =
    object
      (catMaybes [Just ("CrawlerName" .= _sCrawlerName)])

instance ToPath StartCrawlerSchedule where
  toPath = const "/"

instance ToQuery StartCrawlerSchedule where
  toQuery = const mempty

-- | /See:/ 'startCrawlerScheduleResponse' smart constructor.
newtype StartCrawlerScheduleResponse = StartCrawlerScheduleResponse'
  { _scsrrsResponseStatus ::
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

-- | Creates a value of 'StartCrawlerScheduleResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scsrrsResponseStatus' - -- | The response status code.
startCrawlerScheduleResponse ::
  -- | 'scsrrsResponseStatus'
  Int ->
  StartCrawlerScheduleResponse
startCrawlerScheduleResponse pResponseStatus_ =
  StartCrawlerScheduleResponse'
    { _scsrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
scsrrsResponseStatus :: Lens' StartCrawlerScheduleResponse Int
scsrrsResponseStatus = lens _scsrrsResponseStatus (\s a -> s {_scsrrsResponseStatus = a})

instance NFData StartCrawlerScheduleResponse
