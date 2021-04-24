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
-- Module      : Network.AWS.IoT.ListThingRegistrationTaskReports
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Information about the thing registration tasks.
--
--
--
-- This operation returns paginated results.
module Network.AWS.IoT.ListThingRegistrationTaskReports
  ( -- * Creating a Request
    listThingRegistrationTaskReports,
    ListThingRegistrationTaskReports,

    -- * Request Lenses
    ltrtrNextToken,
    ltrtrMaxResults,
    ltrtrTaskId,
    ltrtrReportType,

    -- * Destructuring the Response
    listThingRegistrationTaskReportsResponse,
    ListThingRegistrationTaskReportsResponse,

    -- * Response Lenses
    ltrtrrrsNextToken,
    ltrtrrrsReportType,
    ltrtrrrsResourceLinks,
    ltrtrrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listThingRegistrationTaskReports' smart constructor.
data ListThingRegistrationTaskReports = ListThingRegistrationTaskReports'
  { _ltrtrNextToken ::
      !( Maybe
           Text
       ),
    _ltrtrMaxResults ::
      !( Maybe
           Nat
       ),
    _ltrtrTaskId ::
      !Text,
    _ltrtrReportType ::
      !ReportType
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListThingRegistrationTaskReports' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltrtrNextToken' - To retrieve the next set of results, the @nextToken@ value from a previous response; otherwise __null__ to receive the first set of results.
--
-- * 'ltrtrMaxResults' - The maximum number of results to return per request.
--
-- * 'ltrtrTaskId' - The id of the task.
--
-- * 'ltrtrReportType' - The type of task report.
listThingRegistrationTaskReports ::
  -- | 'ltrtrTaskId'
  Text ->
  -- | 'ltrtrReportType'
  ReportType ->
  ListThingRegistrationTaskReports
listThingRegistrationTaskReports
  pTaskId_
  pReportType_ =
    ListThingRegistrationTaskReports'
      { _ltrtrNextToken =
          Nothing,
        _ltrtrMaxResults = Nothing,
        _ltrtrTaskId = pTaskId_,
        _ltrtrReportType = pReportType_
      }

-- | To retrieve the next set of results, the @nextToken@ value from a previous response; otherwise __null__ to receive the first set of results.
ltrtrNextToken :: Lens' ListThingRegistrationTaskReports (Maybe Text)
ltrtrNextToken = lens _ltrtrNextToken (\s a -> s {_ltrtrNextToken = a})

-- | The maximum number of results to return per request.
ltrtrMaxResults :: Lens' ListThingRegistrationTaskReports (Maybe Natural)
ltrtrMaxResults = lens _ltrtrMaxResults (\s a -> s {_ltrtrMaxResults = a}) . mapping _Nat

-- | The id of the task.
ltrtrTaskId :: Lens' ListThingRegistrationTaskReports Text
ltrtrTaskId = lens _ltrtrTaskId (\s a -> s {_ltrtrTaskId = a})

-- | The type of task report.
ltrtrReportType :: Lens' ListThingRegistrationTaskReports ReportType
ltrtrReportType = lens _ltrtrReportType (\s a -> s {_ltrtrReportType = a})

instance AWSPager ListThingRegistrationTaskReports where
  page rq rs
    | stop (rs ^. ltrtrrrsNextToken) = Nothing
    | stop (rs ^. ltrtrrrsResourceLinks) = Nothing
    | otherwise =
      Just $ rq & ltrtrNextToken .~ rs ^. ltrtrrrsNextToken

instance AWSRequest ListThingRegistrationTaskReports where
  type
    Rs ListThingRegistrationTaskReports =
      ListThingRegistrationTaskReportsResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          ListThingRegistrationTaskReportsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "reportType")
            <*> (x .?> "resourceLinks" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListThingRegistrationTaskReports

instance NFData ListThingRegistrationTaskReports

instance ToHeaders ListThingRegistrationTaskReports where
  toHeaders = const mempty

instance ToPath ListThingRegistrationTaskReports where
  toPath ListThingRegistrationTaskReports' {..} =
    mconcat
      [ "/thing-registration-tasks/",
        toBS _ltrtrTaskId,
        "/reports"
      ]

instance ToQuery ListThingRegistrationTaskReports where
  toQuery ListThingRegistrationTaskReports' {..} =
    mconcat
      [ "nextToken" =: _ltrtrNextToken,
        "maxResults" =: _ltrtrMaxResults,
        "reportType" =: _ltrtrReportType
      ]

-- | /See:/ 'listThingRegistrationTaskReportsResponse' smart constructor.
data ListThingRegistrationTaskReportsResponse = ListThingRegistrationTaskReportsResponse'
  { _ltrtrrrsNextToken ::
      !( Maybe
           Text
       ),
    _ltrtrrrsReportType ::
      !( Maybe
           ReportType
       ),
    _ltrtrrrsResourceLinks ::
      !( Maybe
           [Text]
       ),
    _ltrtrrrsResponseStatus ::
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

-- | Creates a value of 'ListThingRegistrationTaskReportsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltrtrrrsNextToken' - The token to use to get the next set of results, or __null__ if there are no additional results.
--
-- * 'ltrtrrrsReportType' - The type of task report.
--
-- * 'ltrtrrrsResourceLinks' - Links to the task resources.
--
-- * 'ltrtrrrsResponseStatus' - -- | The response status code.
listThingRegistrationTaskReportsResponse ::
  -- | 'ltrtrrrsResponseStatus'
  Int ->
  ListThingRegistrationTaskReportsResponse
listThingRegistrationTaskReportsResponse
  pResponseStatus_ =
    ListThingRegistrationTaskReportsResponse'
      { _ltrtrrrsNextToken =
          Nothing,
        _ltrtrrrsReportType = Nothing,
        _ltrtrrrsResourceLinks = Nothing,
        _ltrtrrrsResponseStatus =
          pResponseStatus_
      }

-- | The token to use to get the next set of results, or __null__ if there are no additional results.
ltrtrrrsNextToken :: Lens' ListThingRegistrationTaskReportsResponse (Maybe Text)
ltrtrrrsNextToken = lens _ltrtrrrsNextToken (\s a -> s {_ltrtrrrsNextToken = a})

-- | The type of task report.
ltrtrrrsReportType :: Lens' ListThingRegistrationTaskReportsResponse (Maybe ReportType)
ltrtrrrsReportType = lens _ltrtrrrsReportType (\s a -> s {_ltrtrrrsReportType = a})

-- | Links to the task resources.
ltrtrrrsResourceLinks :: Lens' ListThingRegistrationTaskReportsResponse [Text]
ltrtrrrsResourceLinks = lens _ltrtrrrsResourceLinks (\s a -> s {_ltrtrrrsResourceLinks = a}) . _Default . _Coerce

-- | -- | The response status code.
ltrtrrrsResponseStatus :: Lens' ListThingRegistrationTaskReportsResponse Int
ltrtrrrsResponseStatus = lens _ltrtrrrsResponseStatus (\s a -> s {_ltrtrrrsResponseStatus = a})

instance
  NFData
    ListThingRegistrationTaskReportsResponse
