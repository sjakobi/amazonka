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
-- Module      : Network.AWS.IoT.ListPrincipalThings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the things associated with the specified principal. A principal can be X.509 certificates, IAM users, groups, and roles, Amazon Cognito identities or federated identities.
--
--
--
-- This operation returns paginated results.
module Network.AWS.IoT.ListPrincipalThings
  ( -- * Creating a Request
    listPrincipalThings,
    ListPrincipalThings,

    -- * Request Lenses
    lNextToken,
    lMaxResults,
    lPrincipal,

    -- * Destructuring the Response
    listPrincipalThingsResponse,
    ListPrincipalThingsResponse,

    -- * Response Lenses
    lrsNextToken,
    lrsThings,
    lrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The input for the ListPrincipalThings operation.
--
--
--
-- /See:/ 'listPrincipalThings' smart constructor.
data ListPrincipalThings = ListPrincipalThings'
  { _lNextToken ::
      !(Maybe Text),
    _lMaxResults :: !(Maybe Nat),
    _lPrincipal :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListPrincipalThings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lNextToken' - To retrieve the next set of results, the @nextToken@ value from a previous response; otherwise __null__ to receive the first set of results.
--
-- * 'lMaxResults' - The maximum number of results to return in this operation.
--
-- * 'lPrincipal' - The principal.
listPrincipalThings ::
  -- | 'lPrincipal'
  Text ->
  ListPrincipalThings
listPrincipalThings pPrincipal_ =
  ListPrincipalThings'
    { _lNextToken = Nothing,
      _lMaxResults = Nothing,
      _lPrincipal = pPrincipal_
    }

-- | To retrieve the next set of results, the @nextToken@ value from a previous response; otherwise __null__ to receive the first set of results.
lNextToken :: Lens' ListPrincipalThings (Maybe Text)
lNextToken = lens _lNextToken (\s a -> s {_lNextToken = a})

-- | The maximum number of results to return in this operation.
lMaxResults :: Lens' ListPrincipalThings (Maybe Natural)
lMaxResults = lens _lMaxResults (\s a -> s {_lMaxResults = a}) . mapping _Nat

-- | The principal.
lPrincipal :: Lens' ListPrincipalThings Text
lPrincipal = lens _lPrincipal (\s a -> s {_lPrincipal = a})

instance AWSPager ListPrincipalThings where
  page rq rs
    | stop (rs ^. lrsNextToken) = Nothing
    | stop (rs ^. lrsThings) = Nothing
    | otherwise =
      Just $ rq & lNextToken .~ rs ^. lrsNextToken

instance AWSRequest ListPrincipalThings where
  type
    Rs ListPrincipalThings =
      ListPrincipalThingsResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          ListPrincipalThingsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "things" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListPrincipalThings

instance NFData ListPrincipalThings

instance ToHeaders ListPrincipalThings where
  toHeaders ListPrincipalThings' {..} =
    mconcat ["x-amzn-principal" =# _lPrincipal]

instance ToPath ListPrincipalThings where
  toPath = const "/principals/things"

instance ToQuery ListPrincipalThings where
  toQuery ListPrincipalThings' {..} =
    mconcat
      [ "nextToken" =: _lNextToken,
        "maxResults" =: _lMaxResults
      ]

-- | The output from the ListPrincipalThings operation.
--
--
--
-- /See:/ 'listPrincipalThingsResponse' smart constructor.
data ListPrincipalThingsResponse = ListPrincipalThingsResponse'
  { _lrsNextToken ::
      !(Maybe Text),
    _lrsThings ::
      !(Maybe [Text]),
    _lrsResponseStatus ::
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

-- | Creates a value of 'ListPrincipalThingsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrsNextToken' - The token to use to get the next set of results, or __null__ if there are no additional results.
--
-- * 'lrsThings' - The things.
--
-- * 'lrsResponseStatus' - -- | The response status code.
listPrincipalThingsResponse ::
  -- | 'lrsResponseStatus'
  Int ->
  ListPrincipalThingsResponse
listPrincipalThingsResponse pResponseStatus_ =
  ListPrincipalThingsResponse'
    { _lrsNextToken =
        Nothing,
      _lrsThings = Nothing,
      _lrsResponseStatus = pResponseStatus_
    }

-- | The token to use to get the next set of results, or __null__ if there are no additional results.
lrsNextToken :: Lens' ListPrincipalThingsResponse (Maybe Text)
lrsNextToken = lens _lrsNextToken (\s a -> s {_lrsNextToken = a})

-- | The things.
lrsThings :: Lens' ListPrincipalThingsResponse [Text]
lrsThings = lens _lrsThings (\s a -> s {_lrsThings = a}) . _Default . _Coerce

-- | -- | The response status code.
lrsResponseStatus :: Lens' ListPrincipalThingsResponse Int
lrsResponseStatus = lens _lrsResponseStatus (\s a -> s {_lrsResponseStatus = a})

instance NFData ListPrincipalThingsResponse
