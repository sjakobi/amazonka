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
-- Module      : Network.AWS.IoT.ListAuditSuppressions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists your Device Defender audit listings.
--
--
--
-- This operation returns paginated results.
module Network.AWS.IoT.ListAuditSuppressions
  ( -- * Creating a Request
    listAuditSuppressions,
    ListAuditSuppressions,

    -- * Request Lenses
    lasNextToken,
    lasMaxResults,
    lasResourceIdentifier,
    lasCheckName,
    lasAscendingOrder,

    -- * Destructuring the Response
    listAuditSuppressionsResponse,
    ListAuditSuppressionsResponse,

    -- * Response Lenses
    lasrrsNextToken,
    lasrrsSuppressions,
    lasrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listAuditSuppressions' smart constructor.
data ListAuditSuppressions = ListAuditSuppressions'
  { _lasNextToken ::
      !(Maybe Text),
    _lasMaxResults ::
      !(Maybe Nat),
    _lasResourceIdentifier ::
      !(Maybe ResourceIdentifier),
    _lasCheckName ::
      !(Maybe Text),
    _lasAscendingOrder ::
      !(Maybe Bool)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListAuditSuppressions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lasNextToken' - The token for the next set of results.
--
-- * 'lasMaxResults' - The maximum number of results to return at one time. The default is 25.
--
-- * 'lasResourceIdentifier' - Undocumented member.
--
-- * 'lasCheckName' - Undocumented member.
--
-- * 'lasAscendingOrder' - Determines whether suppressions are listed in ascending order by expiration date or not. If parameter isn't provided, @ascendingOrder=true@ .
listAuditSuppressions ::
  ListAuditSuppressions
listAuditSuppressions =
  ListAuditSuppressions'
    { _lasNextToken = Nothing,
      _lasMaxResults = Nothing,
      _lasResourceIdentifier = Nothing,
      _lasCheckName = Nothing,
      _lasAscendingOrder = Nothing
    }

-- | The token for the next set of results.
lasNextToken :: Lens' ListAuditSuppressions (Maybe Text)
lasNextToken = lens _lasNextToken (\s a -> s {_lasNextToken = a})

-- | The maximum number of results to return at one time. The default is 25.
lasMaxResults :: Lens' ListAuditSuppressions (Maybe Natural)
lasMaxResults = lens _lasMaxResults (\s a -> s {_lasMaxResults = a}) . mapping _Nat

-- | Undocumented member.
lasResourceIdentifier :: Lens' ListAuditSuppressions (Maybe ResourceIdentifier)
lasResourceIdentifier = lens _lasResourceIdentifier (\s a -> s {_lasResourceIdentifier = a})

-- | Undocumented member.
lasCheckName :: Lens' ListAuditSuppressions (Maybe Text)
lasCheckName = lens _lasCheckName (\s a -> s {_lasCheckName = a})

-- | Determines whether suppressions are listed in ascending order by expiration date or not. If parameter isn't provided, @ascendingOrder=true@ .
lasAscendingOrder :: Lens' ListAuditSuppressions (Maybe Bool)
lasAscendingOrder = lens _lasAscendingOrder (\s a -> s {_lasAscendingOrder = a})

instance AWSPager ListAuditSuppressions where
  page rq rs
    | stop (rs ^. lasrrsNextToken) = Nothing
    | stop (rs ^. lasrrsSuppressions) = Nothing
    | otherwise =
      Just $ rq & lasNextToken .~ rs ^. lasrrsNextToken

instance AWSRequest ListAuditSuppressions where
  type
    Rs ListAuditSuppressions =
      ListAuditSuppressionsResponse
  request = postJSON ioT
  response =
    receiveJSON
      ( \s h x ->
          ListAuditSuppressionsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "suppressions" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListAuditSuppressions

instance NFData ListAuditSuppressions

instance ToHeaders ListAuditSuppressions where
  toHeaders = const mempty

instance ToJSON ListAuditSuppressions where
  toJSON ListAuditSuppressions' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _lasNextToken,
            ("maxResults" .=) <$> _lasMaxResults,
            ("resourceIdentifier" .=) <$> _lasResourceIdentifier,
            ("checkName" .=) <$> _lasCheckName,
            ("ascendingOrder" .=) <$> _lasAscendingOrder
          ]
      )

instance ToPath ListAuditSuppressions where
  toPath = const "/audit/suppressions/list"

instance ToQuery ListAuditSuppressions where
  toQuery = const mempty

-- | /See:/ 'listAuditSuppressionsResponse' smart constructor.
data ListAuditSuppressionsResponse = ListAuditSuppressionsResponse'
  { _lasrrsNextToken ::
      !( Maybe
           Text
       ),
    _lasrrsSuppressions ::
      !( Maybe
           [AuditSuppression]
       ),
    _lasrrsResponseStatus ::
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

-- | Creates a value of 'ListAuditSuppressionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lasrrsNextToken' - A token that can be used to retrieve the next set of results, or @null@ if there are no additional results.
--
-- * 'lasrrsSuppressions' - List of audit suppressions.
--
-- * 'lasrrsResponseStatus' - -- | The response status code.
listAuditSuppressionsResponse ::
  -- | 'lasrrsResponseStatus'
  Int ->
  ListAuditSuppressionsResponse
listAuditSuppressionsResponse pResponseStatus_ =
  ListAuditSuppressionsResponse'
    { _lasrrsNextToken =
        Nothing,
      _lasrrsSuppressions = Nothing,
      _lasrrsResponseStatus = pResponseStatus_
    }

-- | A token that can be used to retrieve the next set of results, or @null@ if there are no additional results.
lasrrsNextToken :: Lens' ListAuditSuppressionsResponse (Maybe Text)
lasrrsNextToken = lens _lasrrsNextToken (\s a -> s {_lasrrsNextToken = a})

-- | List of audit suppressions.
lasrrsSuppressions :: Lens' ListAuditSuppressionsResponse [AuditSuppression]
lasrrsSuppressions = lens _lasrrsSuppressions (\s a -> s {_lasrrsSuppressions = a}) . _Default . _Coerce

-- | -- | The response status code.
lasrrsResponseStatus :: Lens' ListAuditSuppressionsResponse Int
lasrrsResponseStatus = lens _lasrrsResponseStatus (\s a -> s {_lasrrsResponseStatus = a})

instance NFData ListAuditSuppressionsResponse
