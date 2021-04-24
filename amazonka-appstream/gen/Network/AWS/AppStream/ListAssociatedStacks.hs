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
-- Module      : Network.AWS.AppStream.ListAssociatedStacks
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the name of the stack with which the specified fleet is associated.
--
--
--
-- This operation returns paginated results.
module Network.AWS.AppStream.ListAssociatedStacks
  ( -- * Creating a Request
    listAssociatedStacks,
    ListAssociatedStacks,

    -- * Request Lenses
    lasNextToken,
    lasFleetName,

    -- * Destructuring the Response
    listAssociatedStacksResponse,
    ListAssociatedStacksResponse,

    -- * Response Lenses
    lasrrsNames,
    lasrrsNextToken,
    lasrrsResponseStatus,
  )
where

import Network.AWS.AppStream.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listAssociatedStacks' smart constructor.
data ListAssociatedStacks = ListAssociatedStacks'
  { _lasNextToken ::
      !(Maybe Text),
    _lasFleetName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListAssociatedStacks' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lasNextToken' - The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.
--
-- * 'lasFleetName' - The name of the fleet.
listAssociatedStacks ::
  -- | 'lasFleetName'
  Text ->
  ListAssociatedStacks
listAssociatedStacks pFleetName_ =
  ListAssociatedStacks'
    { _lasNextToken = Nothing,
      _lasFleetName = pFleetName_
    }

-- | The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.
lasNextToken :: Lens' ListAssociatedStacks (Maybe Text)
lasNextToken = lens _lasNextToken (\s a -> s {_lasNextToken = a})

-- | The name of the fleet.
lasFleetName :: Lens' ListAssociatedStacks Text
lasFleetName = lens _lasFleetName (\s a -> s {_lasFleetName = a})

instance AWSPager ListAssociatedStacks where
  page rq rs
    | stop (rs ^. lasrrsNextToken) = Nothing
    | stop (rs ^. lasrrsNames) = Nothing
    | otherwise =
      Just $ rq & lasNextToken .~ rs ^. lasrrsNextToken

instance AWSRequest ListAssociatedStacks where
  type
    Rs ListAssociatedStacks =
      ListAssociatedStacksResponse
  request = postJSON appStream
  response =
    receiveJSON
      ( \s h x ->
          ListAssociatedStacksResponse'
            <$> (x .?> "Names" .!@ mempty)
            <*> (x .?> "NextToken")
            <*> (pure (fromEnum s))
      )

instance Hashable ListAssociatedStacks

instance NFData ListAssociatedStacks

instance ToHeaders ListAssociatedStacks where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "PhotonAdminProxyService.ListAssociatedStacks" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListAssociatedStacks where
  toJSON ListAssociatedStacks' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lasNextToken,
            Just ("FleetName" .= _lasFleetName)
          ]
      )

instance ToPath ListAssociatedStacks where
  toPath = const "/"

instance ToQuery ListAssociatedStacks where
  toQuery = const mempty

-- | /See:/ 'listAssociatedStacksResponse' smart constructor.
data ListAssociatedStacksResponse = ListAssociatedStacksResponse'
  { _lasrrsNames ::
      !( Maybe
           [Text]
       ),
    _lasrrsNextToken ::
      !(Maybe Text),
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

-- | Creates a value of 'ListAssociatedStacksResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lasrrsNames' - The name of the stack.
--
-- * 'lasrrsNextToken' - The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.
--
-- * 'lasrrsResponseStatus' - -- | The response status code.
listAssociatedStacksResponse ::
  -- | 'lasrrsResponseStatus'
  Int ->
  ListAssociatedStacksResponse
listAssociatedStacksResponse pResponseStatus_ =
  ListAssociatedStacksResponse'
    { _lasrrsNames =
        Nothing,
      _lasrrsNextToken = Nothing,
      _lasrrsResponseStatus = pResponseStatus_
    }

-- | The name of the stack.
lasrrsNames :: Lens' ListAssociatedStacksResponse [Text]
lasrrsNames = lens _lasrrsNames (\s a -> s {_lasrrsNames = a}) . _Default . _Coerce

-- | The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.
lasrrsNextToken :: Lens' ListAssociatedStacksResponse (Maybe Text)
lasrrsNextToken = lens _lasrrsNextToken (\s a -> s {_lasrrsNextToken = a})

-- | -- | The response status code.
lasrrsResponseStatus :: Lens' ListAssociatedStacksResponse Int
lasrrsResponseStatus = lens _lasrrsResponseStatus (\s a -> s {_lasrrsResponseStatus = a})

instance NFData ListAssociatedStacksResponse
