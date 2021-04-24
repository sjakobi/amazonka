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
-- Module      : Network.AWS.ElasticSearch.DeleteElasticsearchDomain
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Permanently deletes the specified Elasticsearch domain and all of its data. Once a domain is deleted, it cannot be recovered.
module Network.AWS.ElasticSearch.DeleteElasticsearchDomain
  ( -- * Creating a Request
    deleteElasticsearchDomain,
    DeleteElasticsearchDomain,

    -- * Request Lenses
    delDomainName,

    -- * Destructuring the Response
    deleteElasticsearchDomainResponse,
    DeleteElasticsearchDomainResponse,

    -- * Response Lenses
    dedrrsDomainStatus,
    dedrrsResponseStatus,
  )
where

import Network.AWS.ElasticSearch.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Container for the parameters to the @'DeleteElasticsearchDomain' @ operation. Specifies the name of the Elasticsearch domain that you want to delete.
--
--
--
-- /See:/ 'deleteElasticsearchDomain' smart constructor.
newtype DeleteElasticsearchDomain = DeleteElasticsearchDomain'
  { _delDomainName ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteElasticsearchDomain' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'delDomainName' - The name of the Elasticsearch domain that you want to permanently delete.
deleteElasticsearchDomain ::
  -- | 'delDomainName'
  Text ->
  DeleteElasticsearchDomain
deleteElasticsearchDomain pDomainName_ =
  DeleteElasticsearchDomain'
    { _delDomainName =
        pDomainName_
    }

-- | The name of the Elasticsearch domain that you want to permanently delete.
delDomainName :: Lens' DeleteElasticsearchDomain Text
delDomainName = lens _delDomainName (\s a -> s {_delDomainName = a})

instance AWSRequest DeleteElasticsearchDomain where
  type
    Rs DeleteElasticsearchDomain =
      DeleteElasticsearchDomainResponse
  request = delete elasticSearch
  response =
    receiveJSON
      ( \s h x ->
          DeleteElasticsearchDomainResponse'
            <$> (x .?> "DomainStatus") <*> (pure (fromEnum s))
      )

instance Hashable DeleteElasticsearchDomain

instance NFData DeleteElasticsearchDomain

instance ToHeaders DeleteElasticsearchDomain where
  toHeaders = const mempty

instance ToPath DeleteElasticsearchDomain where
  toPath DeleteElasticsearchDomain' {..} =
    mconcat
      ["/2015-01-01/es/domain/", toBS _delDomainName]

instance ToQuery DeleteElasticsearchDomain where
  toQuery = const mempty

-- | The result of a @DeleteElasticsearchDomain@ request. Contains the status of the pending deletion, or no status if the domain and all of its resources have been deleted.
--
--
--
-- /See:/ 'deleteElasticsearchDomainResponse' smart constructor.
data DeleteElasticsearchDomainResponse = DeleteElasticsearchDomainResponse'
  { _dedrrsDomainStatus ::
      !( Maybe
           ElasticsearchDomainStatus
       ),
    _dedrrsResponseStatus ::
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

-- | Creates a value of 'DeleteElasticsearchDomainResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dedrrsDomainStatus' - The status of the Elasticsearch domain being deleted.
--
-- * 'dedrrsResponseStatus' - -- | The response status code.
deleteElasticsearchDomainResponse ::
  -- | 'dedrrsResponseStatus'
  Int ->
  DeleteElasticsearchDomainResponse
deleteElasticsearchDomainResponse pResponseStatus_ =
  DeleteElasticsearchDomainResponse'
    { _dedrrsDomainStatus =
        Nothing,
      _dedrrsResponseStatus = pResponseStatus_
    }

-- | The status of the Elasticsearch domain being deleted.
dedrrsDomainStatus :: Lens' DeleteElasticsearchDomainResponse (Maybe ElasticsearchDomainStatus)
dedrrsDomainStatus = lens _dedrrsDomainStatus (\s a -> s {_dedrrsDomainStatus = a})

-- | -- | The response status code.
dedrrsResponseStatus :: Lens' DeleteElasticsearchDomainResponse Int
dedrrsResponseStatus = lens _dedrrsResponseStatus (\s a -> s {_dedrrsResponseStatus = a})

instance NFData DeleteElasticsearchDomainResponse
