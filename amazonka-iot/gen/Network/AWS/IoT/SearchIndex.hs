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
-- Module      : Network.AWS.IoT.SearchIndex
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The query search index.
module Network.AWS.IoT.SearchIndex
  ( -- * Creating a Request
    searchIndex,
    SearchIndex,

    -- * Request Lenses
    siNextToken,
    siIndexName,
    siMaxResults,
    siQueryVersion,
    siQueryString,

    -- * Destructuring the Response
    searchIndexResponse,
    SearchIndexResponse,

    -- * Response Lenses
    sirrsNextToken,
    sirrsThings,
    sirrsThingGroups,
    sirrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'searchIndex' smart constructor.
data SearchIndex = SearchIndex'
  { _siNextToken ::
      !(Maybe Text),
    _siIndexName :: !(Maybe Text),
    _siMaxResults :: !(Maybe Nat),
    _siQueryVersion :: !(Maybe Text),
    _siQueryString :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SearchIndex' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siNextToken' - The token used to get the next set of results, or @null@ if there are no additional results.
--
-- * 'siIndexName' - The search index name.
--
-- * 'siMaxResults' - The maximum number of results to return at one time.
--
-- * 'siQueryVersion' - The query version.
--
-- * 'siQueryString' - The search query string.
searchIndex ::
  -- | 'siQueryString'
  Text ->
  SearchIndex
searchIndex pQueryString_ =
  SearchIndex'
    { _siNextToken = Nothing,
      _siIndexName = Nothing,
      _siMaxResults = Nothing,
      _siQueryVersion = Nothing,
      _siQueryString = pQueryString_
    }

-- | The token used to get the next set of results, or @null@ if there are no additional results.
siNextToken :: Lens' SearchIndex (Maybe Text)
siNextToken = lens _siNextToken (\s a -> s {_siNextToken = a})

-- | The search index name.
siIndexName :: Lens' SearchIndex (Maybe Text)
siIndexName = lens _siIndexName (\s a -> s {_siIndexName = a})

-- | The maximum number of results to return at one time.
siMaxResults :: Lens' SearchIndex (Maybe Natural)
siMaxResults = lens _siMaxResults (\s a -> s {_siMaxResults = a}) . mapping _Nat

-- | The query version.
siQueryVersion :: Lens' SearchIndex (Maybe Text)
siQueryVersion = lens _siQueryVersion (\s a -> s {_siQueryVersion = a})

-- | The search query string.
siQueryString :: Lens' SearchIndex Text
siQueryString = lens _siQueryString (\s a -> s {_siQueryString = a})

instance AWSRequest SearchIndex where
  type Rs SearchIndex = SearchIndexResponse
  request = postJSON ioT
  response =
    receiveJSON
      ( \s h x ->
          SearchIndexResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "things" .!@ mempty)
            <*> (x .?> "thingGroups" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable SearchIndex

instance NFData SearchIndex

instance ToHeaders SearchIndex where
  toHeaders = const mempty

instance ToJSON SearchIndex where
  toJSON SearchIndex' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _siNextToken,
            ("indexName" .=) <$> _siIndexName,
            ("maxResults" .=) <$> _siMaxResults,
            ("queryVersion" .=) <$> _siQueryVersion,
            Just ("queryString" .= _siQueryString)
          ]
      )

instance ToPath SearchIndex where
  toPath = const "/indices/search"

instance ToQuery SearchIndex where
  toQuery = const mempty

-- | /See:/ 'searchIndexResponse' smart constructor.
data SearchIndexResponse = SearchIndexResponse'
  { _sirrsNextToken ::
      !(Maybe Text),
    _sirrsThings ::
      !(Maybe [ThingDocument]),
    _sirrsThingGroups ::
      !(Maybe [ThingGroupDocument]),
    _sirrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SearchIndexResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sirrsNextToken' - The token used to get the next set of results, or @null@ if there are no additional results.
--
-- * 'sirrsThings' - The things that match the search query.
--
-- * 'sirrsThingGroups' - The thing groups that match the search query.
--
-- * 'sirrsResponseStatus' - -- | The response status code.
searchIndexResponse ::
  -- | 'sirrsResponseStatus'
  Int ->
  SearchIndexResponse
searchIndexResponse pResponseStatus_ =
  SearchIndexResponse'
    { _sirrsNextToken = Nothing,
      _sirrsThings = Nothing,
      _sirrsThingGroups = Nothing,
      _sirrsResponseStatus = pResponseStatus_
    }

-- | The token used to get the next set of results, or @null@ if there are no additional results.
sirrsNextToken :: Lens' SearchIndexResponse (Maybe Text)
sirrsNextToken = lens _sirrsNextToken (\s a -> s {_sirrsNextToken = a})

-- | The things that match the search query.
sirrsThings :: Lens' SearchIndexResponse [ThingDocument]
sirrsThings = lens _sirrsThings (\s a -> s {_sirrsThings = a}) . _Default . _Coerce

-- | The thing groups that match the search query.
sirrsThingGroups :: Lens' SearchIndexResponse [ThingGroupDocument]
sirrsThingGroups = lens _sirrsThingGroups (\s a -> s {_sirrsThingGroups = a}) . _Default . _Coerce

-- | -- | The response status code.
sirrsResponseStatus :: Lens' SearchIndexResponse Int
sirrsResponseStatus = lens _sirrsResponseStatus (\s a -> s {_sirrsResponseStatus = a})

instance NFData SearchIndexResponse
