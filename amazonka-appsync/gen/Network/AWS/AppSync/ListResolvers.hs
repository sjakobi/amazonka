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
-- Module      : Network.AWS.AppSync.ListResolvers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the resolvers for a given API and type.
--
--
--
-- This operation returns paginated results.
module Network.AWS.AppSync.ListResolvers
  ( -- * Creating a Request
    listResolvers,
    ListResolvers,

    -- * Request Lenses
    lrNextToken,
    lrMaxResults,
    lrApiId,
    lrTypeName,

    -- * Destructuring the Response
    listResolversResponse,
    ListResolversResponse,

    -- * Response Lenses
    lrrrsNextToken,
    lrrrsResolvers,
    lrrrsResponseStatus,
  )
where

import Network.AWS.AppSync.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listResolvers' smart constructor.
data ListResolvers = ListResolvers'
  { _lrNextToken ::
      !(Maybe Text),
    _lrMaxResults :: !(Maybe Nat),
    _lrApiId :: !Text,
    _lrTypeName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListResolvers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrNextToken' - An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
--
-- * 'lrMaxResults' - The maximum number of results you want the request to return.
--
-- * 'lrApiId' - The API ID.
--
-- * 'lrTypeName' - The type name.
listResolvers ::
  -- | 'lrApiId'
  Text ->
  -- | 'lrTypeName'
  Text ->
  ListResolvers
listResolvers pApiId_ pTypeName_ =
  ListResolvers'
    { _lrNextToken = Nothing,
      _lrMaxResults = Nothing,
      _lrApiId = pApiId_,
      _lrTypeName = pTypeName_
    }

-- | An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
lrNextToken :: Lens' ListResolvers (Maybe Text)
lrNextToken = lens _lrNextToken (\s a -> s {_lrNextToken = a})

-- | The maximum number of results you want the request to return.
lrMaxResults :: Lens' ListResolvers (Maybe Natural)
lrMaxResults = lens _lrMaxResults (\s a -> s {_lrMaxResults = a}) . mapping _Nat

-- | The API ID.
lrApiId :: Lens' ListResolvers Text
lrApiId = lens _lrApiId (\s a -> s {_lrApiId = a})

-- | The type name.
lrTypeName :: Lens' ListResolvers Text
lrTypeName = lens _lrTypeName (\s a -> s {_lrTypeName = a})

instance AWSPager ListResolvers where
  page rq rs
    | stop (rs ^. lrrrsNextToken) = Nothing
    | stop (rs ^. lrrrsResolvers) = Nothing
    | otherwise =
      Just $ rq & lrNextToken .~ rs ^. lrrrsNextToken

instance AWSRequest ListResolvers where
  type Rs ListResolvers = ListResolversResponse
  request = get appSync
  response =
    receiveJSON
      ( \s h x ->
          ListResolversResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "resolvers" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListResolvers

instance NFData ListResolvers

instance ToHeaders ListResolvers where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath ListResolvers where
  toPath ListResolvers' {..} =
    mconcat
      [ "/v1/apis/",
        toBS _lrApiId,
        "/types/",
        toBS _lrTypeName,
        "/resolvers"
      ]

instance ToQuery ListResolvers where
  toQuery ListResolvers' {..} =
    mconcat
      [ "nextToken" =: _lrNextToken,
        "maxResults" =: _lrMaxResults
      ]

-- | /See:/ 'listResolversResponse' smart constructor.
data ListResolversResponse = ListResolversResponse'
  { _lrrrsNextToken ::
      !(Maybe Text),
    _lrrrsResolvers ::
      !(Maybe [Resolver]),
    _lrrrsResponseStatus ::
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

-- | Creates a value of 'ListResolversResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrrrsNextToken' - An identifier to be passed in the next request to this operation to return the next set of items in the list.
--
-- * 'lrrrsResolvers' - The @Resolver@ objects.
--
-- * 'lrrrsResponseStatus' - -- | The response status code.
listResolversResponse ::
  -- | 'lrrrsResponseStatus'
  Int ->
  ListResolversResponse
listResolversResponse pResponseStatus_ =
  ListResolversResponse'
    { _lrrrsNextToken = Nothing,
      _lrrrsResolvers = Nothing,
      _lrrrsResponseStatus = pResponseStatus_
    }

-- | An identifier to be passed in the next request to this operation to return the next set of items in the list.
lrrrsNextToken :: Lens' ListResolversResponse (Maybe Text)
lrrrsNextToken = lens _lrrrsNextToken (\s a -> s {_lrrrsNextToken = a})

-- | The @Resolver@ objects.
lrrrsResolvers :: Lens' ListResolversResponse [Resolver]
lrrrsResolvers = lens _lrrrsResolvers (\s a -> s {_lrrrsResolvers = a}) . _Default . _Coerce

-- | -- | The response status code.
lrrrsResponseStatus :: Lens' ListResolversResponse Int
lrrrsResponseStatus = lens _lrrrsResponseStatus (\s a -> s {_lrrrsResponseStatus = a})

instance NFData ListResolversResponse
