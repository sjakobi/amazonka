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
-- Module      : Network.AWS.IoT.ListThingsInBillingGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the things you have added to the given billing group.
--
--
--
-- This operation returns paginated results.
module Network.AWS.IoT.ListThingsInBillingGroup
  ( -- * Creating a Request
    listThingsInBillingGroup,
    ListThingsInBillingGroup,

    -- * Request Lenses
    ltibgNextToken,
    ltibgMaxResults,
    ltibgBillingGroupName,

    -- * Destructuring the Response
    listThingsInBillingGroupResponse,
    ListThingsInBillingGroupResponse,

    -- * Response Lenses
    ltibgrrsNextToken,
    ltibgrrsThings,
    ltibgrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listThingsInBillingGroup' smart constructor.
data ListThingsInBillingGroup = ListThingsInBillingGroup'
  { _ltibgNextToken ::
      !(Maybe Text),
    _ltibgMaxResults ::
      !(Maybe Nat),
    _ltibgBillingGroupName ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListThingsInBillingGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltibgNextToken' - To retrieve the next set of results, the @nextToken@ value from a previous response; otherwise __null__ to receive the first set of results.
--
-- * 'ltibgMaxResults' - The maximum number of results to return per request.
--
-- * 'ltibgBillingGroupName' - The name of the billing group.
listThingsInBillingGroup ::
  -- | 'ltibgBillingGroupName'
  Text ->
  ListThingsInBillingGroup
listThingsInBillingGroup pBillingGroupName_ =
  ListThingsInBillingGroup'
    { _ltibgNextToken =
        Nothing,
      _ltibgMaxResults = Nothing,
      _ltibgBillingGroupName = pBillingGroupName_
    }

-- | To retrieve the next set of results, the @nextToken@ value from a previous response; otherwise __null__ to receive the first set of results.
ltibgNextToken :: Lens' ListThingsInBillingGroup (Maybe Text)
ltibgNextToken = lens _ltibgNextToken (\s a -> s {_ltibgNextToken = a})

-- | The maximum number of results to return per request.
ltibgMaxResults :: Lens' ListThingsInBillingGroup (Maybe Natural)
ltibgMaxResults = lens _ltibgMaxResults (\s a -> s {_ltibgMaxResults = a}) . mapping _Nat

-- | The name of the billing group.
ltibgBillingGroupName :: Lens' ListThingsInBillingGroup Text
ltibgBillingGroupName = lens _ltibgBillingGroupName (\s a -> s {_ltibgBillingGroupName = a})

instance AWSPager ListThingsInBillingGroup where
  page rq rs
    | stop (rs ^. ltibgrrsNextToken) = Nothing
    | stop (rs ^. ltibgrrsThings) = Nothing
    | otherwise =
      Just $ rq & ltibgNextToken .~ rs ^. ltibgrrsNextToken

instance AWSRequest ListThingsInBillingGroup where
  type
    Rs ListThingsInBillingGroup =
      ListThingsInBillingGroupResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          ListThingsInBillingGroupResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "things" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListThingsInBillingGroup

instance NFData ListThingsInBillingGroup

instance ToHeaders ListThingsInBillingGroup where
  toHeaders = const mempty

instance ToPath ListThingsInBillingGroup where
  toPath ListThingsInBillingGroup' {..} =
    mconcat
      [ "/billing-groups/",
        toBS _ltibgBillingGroupName,
        "/things"
      ]

instance ToQuery ListThingsInBillingGroup where
  toQuery ListThingsInBillingGroup' {..} =
    mconcat
      [ "nextToken" =: _ltibgNextToken,
        "maxResults" =: _ltibgMaxResults
      ]

-- | /See:/ 'listThingsInBillingGroupResponse' smart constructor.
data ListThingsInBillingGroupResponse = ListThingsInBillingGroupResponse'
  { _ltibgrrsNextToken ::
      !( Maybe
           Text
       ),
    _ltibgrrsThings ::
      !( Maybe
           [Text]
       ),
    _ltibgrrsResponseStatus ::
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

-- | Creates a value of 'ListThingsInBillingGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltibgrrsNextToken' - The token to use to get the next set of results. Will not be returned if operation has returned all results.
--
-- * 'ltibgrrsThings' - A list of things in the billing group.
--
-- * 'ltibgrrsResponseStatus' - -- | The response status code.
listThingsInBillingGroupResponse ::
  -- | 'ltibgrrsResponseStatus'
  Int ->
  ListThingsInBillingGroupResponse
listThingsInBillingGroupResponse pResponseStatus_ =
  ListThingsInBillingGroupResponse'
    { _ltibgrrsNextToken =
        Nothing,
      _ltibgrrsThings = Nothing,
      _ltibgrrsResponseStatus =
        pResponseStatus_
    }

-- | The token to use to get the next set of results. Will not be returned if operation has returned all results.
ltibgrrsNextToken :: Lens' ListThingsInBillingGroupResponse (Maybe Text)
ltibgrrsNextToken = lens _ltibgrrsNextToken (\s a -> s {_ltibgrrsNextToken = a})

-- | A list of things in the billing group.
ltibgrrsThings :: Lens' ListThingsInBillingGroupResponse [Text]
ltibgrrsThings = lens _ltibgrrsThings (\s a -> s {_ltibgrrsThings = a}) . _Default . _Coerce

-- | -- | The response status code.
ltibgrrsResponseStatus :: Lens' ListThingsInBillingGroupResponse Int
ltibgrrsResponseStatus = lens _ltibgrrsResponseStatus (\s a -> s {_ltibgrrsResponseStatus = a})

instance NFData ListThingsInBillingGroupResponse
