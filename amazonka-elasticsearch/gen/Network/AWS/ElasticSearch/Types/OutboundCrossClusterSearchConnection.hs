{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticSearch.Types.OutboundCrossClusterSearchConnection
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.OutboundCrossClusterSearchConnection where

import Network.AWS.ElasticSearch.Types.DomainInformation
import Network.AWS.ElasticSearch.Types.OutboundCrossClusterSearchConnectionStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Specifies details of an outbound connection.
--
--
--
-- /See:/ 'outboundCrossClusterSearchConnection' smart constructor.
data OutboundCrossClusterSearchConnection = OutboundCrossClusterSearchConnection'
  { _occscCrossClusterSearchConnectionId ::
      !( Maybe
           Text
       ),
    _occscSourceDomainInfo ::
      !( Maybe
           DomainInformation
       ),
    _occscConnectionAlias ::
      !( Maybe
           Text
       ),
    _occscDestinationDomainInfo ::
      !( Maybe
           DomainInformation
       ),
    _occscConnectionStatus ::
      !( Maybe
           OutboundCrossClusterSearchConnectionStatus
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'OutboundCrossClusterSearchConnection' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'occscCrossClusterSearchConnectionId' - Specifies the connection id for the outbound cross-cluster search connection.
--
-- * 'occscSourceDomainInfo' - Specifies the @'DomainInformation' @ for the source Elasticsearch domain.
--
-- * 'occscConnectionAlias' - Specifies the connection alias for the outbound cross-cluster search connection.
--
-- * 'occscDestinationDomainInfo' - Specifies the @'DomainInformation' @ for the destination Elasticsearch domain.
--
-- * 'occscConnectionStatus' - Specifies the @'OutboundCrossClusterSearchConnectionStatus' @ for the outbound connection.
outboundCrossClusterSearchConnection ::
  OutboundCrossClusterSearchConnection
outboundCrossClusterSearchConnection =
  OutboundCrossClusterSearchConnection'
    { _occscCrossClusterSearchConnectionId =
        Nothing,
      _occscSourceDomainInfo = Nothing,
      _occscConnectionAlias = Nothing,
      _occscDestinationDomainInfo = Nothing,
      _occscConnectionStatus = Nothing
    }

-- | Specifies the connection id for the outbound cross-cluster search connection.
occscCrossClusterSearchConnectionId :: Lens' OutboundCrossClusterSearchConnection (Maybe Text)
occscCrossClusterSearchConnectionId = lens _occscCrossClusterSearchConnectionId (\s a -> s {_occscCrossClusterSearchConnectionId = a})

-- | Specifies the @'DomainInformation' @ for the source Elasticsearch domain.
occscSourceDomainInfo :: Lens' OutboundCrossClusterSearchConnection (Maybe DomainInformation)
occscSourceDomainInfo = lens _occscSourceDomainInfo (\s a -> s {_occscSourceDomainInfo = a})

-- | Specifies the connection alias for the outbound cross-cluster search connection.
occscConnectionAlias :: Lens' OutboundCrossClusterSearchConnection (Maybe Text)
occscConnectionAlias = lens _occscConnectionAlias (\s a -> s {_occscConnectionAlias = a})

-- | Specifies the @'DomainInformation' @ for the destination Elasticsearch domain.
occscDestinationDomainInfo :: Lens' OutboundCrossClusterSearchConnection (Maybe DomainInformation)
occscDestinationDomainInfo = lens _occscDestinationDomainInfo (\s a -> s {_occscDestinationDomainInfo = a})

-- | Specifies the @'OutboundCrossClusterSearchConnectionStatus' @ for the outbound connection.
occscConnectionStatus :: Lens' OutboundCrossClusterSearchConnection (Maybe OutboundCrossClusterSearchConnectionStatus)
occscConnectionStatus = lens _occscConnectionStatus (\s a -> s {_occscConnectionStatus = a})

instance
  FromJSON
    OutboundCrossClusterSearchConnection
  where
  parseJSON =
    withObject
      "OutboundCrossClusterSearchConnection"
      ( \x ->
          OutboundCrossClusterSearchConnection'
            <$> (x .:? "CrossClusterSearchConnectionId")
            <*> (x .:? "SourceDomainInfo")
            <*> (x .:? "ConnectionAlias")
            <*> (x .:? "DestinationDomainInfo")
            <*> (x .:? "ConnectionStatus")
      )

instance
  Hashable
    OutboundCrossClusterSearchConnection

instance NFData OutboundCrossClusterSearchConnection
