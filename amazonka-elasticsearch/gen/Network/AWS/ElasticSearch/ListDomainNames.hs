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
-- Module      : Network.AWS.ElasticSearch.ListDomainNames
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the name of all Elasticsearch domains owned by the current user's account.
module Network.AWS.ElasticSearch.ListDomainNames
  ( -- * Creating a Request
    listDomainNames,
    ListDomainNames,

    -- * Destructuring the Response
    listDomainNamesResponse,
    ListDomainNamesResponse,

    -- * Response Lenses
    ldnrrsDomainNames,
    ldnrrsResponseStatus,
  )
where

import Network.AWS.ElasticSearch.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listDomainNames' smart constructor.
data ListDomainNames = ListDomainNames'
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListDomainNames' with the minimum fields required to make a request.
listDomainNames ::
  ListDomainNames
listDomainNames = ListDomainNames'

instance AWSRequest ListDomainNames where
  type Rs ListDomainNames = ListDomainNamesResponse
  request = get elasticSearch
  response =
    receiveJSON
      ( \s h x ->
          ListDomainNamesResponse'
            <$> (x .?> "DomainNames" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListDomainNames

instance NFData ListDomainNames

instance ToHeaders ListDomainNames where
  toHeaders = const mempty

instance ToPath ListDomainNames where
  toPath = const "/2015-01-01/domain"

instance ToQuery ListDomainNames where
  toQuery = const mempty

-- | The result of a @ListDomainNames@ operation. Contains the names of all Elasticsearch domains owned by this account.
--
--
--
-- /See:/ 'listDomainNamesResponse' smart constructor.
data ListDomainNamesResponse = ListDomainNamesResponse'
  { _ldnrrsDomainNames ::
      !(Maybe [DomainInfo]),
    _ldnrrsResponseStatus ::
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

-- | Creates a value of 'ListDomainNamesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldnrrsDomainNames' - List of Elasticsearch domain names.
--
-- * 'ldnrrsResponseStatus' - -- | The response status code.
listDomainNamesResponse ::
  -- | 'ldnrrsResponseStatus'
  Int ->
  ListDomainNamesResponse
listDomainNamesResponse pResponseStatus_ =
  ListDomainNamesResponse'
    { _ldnrrsDomainNames =
        Nothing,
      _ldnrrsResponseStatus = pResponseStatus_
    }

-- | List of Elasticsearch domain names.
ldnrrsDomainNames :: Lens' ListDomainNamesResponse [DomainInfo]
ldnrrsDomainNames = lens _ldnrrsDomainNames (\s a -> s {_ldnrrsDomainNames = a}) . _Default . _Coerce

-- | -- | The response status code.
ldnrrsResponseStatus :: Lens' ListDomainNamesResponse Int
ldnrrsResponseStatus = lens _ldnrrsResponseStatus (\s a -> s {_ldnrrsResponseStatus = a})

instance NFData ListDomainNamesResponse
