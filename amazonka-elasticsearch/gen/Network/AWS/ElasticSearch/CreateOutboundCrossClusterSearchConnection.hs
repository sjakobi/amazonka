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
-- Module      : Network.AWS.ElasticSearch.CreateOutboundCrossClusterSearchConnection
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new cross-cluster search connection from a source domain to a destination domain.
module Network.AWS.ElasticSearch.CreateOutboundCrossClusterSearchConnection
  ( -- * Creating a Request
    createOutboundCrossClusterSearchConnection,
    CreateOutboundCrossClusterSearchConnection,

    -- * Request Lenses
    coccscSourceDomainInfo,
    coccscDestinationDomainInfo,
    coccscConnectionAlias,

    -- * Destructuring the Response
    createOutboundCrossClusterSearchConnectionResponse,
    CreateOutboundCrossClusterSearchConnectionResponse,

    -- * Response Lenses
    coccscrrsCrossClusterSearchConnectionId,
    coccscrrsSourceDomainInfo,
    coccscrrsConnectionAlias,
    coccscrrsDestinationDomainInfo,
    coccscrrsConnectionStatus,
    coccscrrsResponseStatus,
  )
where

import Network.AWS.ElasticSearch.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Container for the parameters to the @'CreateOutboundCrossClusterSearchConnection' @ operation.
--
--
--
-- /See:/ 'createOutboundCrossClusterSearchConnection' smart constructor.
data CreateOutboundCrossClusterSearchConnection = CreateOutboundCrossClusterSearchConnection'
  { _coccscSourceDomainInfo ::
      !DomainInformation,
    _coccscDestinationDomainInfo ::
      !DomainInformation,
    _coccscConnectionAlias ::
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

-- | Creates a value of 'CreateOutboundCrossClusterSearchConnection' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'coccscSourceDomainInfo' - Specifies the @'DomainInformation' @ for the source Elasticsearch domain.
--
-- * 'coccscDestinationDomainInfo' - Specifies the @'DomainInformation' @ for the destination Elasticsearch domain.
--
-- * 'coccscConnectionAlias' - Specifies the connection alias that will be used by the customer for this connection.
createOutboundCrossClusterSearchConnection ::
  -- | 'coccscSourceDomainInfo'
  DomainInformation ->
  -- | 'coccscDestinationDomainInfo'
  DomainInformation ->
  -- | 'coccscConnectionAlias'
  Text ->
  CreateOutboundCrossClusterSearchConnection
createOutboundCrossClusterSearchConnection
  pSourceDomainInfo_
  pDestinationDomainInfo_
  pConnectionAlias_ =
    CreateOutboundCrossClusterSearchConnection'
      { _coccscSourceDomainInfo =
          pSourceDomainInfo_,
        _coccscDestinationDomainInfo =
          pDestinationDomainInfo_,
        _coccscConnectionAlias =
          pConnectionAlias_
      }

-- | Specifies the @'DomainInformation' @ for the source Elasticsearch domain.
coccscSourceDomainInfo :: Lens' CreateOutboundCrossClusterSearchConnection DomainInformation
coccscSourceDomainInfo = lens _coccscSourceDomainInfo (\s a -> s {_coccscSourceDomainInfo = a})

-- | Specifies the @'DomainInformation' @ for the destination Elasticsearch domain.
coccscDestinationDomainInfo :: Lens' CreateOutboundCrossClusterSearchConnection DomainInformation
coccscDestinationDomainInfo = lens _coccscDestinationDomainInfo (\s a -> s {_coccscDestinationDomainInfo = a})

-- | Specifies the connection alias that will be used by the customer for this connection.
coccscConnectionAlias :: Lens' CreateOutboundCrossClusterSearchConnection Text
coccscConnectionAlias = lens _coccscConnectionAlias (\s a -> s {_coccscConnectionAlias = a})

instance
  AWSRequest
    CreateOutboundCrossClusterSearchConnection
  where
  type
    Rs CreateOutboundCrossClusterSearchConnection =
      CreateOutboundCrossClusterSearchConnectionResponse
  request = postJSON elasticSearch
  response =
    receiveJSON
      ( \s h x ->
          CreateOutboundCrossClusterSearchConnectionResponse'
            <$> (x .?> "CrossClusterSearchConnectionId")
              <*> (x .?> "SourceDomainInfo")
              <*> (x .?> "ConnectionAlias")
              <*> (x .?> "DestinationDomainInfo")
              <*> (x .?> "ConnectionStatus")
              <*> (pure (fromEnum s))
      )

instance
  Hashable
    CreateOutboundCrossClusterSearchConnection

instance
  NFData
    CreateOutboundCrossClusterSearchConnection

instance
  ToHeaders
    CreateOutboundCrossClusterSearchConnection
  where
  toHeaders = const mempty

instance
  ToJSON
    CreateOutboundCrossClusterSearchConnection
  where
  toJSON
    CreateOutboundCrossClusterSearchConnection' {..} =
      object
        ( catMaybes
            [ Just
                ("SourceDomainInfo" .= _coccscSourceDomainInfo),
              Just
                ( "DestinationDomainInfo"
                    .= _coccscDestinationDomainInfo
                ),
              Just ("ConnectionAlias" .= _coccscConnectionAlias)
            ]
        )

instance
  ToPath
    CreateOutboundCrossClusterSearchConnection
  where
  toPath =
    const "/2015-01-01/es/ccs/outboundConnection"

instance
  ToQuery
    CreateOutboundCrossClusterSearchConnection
  where
  toQuery = const mempty

-- | The result of a @'CreateOutboundCrossClusterSearchConnection' @ request. Contains the details of the newly created cross-cluster search connection.
--
--
--
-- /See:/ 'createOutboundCrossClusterSearchConnectionResponse' smart constructor.
data CreateOutboundCrossClusterSearchConnectionResponse = CreateOutboundCrossClusterSearchConnectionResponse'
  { _coccscrrsCrossClusterSearchConnectionId ::
      !( Maybe
           Text
       ),
    _coccscrrsSourceDomainInfo ::
      !( Maybe
           DomainInformation
       ),
    _coccscrrsConnectionAlias ::
      !( Maybe
           Text
       ),
    _coccscrrsDestinationDomainInfo ::
      !( Maybe
           DomainInformation
       ),
    _coccscrrsConnectionStatus ::
      !( Maybe
           OutboundCrossClusterSearchConnectionStatus
       ),
    _coccscrrsResponseStatus ::
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

-- | Creates a value of 'CreateOutboundCrossClusterSearchConnectionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'coccscrrsCrossClusterSearchConnectionId' - Unique id for the created outbound connection, which is used for subsequent operations on connection.
--
-- * 'coccscrrsSourceDomainInfo' - Specifies the @'DomainInformation' @ for the source Elasticsearch domain.
--
-- * 'coccscrrsConnectionAlias' - Specifies the connection alias provided during the create connection request.
--
-- * 'coccscrrsDestinationDomainInfo' - Specifies the @'DomainInformation' @ for the destination Elasticsearch domain.
--
-- * 'coccscrrsConnectionStatus' - Specifies the @'OutboundCrossClusterSearchConnectionStatus' @ for the newly created connection.
--
-- * 'coccscrrsResponseStatus' - -- | The response status code.
createOutboundCrossClusterSearchConnectionResponse ::
  -- | 'coccscrrsResponseStatus'
  Int ->
  CreateOutboundCrossClusterSearchConnectionResponse
createOutboundCrossClusterSearchConnectionResponse
  pResponseStatus_ =
    CreateOutboundCrossClusterSearchConnectionResponse'
      { _coccscrrsCrossClusterSearchConnectionId =
          Nothing,
        _coccscrrsSourceDomainInfo =
          Nothing,
        _coccscrrsConnectionAlias =
          Nothing,
        _coccscrrsDestinationDomainInfo =
          Nothing,
        _coccscrrsConnectionStatus =
          Nothing,
        _coccscrrsResponseStatus =
          pResponseStatus_
      }

-- | Unique id for the created outbound connection, which is used for subsequent operations on connection.
coccscrrsCrossClusterSearchConnectionId :: Lens' CreateOutboundCrossClusterSearchConnectionResponse (Maybe Text)
coccscrrsCrossClusterSearchConnectionId = lens _coccscrrsCrossClusterSearchConnectionId (\s a -> s {_coccscrrsCrossClusterSearchConnectionId = a})

-- | Specifies the @'DomainInformation' @ for the source Elasticsearch domain.
coccscrrsSourceDomainInfo :: Lens' CreateOutboundCrossClusterSearchConnectionResponse (Maybe DomainInformation)
coccscrrsSourceDomainInfo = lens _coccscrrsSourceDomainInfo (\s a -> s {_coccscrrsSourceDomainInfo = a})

-- | Specifies the connection alias provided during the create connection request.
coccscrrsConnectionAlias :: Lens' CreateOutboundCrossClusterSearchConnectionResponse (Maybe Text)
coccscrrsConnectionAlias = lens _coccscrrsConnectionAlias (\s a -> s {_coccscrrsConnectionAlias = a})

-- | Specifies the @'DomainInformation' @ for the destination Elasticsearch domain.
coccscrrsDestinationDomainInfo :: Lens' CreateOutboundCrossClusterSearchConnectionResponse (Maybe DomainInformation)
coccscrrsDestinationDomainInfo = lens _coccscrrsDestinationDomainInfo (\s a -> s {_coccscrrsDestinationDomainInfo = a})

-- | Specifies the @'OutboundCrossClusterSearchConnectionStatus' @ for the newly created connection.
coccscrrsConnectionStatus :: Lens' CreateOutboundCrossClusterSearchConnectionResponse (Maybe OutboundCrossClusterSearchConnectionStatus)
coccscrrsConnectionStatus = lens _coccscrrsConnectionStatus (\s a -> s {_coccscrrsConnectionStatus = a})

-- | -- | The response status code.
coccscrrsResponseStatus :: Lens' CreateOutboundCrossClusterSearchConnectionResponse Int
coccscrrsResponseStatus = lens _coccscrrsResponseStatus (\s a -> s {_coccscrrsResponseStatus = a})

instance
  NFData
    CreateOutboundCrossClusterSearchConnectionResponse
