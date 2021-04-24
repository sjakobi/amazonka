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
-- Module      : Network.AWS.ElasticSearch.DeleteOutboundCrossClusterSearchConnection
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Allows the source domain owner to delete an existing outbound cross-cluster search connection.
module Network.AWS.ElasticSearch.DeleteOutboundCrossClusterSearchConnection
  ( -- * Creating a Request
    deleteOutboundCrossClusterSearchConnection,
    DeleteOutboundCrossClusterSearchConnection,

    -- * Request Lenses
    doccscCrossClusterSearchConnectionId,

    -- * Destructuring the Response
    deleteOutboundCrossClusterSearchConnectionResponse,
    DeleteOutboundCrossClusterSearchConnectionResponse,

    -- * Response Lenses
    doccscrorsCrossClusterSearchConnection,
    doccscrorsResponseStatus,
  )
where

import Network.AWS.ElasticSearch.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Container for the parameters to the @'DeleteOutboundCrossClusterSearchConnection' @ operation.
--
--
--
-- /See:/ 'deleteOutboundCrossClusterSearchConnection' smart constructor.
newtype DeleteOutboundCrossClusterSearchConnection = DeleteOutboundCrossClusterSearchConnection'
  { _doccscCrossClusterSearchConnectionId ::
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

-- | Creates a value of 'DeleteOutboundCrossClusterSearchConnection' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'doccscCrossClusterSearchConnectionId' - The id of the outbound connection that you want to permanently delete.
deleteOutboundCrossClusterSearchConnection ::
  -- | 'doccscCrossClusterSearchConnectionId'
  Text ->
  DeleteOutboundCrossClusterSearchConnection
deleteOutboundCrossClusterSearchConnection
  pCrossClusterSearchConnectionId_ =
    DeleteOutboundCrossClusterSearchConnection'
      { _doccscCrossClusterSearchConnectionId =
          pCrossClusterSearchConnectionId_
      }

-- | The id of the outbound connection that you want to permanently delete.
doccscCrossClusterSearchConnectionId :: Lens' DeleteOutboundCrossClusterSearchConnection Text
doccscCrossClusterSearchConnectionId = lens _doccscCrossClusterSearchConnectionId (\s a -> s {_doccscCrossClusterSearchConnectionId = a})

instance
  AWSRequest
    DeleteOutboundCrossClusterSearchConnection
  where
  type
    Rs DeleteOutboundCrossClusterSearchConnection =
      DeleteOutboundCrossClusterSearchConnectionResponse
  request = delete elasticSearch
  response =
    receiveJSON
      ( \s h x ->
          DeleteOutboundCrossClusterSearchConnectionResponse'
            <$> (x .?> "CrossClusterSearchConnection")
              <*> (pure (fromEnum s))
      )

instance
  Hashable
    DeleteOutboundCrossClusterSearchConnection

instance
  NFData
    DeleteOutboundCrossClusterSearchConnection

instance
  ToHeaders
    DeleteOutboundCrossClusterSearchConnection
  where
  toHeaders = const mempty

instance
  ToPath
    DeleteOutboundCrossClusterSearchConnection
  where
  toPath
    DeleteOutboundCrossClusterSearchConnection' {..} =
      mconcat
        [ "/2015-01-01/es/ccs/outboundConnection/",
          toBS _doccscCrossClusterSearchConnectionId
        ]

instance
  ToQuery
    DeleteOutboundCrossClusterSearchConnection
  where
  toQuery = const mempty

-- | The result of a @'DeleteOutboundCrossClusterSearchConnection' @ operation. Contains details of deleted outbound connection.
--
--
--
-- /See:/ 'deleteOutboundCrossClusterSearchConnectionResponse' smart constructor.
data DeleteOutboundCrossClusterSearchConnectionResponse = DeleteOutboundCrossClusterSearchConnectionResponse'
  { _doccscrorsCrossClusterSearchConnection ::
      !( Maybe
           OutboundCrossClusterSearchConnection
       ),
    _doccscrorsResponseStatus ::
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

-- | Creates a value of 'DeleteOutboundCrossClusterSearchConnectionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'doccscrorsCrossClusterSearchConnection' - Specifies the @'OutboundCrossClusterSearchConnection' @ of deleted outbound connection.
--
-- * 'doccscrorsResponseStatus' - -- | The response status code.
deleteOutboundCrossClusterSearchConnectionResponse ::
  -- | 'doccscrorsResponseStatus'
  Int ->
  DeleteOutboundCrossClusterSearchConnectionResponse
deleteOutboundCrossClusterSearchConnectionResponse
  pResponseStatus_ =
    DeleteOutboundCrossClusterSearchConnectionResponse'
      { _doccscrorsCrossClusterSearchConnection =
          Nothing,
        _doccscrorsResponseStatus =
          pResponseStatus_
      }

-- | Specifies the @'OutboundCrossClusterSearchConnection' @ of deleted outbound connection.
doccscrorsCrossClusterSearchConnection :: Lens' DeleteOutboundCrossClusterSearchConnectionResponse (Maybe OutboundCrossClusterSearchConnection)
doccscrorsCrossClusterSearchConnection = lens _doccscrorsCrossClusterSearchConnection (\s a -> s {_doccscrorsCrossClusterSearchConnection = a})

-- | -- | The response status code.
doccscrorsResponseStatus :: Lens' DeleteOutboundCrossClusterSearchConnectionResponse Int
doccscrorsResponseStatus = lens _doccscrorsResponseStatus (\s a -> s {_doccscrorsResponseStatus = a})

instance
  NFData
    DeleteOutboundCrossClusterSearchConnectionResponse
