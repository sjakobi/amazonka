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
-- Module      : Network.AWS.IoT.ListThingPrincipals
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the principals associated with the specified thing. A principal can be X.509 certificates, IAM users, groups, and roles, Amazon Cognito identities or federated identities.
--
--
--
-- This operation returns paginated results.
module Network.AWS.IoT.ListThingPrincipals
  ( -- * Creating a Request
    listThingPrincipals,
    ListThingPrincipals,

    -- * Request Lenses
    ltpNextToken,
    ltpMaxResults,
    ltpThingName,

    -- * Destructuring the Response
    listThingPrincipalsResponse,
    ListThingPrincipalsResponse,

    -- * Response Lenses
    ltprrsNextToken,
    ltprrsPrincipals,
    ltprrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The input for the ListThingPrincipal operation.
--
--
--
-- /See:/ 'listThingPrincipals' smart constructor.
data ListThingPrincipals = ListThingPrincipals'
  { _ltpNextToken ::
      !(Maybe Text),
    _ltpMaxResults :: !(Maybe Nat),
    _ltpThingName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListThingPrincipals' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltpNextToken' - To retrieve the next set of results, the @nextToken@ value from a previous response; otherwise __null__ to receive the first set of results.
--
-- * 'ltpMaxResults' - The maximum number of results to return in this operation.
--
-- * 'ltpThingName' - The name of the thing.
listThingPrincipals ::
  -- | 'ltpThingName'
  Text ->
  ListThingPrincipals
listThingPrincipals pThingName_ =
  ListThingPrincipals'
    { _ltpNextToken = Nothing,
      _ltpMaxResults = Nothing,
      _ltpThingName = pThingName_
    }

-- | To retrieve the next set of results, the @nextToken@ value from a previous response; otherwise __null__ to receive the first set of results.
ltpNextToken :: Lens' ListThingPrincipals (Maybe Text)
ltpNextToken = lens _ltpNextToken (\s a -> s {_ltpNextToken = a})

-- | The maximum number of results to return in this operation.
ltpMaxResults :: Lens' ListThingPrincipals (Maybe Natural)
ltpMaxResults = lens _ltpMaxResults (\s a -> s {_ltpMaxResults = a}) . mapping _Nat

-- | The name of the thing.
ltpThingName :: Lens' ListThingPrincipals Text
ltpThingName = lens _ltpThingName (\s a -> s {_ltpThingName = a})

instance AWSPager ListThingPrincipals where
  page rq rs
    | stop (rs ^. ltprrsNextToken) = Nothing
    | stop (rs ^. ltprrsPrincipals) = Nothing
    | otherwise =
      Just $ rq & ltpNextToken .~ rs ^. ltprrsNextToken

instance AWSRequest ListThingPrincipals where
  type
    Rs ListThingPrincipals =
      ListThingPrincipalsResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          ListThingPrincipalsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "principals" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListThingPrincipals

instance NFData ListThingPrincipals

instance ToHeaders ListThingPrincipals where
  toHeaders = const mempty

instance ToPath ListThingPrincipals where
  toPath ListThingPrincipals' {..} =
    mconcat
      ["/things/", toBS _ltpThingName, "/principals"]

instance ToQuery ListThingPrincipals where
  toQuery ListThingPrincipals' {..} =
    mconcat
      [ "nextToken" =: _ltpNextToken,
        "maxResults" =: _ltpMaxResults
      ]

-- | The output from the ListThingPrincipals operation.
--
--
--
-- /See:/ 'listThingPrincipalsResponse' smart constructor.
data ListThingPrincipalsResponse = ListThingPrincipalsResponse'
  { _ltprrsNextToken ::
      !(Maybe Text),
    _ltprrsPrincipals ::
      !(Maybe [Text]),
    _ltprrsResponseStatus ::
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

-- | Creates a value of 'ListThingPrincipalsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltprrsNextToken' - The token to use to get the next set of results, or __null__ if there are no additional results.
--
-- * 'ltprrsPrincipals' - The principals associated with the thing.
--
-- * 'ltprrsResponseStatus' - -- | The response status code.
listThingPrincipalsResponse ::
  -- | 'ltprrsResponseStatus'
  Int ->
  ListThingPrincipalsResponse
listThingPrincipalsResponse pResponseStatus_ =
  ListThingPrincipalsResponse'
    { _ltprrsNextToken =
        Nothing,
      _ltprrsPrincipals = Nothing,
      _ltprrsResponseStatus = pResponseStatus_
    }

-- | The token to use to get the next set of results, or __null__ if there are no additional results.
ltprrsNextToken :: Lens' ListThingPrincipalsResponse (Maybe Text)
ltprrsNextToken = lens _ltprrsNextToken (\s a -> s {_ltprrsNextToken = a})

-- | The principals associated with the thing.
ltprrsPrincipals :: Lens' ListThingPrincipalsResponse [Text]
ltprrsPrincipals = lens _ltprrsPrincipals (\s a -> s {_ltprrsPrincipals = a}) . _Default . _Coerce

-- | -- | The response status code.
ltprrsResponseStatus :: Lens' ListThingPrincipalsResponse Int
ltprrsResponseStatus = lens _ltprrsResponseStatus (\s a -> s {_ltprrsResponseStatus = a})

instance NFData ListThingPrincipalsResponse
