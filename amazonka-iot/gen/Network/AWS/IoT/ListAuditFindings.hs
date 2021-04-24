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
-- Module      : Network.AWS.IoT.ListAuditFindings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the findings (results) of a Device Defender audit or of the audits performed during a specified time period. (Findings are retained for 90 days.)
--
--
--
-- This operation returns paginated results.
module Network.AWS.IoT.ListAuditFindings
  ( -- * Creating a Request
    listAuditFindings,
    ListAuditFindings,

    -- * Request Lenses
    lafNextToken,
    lafMaxResults,
    lafTaskId,
    lafStartTime,
    lafEndTime,
    lafListSuppressedFindings,
    lafResourceIdentifier,
    lafCheckName,

    -- * Destructuring the Response
    listAuditFindingsResponse,
    ListAuditFindingsResponse,

    -- * Response Lenses
    lafrrsNextToken,
    lafrrsFindings,
    lafrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listAuditFindings' smart constructor.
data ListAuditFindings = ListAuditFindings'
  { _lafNextToken ::
      !(Maybe Text),
    _lafMaxResults :: !(Maybe Nat),
    _lafTaskId :: !(Maybe Text),
    _lafStartTime :: !(Maybe POSIX),
    _lafEndTime :: !(Maybe POSIX),
    _lafListSuppressedFindings ::
      !(Maybe Bool),
    _lafResourceIdentifier ::
      !(Maybe ResourceIdentifier),
    _lafCheckName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListAuditFindings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lafNextToken' - The token for the next set of results.
--
-- * 'lafMaxResults' - The maximum number of results to return at one time. The default is 25.
--
-- * 'lafTaskId' - A filter to limit results to the audit with the specified ID. You must specify either the taskId or the startTime and endTime, but not both.
--
-- * 'lafStartTime' - A filter to limit results to those found after the specified time. You must specify either the startTime and endTime or the taskId, but not both.
--
-- * 'lafEndTime' - A filter to limit results to those found before the specified time. You must specify either the startTime and endTime or the taskId, but not both.
--
-- * 'lafListSuppressedFindings' - Boolean flag indicating whether only the suppressed findings or the unsuppressed findings should be listed. If this parameter isn't provided, the response will list both suppressed and unsuppressed findings.
--
-- * 'lafResourceIdentifier' - Information identifying the noncompliant resource.
--
-- * 'lafCheckName' - A filter to limit results to the findings for the specified audit check.
listAuditFindings ::
  ListAuditFindings
listAuditFindings =
  ListAuditFindings'
    { _lafNextToken = Nothing,
      _lafMaxResults = Nothing,
      _lafTaskId = Nothing,
      _lafStartTime = Nothing,
      _lafEndTime = Nothing,
      _lafListSuppressedFindings = Nothing,
      _lafResourceIdentifier = Nothing,
      _lafCheckName = Nothing
    }

-- | The token for the next set of results.
lafNextToken :: Lens' ListAuditFindings (Maybe Text)
lafNextToken = lens _lafNextToken (\s a -> s {_lafNextToken = a})

-- | The maximum number of results to return at one time. The default is 25.
lafMaxResults :: Lens' ListAuditFindings (Maybe Natural)
lafMaxResults = lens _lafMaxResults (\s a -> s {_lafMaxResults = a}) . mapping _Nat

-- | A filter to limit results to the audit with the specified ID. You must specify either the taskId or the startTime and endTime, but not both.
lafTaskId :: Lens' ListAuditFindings (Maybe Text)
lafTaskId = lens _lafTaskId (\s a -> s {_lafTaskId = a})

-- | A filter to limit results to those found after the specified time. You must specify either the startTime and endTime or the taskId, but not both.
lafStartTime :: Lens' ListAuditFindings (Maybe UTCTime)
lafStartTime = lens _lafStartTime (\s a -> s {_lafStartTime = a}) . mapping _Time

-- | A filter to limit results to those found before the specified time. You must specify either the startTime and endTime or the taskId, but not both.
lafEndTime :: Lens' ListAuditFindings (Maybe UTCTime)
lafEndTime = lens _lafEndTime (\s a -> s {_lafEndTime = a}) . mapping _Time

-- | Boolean flag indicating whether only the suppressed findings or the unsuppressed findings should be listed. If this parameter isn't provided, the response will list both suppressed and unsuppressed findings.
lafListSuppressedFindings :: Lens' ListAuditFindings (Maybe Bool)
lafListSuppressedFindings = lens _lafListSuppressedFindings (\s a -> s {_lafListSuppressedFindings = a})

-- | Information identifying the noncompliant resource.
lafResourceIdentifier :: Lens' ListAuditFindings (Maybe ResourceIdentifier)
lafResourceIdentifier = lens _lafResourceIdentifier (\s a -> s {_lafResourceIdentifier = a})

-- | A filter to limit results to the findings for the specified audit check.
lafCheckName :: Lens' ListAuditFindings (Maybe Text)
lafCheckName = lens _lafCheckName (\s a -> s {_lafCheckName = a})

instance AWSPager ListAuditFindings where
  page rq rs
    | stop (rs ^. lafrrsNextToken) = Nothing
    | stop (rs ^. lafrrsFindings) = Nothing
    | otherwise =
      Just $ rq & lafNextToken .~ rs ^. lafrrsNextToken

instance AWSRequest ListAuditFindings where
  type Rs ListAuditFindings = ListAuditFindingsResponse
  request = postJSON ioT
  response =
    receiveJSON
      ( \s h x ->
          ListAuditFindingsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "findings" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListAuditFindings

instance NFData ListAuditFindings

instance ToHeaders ListAuditFindings where
  toHeaders = const mempty

instance ToJSON ListAuditFindings where
  toJSON ListAuditFindings' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _lafNextToken,
            ("maxResults" .=) <$> _lafMaxResults,
            ("taskId" .=) <$> _lafTaskId,
            ("startTime" .=) <$> _lafStartTime,
            ("endTime" .=) <$> _lafEndTime,
            ("listSuppressedFindings" .=)
              <$> _lafListSuppressedFindings,
            ("resourceIdentifier" .=) <$> _lafResourceIdentifier,
            ("checkName" .=) <$> _lafCheckName
          ]
      )

instance ToPath ListAuditFindings where
  toPath = const "/audit/findings"

instance ToQuery ListAuditFindings where
  toQuery = const mempty

-- | /See:/ 'listAuditFindingsResponse' smart constructor.
data ListAuditFindingsResponse = ListAuditFindingsResponse'
  { _lafrrsNextToken ::
      !(Maybe Text),
    _lafrrsFindings ::
      !( Maybe
           [AuditFinding]
       ),
    _lafrrsResponseStatus ::
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

-- | Creates a value of 'ListAuditFindingsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lafrrsNextToken' - A token that can be used to retrieve the next set of results, or @null@ if there are no additional results.
--
-- * 'lafrrsFindings' - The findings (results) of the audit.
--
-- * 'lafrrsResponseStatus' - -- | The response status code.
listAuditFindingsResponse ::
  -- | 'lafrrsResponseStatus'
  Int ->
  ListAuditFindingsResponse
listAuditFindingsResponse pResponseStatus_ =
  ListAuditFindingsResponse'
    { _lafrrsNextToken =
        Nothing,
      _lafrrsFindings = Nothing,
      _lafrrsResponseStatus = pResponseStatus_
    }

-- | A token that can be used to retrieve the next set of results, or @null@ if there are no additional results.
lafrrsNextToken :: Lens' ListAuditFindingsResponse (Maybe Text)
lafrrsNextToken = lens _lafrrsNextToken (\s a -> s {_lafrrsNextToken = a})

-- | The findings (results) of the audit.
lafrrsFindings :: Lens' ListAuditFindingsResponse [AuditFinding]
lafrrsFindings = lens _lafrrsFindings (\s a -> s {_lafrrsFindings = a}) . _Default . _Coerce

-- | -- | The response status code.
lafrrsResponseStatus :: Lens' ListAuditFindingsResponse Int
lafrrsResponseStatus = lens _lafrrsResponseStatus (\s a -> s {_lafrrsResponseStatus = a})

instance NFData ListAuditFindingsResponse
