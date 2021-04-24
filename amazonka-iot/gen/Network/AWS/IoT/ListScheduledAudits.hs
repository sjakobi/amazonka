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
-- Module      : Network.AWS.IoT.ListScheduledAudits
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all of your scheduled audits.
--
--
--
-- This operation returns paginated results.
module Network.AWS.IoT.ListScheduledAudits
  ( -- * Creating a Request
    listScheduledAudits,
    ListScheduledAudits,

    -- * Request Lenses
    lsaNextToken,
    lsaMaxResults,

    -- * Destructuring the Response
    listScheduledAuditsResponse,
    ListScheduledAuditsResponse,

    -- * Response Lenses
    lsarrsNextToken,
    lsarrsScheduledAudits,
    lsarrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listScheduledAudits' smart constructor.
data ListScheduledAudits = ListScheduledAudits'
  { _lsaNextToken ::
      !(Maybe Text),
    _lsaMaxResults :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListScheduledAudits' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsaNextToken' - The token for the next set of results.
--
-- * 'lsaMaxResults' - The maximum number of results to return at one time. The default is 25.
listScheduledAudits ::
  ListScheduledAudits
listScheduledAudits =
  ListScheduledAudits'
    { _lsaNextToken = Nothing,
      _lsaMaxResults = Nothing
    }

-- | The token for the next set of results.
lsaNextToken :: Lens' ListScheduledAudits (Maybe Text)
lsaNextToken = lens _lsaNextToken (\s a -> s {_lsaNextToken = a})

-- | The maximum number of results to return at one time. The default is 25.
lsaMaxResults :: Lens' ListScheduledAudits (Maybe Natural)
lsaMaxResults = lens _lsaMaxResults (\s a -> s {_lsaMaxResults = a}) . mapping _Nat

instance AWSPager ListScheduledAudits where
  page rq rs
    | stop (rs ^. lsarrsNextToken) = Nothing
    | stop (rs ^. lsarrsScheduledAudits) = Nothing
    | otherwise =
      Just $ rq & lsaNextToken .~ rs ^. lsarrsNextToken

instance AWSRequest ListScheduledAudits where
  type
    Rs ListScheduledAudits =
      ListScheduledAuditsResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          ListScheduledAuditsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "scheduledAudits" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListScheduledAudits

instance NFData ListScheduledAudits

instance ToHeaders ListScheduledAudits where
  toHeaders = const mempty

instance ToPath ListScheduledAudits where
  toPath = const "/audit/scheduledaudits"

instance ToQuery ListScheduledAudits where
  toQuery ListScheduledAudits' {..} =
    mconcat
      [ "nextToken" =: _lsaNextToken,
        "maxResults" =: _lsaMaxResults
      ]

-- | /See:/ 'listScheduledAuditsResponse' smart constructor.
data ListScheduledAuditsResponse = ListScheduledAuditsResponse'
  { _lsarrsNextToken ::
      !(Maybe Text),
    _lsarrsScheduledAudits ::
      !( Maybe
           [ScheduledAuditMetadata]
       ),
    _lsarrsResponseStatus ::
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

-- | Creates a value of 'ListScheduledAuditsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsarrsNextToken' - A token that can be used to retrieve the next set of results, or @null@ if there are no additional results.
--
-- * 'lsarrsScheduledAudits' - The list of scheduled audits.
--
-- * 'lsarrsResponseStatus' - -- | The response status code.
listScheduledAuditsResponse ::
  -- | 'lsarrsResponseStatus'
  Int ->
  ListScheduledAuditsResponse
listScheduledAuditsResponse pResponseStatus_ =
  ListScheduledAuditsResponse'
    { _lsarrsNextToken =
        Nothing,
      _lsarrsScheduledAudits = Nothing,
      _lsarrsResponseStatus = pResponseStatus_
    }

-- | A token that can be used to retrieve the next set of results, or @null@ if there are no additional results.
lsarrsNextToken :: Lens' ListScheduledAuditsResponse (Maybe Text)
lsarrsNextToken = lens _lsarrsNextToken (\s a -> s {_lsarrsNextToken = a})

-- | The list of scheduled audits.
lsarrsScheduledAudits :: Lens' ListScheduledAuditsResponse [ScheduledAuditMetadata]
lsarrsScheduledAudits = lens _lsarrsScheduledAudits (\s a -> s {_lsarrsScheduledAudits = a}) . _Default . _Coerce

-- | -- | The response status code.
lsarrsResponseStatus :: Lens' ListScheduledAuditsResponse Int
lsarrsResponseStatus = lens _lsarrsResponseStatus (\s a -> s {_lsarrsResponseStatus = a})

instance NFData ListScheduledAuditsResponse
