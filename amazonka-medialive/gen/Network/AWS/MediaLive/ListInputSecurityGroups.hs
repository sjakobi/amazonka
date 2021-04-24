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
-- Module      : Network.AWS.MediaLive.ListInputSecurityGroups
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Produces a list of Input Security Groups for an account
--
-- This operation returns paginated results.
module Network.AWS.MediaLive.ListInputSecurityGroups
  ( -- * Creating a Request
    listInputSecurityGroups,
    ListInputSecurityGroups,

    -- * Request Lenses
    lisgNextToken,
    lisgMaxResults,

    -- * Destructuring the Response
    listInputSecurityGroupsResponse,
    ListInputSecurityGroupsResponse,

    -- * Response Lenses
    lisgrrsNextToken,
    lisgrrsInputSecurityGroups,
    lisgrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Placeholder documentation for ListInputSecurityGroupsRequest
--
-- /See:/ 'listInputSecurityGroups' smart constructor.
data ListInputSecurityGroups = ListInputSecurityGroups'
  { _lisgNextToken ::
      !(Maybe Text),
    _lisgMaxResults ::
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

-- | Creates a value of 'ListInputSecurityGroups' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lisgNextToken' - Undocumented member.
--
-- * 'lisgMaxResults' - Undocumented member.
listInputSecurityGroups ::
  ListInputSecurityGroups
listInputSecurityGroups =
  ListInputSecurityGroups'
    { _lisgNextToken = Nothing,
      _lisgMaxResults = Nothing
    }

-- | Undocumented member.
lisgNextToken :: Lens' ListInputSecurityGroups (Maybe Text)
lisgNextToken = lens _lisgNextToken (\s a -> s {_lisgNextToken = a})

-- | Undocumented member.
lisgMaxResults :: Lens' ListInputSecurityGroups (Maybe Natural)
lisgMaxResults = lens _lisgMaxResults (\s a -> s {_lisgMaxResults = a}) . mapping _Nat

instance AWSPager ListInputSecurityGroups where
  page rq rs
    | stop (rs ^. lisgrrsNextToken) = Nothing
    | stop (rs ^. lisgrrsInputSecurityGroups) = Nothing
    | otherwise =
      Just $ rq & lisgNextToken .~ rs ^. lisgrrsNextToken

instance AWSRequest ListInputSecurityGroups where
  type
    Rs ListInputSecurityGroups =
      ListInputSecurityGroupsResponse
  request = get mediaLive
  response =
    receiveJSON
      ( \s h x ->
          ListInputSecurityGroupsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "inputSecurityGroups" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListInputSecurityGroups

instance NFData ListInputSecurityGroups

instance ToHeaders ListInputSecurityGroups where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath ListInputSecurityGroups where
  toPath = const "/prod/inputSecurityGroups"

instance ToQuery ListInputSecurityGroups where
  toQuery ListInputSecurityGroups' {..} =
    mconcat
      [ "nextToken" =: _lisgNextToken,
        "maxResults" =: _lisgMaxResults
      ]

-- | Placeholder documentation for ListInputSecurityGroupsResponse
--
-- /See:/ 'listInputSecurityGroupsResponse' smart constructor.
data ListInputSecurityGroupsResponse = ListInputSecurityGroupsResponse'
  { _lisgrrsNextToken ::
      !( Maybe
           Text
       ),
    _lisgrrsInputSecurityGroups ::
      !( Maybe
           [InputSecurityGroup]
       ),
    _lisgrrsResponseStatus ::
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

-- | Creates a value of 'ListInputSecurityGroupsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lisgrrsNextToken' - Undocumented member.
--
-- * 'lisgrrsInputSecurityGroups' - List of input security groups
--
-- * 'lisgrrsResponseStatus' - -- | The response status code.
listInputSecurityGroupsResponse ::
  -- | 'lisgrrsResponseStatus'
  Int ->
  ListInputSecurityGroupsResponse
listInputSecurityGroupsResponse pResponseStatus_ =
  ListInputSecurityGroupsResponse'
    { _lisgrrsNextToken =
        Nothing,
      _lisgrrsInputSecurityGroups = Nothing,
      _lisgrrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
lisgrrsNextToken :: Lens' ListInputSecurityGroupsResponse (Maybe Text)
lisgrrsNextToken = lens _lisgrrsNextToken (\s a -> s {_lisgrrsNextToken = a})

-- | List of input security groups
lisgrrsInputSecurityGroups :: Lens' ListInputSecurityGroupsResponse [InputSecurityGroup]
lisgrrsInputSecurityGroups = lens _lisgrrsInputSecurityGroups (\s a -> s {_lisgrrsInputSecurityGroups = a}) . _Default . _Coerce

-- | -- | The response status code.
lisgrrsResponseStatus :: Lens' ListInputSecurityGroupsResponse Int
lisgrrsResponseStatus = lens _lisgrrsResponseStatus (\s a -> s {_lisgrrsResponseStatus = a})

instance NFData ListInputSecurityGroupsResponse
