{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticSearch.Types.InboundCrossClusterSearchConnection
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.InboundCrossClusterSearchConnection where

import Network.AWS.ElasticSearch.Types.DomainInformation
import Network.AWS.ElasticSearch.Types.InboundCrossClusterSearchConnectionStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Specifies details of an inbound connection.
--
--
--
-- /See:/ 'inboundCrossClusterSearchConnection' smart constructor.
data InboundCrossClusterSearchConnection = InboundCrossClusterSearchConnection'
  { _iccscCrossClusterSearchConnectionId ::
      !( Maybe
           Text
       ),
    _iccscSourceDomainInfo ::
      !( Maybe
           DomainInformation
       ),
    _iccscDestinationDomainInfo ::
      !( Maybe
           DomainInformation
       ),
    _iccscConnectionStatus ::
      !( Maybe
           InboundCrossClusterSearchConnectionStatus
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

-- | Creates a value of 'InboundCrossClusterSearchConnection' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iccscCrossClusterSearchConnectionId' - Specifies the connection id for the inbound cross-cluster search connection.
--
-- * 'iccscSourceDomainInfo' - Specifies the @'DomainInformation' @ for the source Elasticsearch domain.
--
-- * 'iccscDestinationDomainInfo' - Specifies the @'DomainInformation' @ for the destination Elasticsearch domain.
--
-- * 'iccscConnectionStatus' - Specifies the @'InboundCrossClusterSearchConnectionStatus' @ for the outbound connection.
inboundCrossClusterSearchConnection ::
  InboundCrossClusterSearchConnection
inboundCrossClusterSearchConnection =
  InboundCrossClusterSearchConnection'
    { _iccscCrossClusterSearchConnectionId =
        Nothing,
      _iccscSourceDomainInfo = Nothing,
      _iccscDestinationDomainInfo = Nothing,
      _iccscConnectionStatus = Nothing
    }

-- | Specifies the connection id for the inbound cross-cluster search connection.
iccscCrossClusterSearchConnectionId :: Lens' InboundCrossClusterSearchConnection (Maybe Text)
iccscCrossClusterSearchConnectionId = lens _iccscCrossClusterSearchConnectionId (\s a -> s {_iccscCrossClusterSearchConnectionId = a})

-- | Specifies the @'DomainInformation' @ for the source Elasticsearch domain.
iccscSourceDomainInfo :: Lens' InboundCrossClusterSearchConnection (Maybe DomainInformation)
iccscSourceDomainInfo = lens _iccscSourceDomainInfo (\s a -> s {_iccscSourceDomainInfo = a})

-- | Specifies the @'DomainInformation' @ for the destination Elasticsearch domain.
iccscDestinationDomainInfo :: Lens' InboundCrossClusterSearchConnection (Maybe DomainInformation)
iccscDestinationDomainInfo = lens _iccscDestinationDomainInfo (\s a -> s {_iccscDestinationDomainInfo = a})

-- | Specifies the @'InboundCrossClusterSearchConnectionStatus' @ for the outbound connection.
iccscConnectionStatus :: Lens' InboundCrossClusterSearchConnection (Maybe InboundCrossClusterSearchConnectionStatus)
iccscConnectionStatus = lens _iccscConnectionStatus (\s a -> s {_iccscConnectionStatus = a})

instance FromJSON InboundCrossClusterSearchConnection where
  parseJSON =
    withObject
      "InboundCrossClusterSearchConnection"
      ( \x ->
          InboundCrossClusterSearchConnection'
            <$> (x .:? "CrossClusterSearchConnectionId")
            <*> (x .:? "SourceDomainInfo")
            <*> (x .:? "DestinationDomainInfo")
            <*> (x .:? "ConnectionStatus")
      )

instance Hashable InboundCrossClusterSearchConnection

instance NFData InboundCrossClusterSearchConnection
