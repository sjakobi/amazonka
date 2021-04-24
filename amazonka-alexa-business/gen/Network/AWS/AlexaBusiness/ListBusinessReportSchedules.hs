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
-- Module      : Network.AWS.AlexaBusiness.ListBusinessReportSchedules
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the details of the schedules that a user configured. A download URL of the report associated with each schedule is returned every time this action is called. A new download URL is returned each time, and is valid for 24 hours.
--
--
--
-- This operation returns paginated results.
module Network.AWS.AlexaBusiness.ListBusinessReportSchedules
  ( -- * Creating a Request
    listBusinessReportSchedules,
    ListBusinessReportSchedules,

    -- * Request Lenses
    lbrsNextToken,
    lbrsMaxResults,

    -- * Destructuring the Response
    listBusinessReportSchedulesResponse,
    ListBusinessReportSchedulesResponse,

    -- * Response Lenses
    lbrsrrsNextToken,
    lbrsrrsBusinessReportSchedules,
    lbrsrrsResponseStatus,
  )
where

import Network.AWS.AlexaBusiness.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listBusinessReportSchedules' smart constructor.
data ListBusinessReportSchedules = ListBusinessReportSchedules'
  { _lbrsNextToken ::
      !(Maybe Text),
    _lbrsMaxResults ::
      !(Maybe Nat)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListBusinessReportSchedules' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbrsNextToken' - The token used to list the remaining schedules from the previous API call.
--
-- * 'lbrsMaxResults' - The maximum number of schedules listed in the call.
listBusinessReportSchedules ::
  ListBusinessReportSchedules
listBusinessReportSchedules =
  ListBusinessReportSchedules'
    { _lbrsNextToken =
        Nothing,
      _lbrsMaxResults = Nothing
    }

-- | The token used to list the remaining schedules from the previous API call.
lbrsNextToken :: Lens' ListBusinessReportSchedules (Maybe Text)
lbrsNextToken = lens _lbrsNextToken (\s a -> s {_lbrsNextToken = a})

-- | The maximum number of schedules listed in the call.
lbrsMaxResults :: Lens' ListBusinessReportSchedules (Maybe Natural)
lbrsMaxResults = lens _lbrsMaxResults (\s a -> s {_lbrsMaxResults = a}) . mapping _Nat

instance AWSPager ListBusinessReportSchedules where
  page rq rs
    | stop (rs ^. lbrsrrsNextToken) = Nothing
    | stop (rs ^. lbrsrrsBusinessReportSchedules) =
      Nothing
    | otherwise =
      Just $ rq & lbrsNextToken .~ rs ^. lbrsrrsNextToken

instance AWSRequest ListBusinessReportSchedules where
  type
    Rs ListBusinessReportSchedules =
      ListBusinessReportSchedulesResponse
  request = postJSON alexaBusiness
  response =
    receiveJSON
      ( \s h x ->
          ListBusinessReportSchedulesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "BusinessReportSchedules" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListBusinessReportSchedules

instance NFData ListBusinessReportSchedules

instance ToHeaders ListBusinessReportSchedules where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AlexaForBusiness.ListBusinessReportSchedules" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListBusinessReportSchedules where
  toJSON ListBusinessReportSchedules' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lbrsNextToken,
            ("MaxResults" .=) <$> _lbrsMaxResults
          ]
      )

instance ToPath ListBusinessReportSchedules where
  toPath = const "/"

instance ToQuery ListBusinessReportSchedules where
  toQuery = const mempty

-- | /See:/ 'listBusinessReportSchedulesResponse' smart constructor.
data ListBusinessReportSchedulesResponse = ListBusinessReportSchedulesResponse'
  { _lbrsrrsNextToken ::
      !( Maybe
           Text
       ),
    _lbrsrrsBusinessReportSchedules ::
      !( Maybe
           [BusinessReportSchedule]
       ),
    _lbrsrrsResponseStatus ::
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

-- | Creates a value of 'ListBusinessReportSchedulesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbrsrrsNextToken' - The token used to list the remaining schedules from the previous API call.
--
-- * 'lbrsrrsBusinessReportSchedules' - The schedule of the reports.
--
-- * 'lbrsrrsResponseStatus' - -- | The response status code.
listBusinessReportSchedulesResponse ::
  -- | 'lbrsrrsResponseStatus'
  Int ->
  ListBusinessReportSchedulesResponse
listBusinessReportSchedulesResponse pResponseStatus_ =
  ListBusinessReportSchedulesResponse'
    { _lbrsrrsNextToken =
        Nothing,
      _lbrsrrsBusinessReportSchedules =
        Nothing,
      _lbrsrrsResponseStatus =
        pResponseStatus_
    }

-- | The token used to list the remaining schedules from the previous API call.
lbrsrrsNextToken :: Lens' ListBusinessReportSchedulesResponse (Maybe Text)
lbrsrrsNextToken = lens _lbrsrrsNextToken (\s a -> s {_lbrsrrsNextToken = a})

-- | The schedule of the reports.
lbrsrrsBusinessReportSchedules :: Lens' ListBusinessReportSchedulesResponse [BusinessReportSchedule]
lbrsrrsBusinessReportSchedules = lens _lbrsrrsBusinessReportSchedules (\s a -> s {_lbrsrrsBusinessReportSchedules = a}) . _Default . _Coerce

-- | -- | The response status code.
lbrsrrsResponseStatus :: Lens' ListBusinessReportSchedulesResponse Int
lbrsrrsResponseStatus = lens _lbrsrrsResponseStatus (\s a -> s {_lbrsrrsResponseStatus = a})

instance NFData ListBusinessReportSchedulesResponse
