{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ClientVPNConnection
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ClientVPNConnection where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.ClientVPNConnectionStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a client connection.
--
--
--
-- /See:/ 'clientVPNConnection' smart constructor.
data ClientVPNConnection = ClientVPNConnection'
  { _cvcClientVPNEndpointId ::
      !(Maybe Text),
    _cvcStatus ::
      !( Maybe
           ClientVPNConnectionStatus
       ),
    _cvcIngressPackets ::
      !(Maybe Text),
    _cvcEgressBytes ::
      !(Maybe Text),
    _cvcConnectionId ::
      !(Maybe Text),
    _cvcConnectionEstablishedTime ::
      !(Maybe Text),
    _cvcPostureComplianceStatuses ::
      !(Maybe [Text]),
    _cvcCommonName :: !(Maybe Text),
    _cvcConnectionEndTime ::
      !(Maybe Text),
    _cvcIngressBytes ::
      !(Maybe Text),
    _cvcEgressPackets ::
      !(Maybe Text),
    _cvcTimestamp :: !(Maybe Text),
    _cvcUsername :: !(Maybe Text),
    _cvcClientIP :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ClientVPNConnection' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cvcClientVPNEndpointId' - The ID of the Client VPN endpoint to which the client is connected.
--
-- * 'cvcStatus' - The current state of the client connection.
--
-- * 'cvcIngressPackets' - The number of packets sent by the client.
--
-- * 'cvcEgressBytes' - The number of bytes received by the client.
--
-- * 'cvcConnectionId' - The ID of the client connection.
--
-- * 'cvcConnectionEstablishedTime' - The date and time the client connection was established.
--
-- * 'cvcPostureComplianceStatuses' - The statuses returned by the client connect handler for posture compliance, if applicable.
--
-- * 'cvcCommonName' - The common name associated with the client. This is either the name of the client certificate, or the Active Directory user name.
--
-- * 'cvcConnectionEndTime' - The date and time the client connection was terminated.
--
-- * 'cvcIngressBytes' - The number of bytes sent by the client.
--
-- * 'cvcEgressPackets' - The number of packets received by the client.
--
-- * 'cvcTimestamp' - The current date and time.
--
-- * 'cvcUsername' - The username of the client who established the client connection. This information is only provided if Active Directory client authentication is used.
--
-- * 'cvcClientIP' - The IP address of the client.
clientVPNConnection ::
  ClientVPNConnection
clientVPNConnection =
  ClientVPNConnection'
    { _cvcClientVPNEndpointId =
        Nothing,
      _cvcStatus = Nothing,
      _cvcIngressPackets = Nothing,
      _cvcEgressBytes = Nothing,
      _cvcConnectionId = Nothing,
      _cvcConnectionEstablishedTime = Nothing,
      _cvcPostureComplianceStatuses = Nothing,
      _cvcCommonName = Nothing,
      _cvcConnectionEndTime = Nothing,
      _cvcIngressBytes = Nothing,
      _cvcEgressPackets = Nothing,
      _cvcTimestamp = Nothing,
      _cvcUsername = Nothing,
      _cvcClientIP = Nothing
    }

-- | The ID of the Client VPN endpoint to which the client is connected.
cvcClientVPNEndpointId :: Lens' ClientVPNConnection (Maybe Text)
cvcClientVPNEndpointId = lens _cvcClientVPNEndpointId (\s a -> s {_cvcClientVPNEndpointId = a})

-- | The current state of the client connection.
cvcStatus :: Lens' ClientVPNConnection (Maybe ClientVPNConnectionStatus)
cvcStatus = lens _cvcStatus (\s a -> s {_cvcStatus = a})

-- | The number of packets sent by the client.
cvcIngressPackets :: Lens' ClientVPNConnection (Maybe Text)
cvcIngressPackets = lens _cvcIngressPackets (\s a -> s {_cvcIngressPackets = a})

-- | The number of bytes received by the client.
cvcEgressBytes :: Lens' ClientVPNConnection (Maybe Text)
cvcEgressBytes = lens _cvcEgressBytes (\s a -> s {_cvcEgressBytes = a})

-- | The ID of the client connection.
cvcConnectionId :: Lens' ClientVPNConnection (Maybe Text)
cvcConnectionId = lens _cvcConnectionId (\s a -> s {_cvcConnectionId = a})

-- | The date and time the client connection was established.
cvcConnectionEstablishedTime :: Lens' ClientVPNConnection (Maybe Text)
cvcConnectionEstablishedTime = lens _cvcConnectionEstablishedTime (\s a -> s {_cvcConnectionEstablishedTime = a})

-- | The statuses returned by the client connect handler for posture compliance, if applicable.
cvcPostureComplianceStatuses :: Lens' ClientVPNConnection [Text]
cvcPostureComplianceStatuses = lens _cvcPostureComplianceStatuses (\s a -> s {_cvcPostureComplianceStatuses = a}) . _Default . _Coerce

-- | The common name associated with the client. This is either the name of the client certificate, or the Active Directory user name.
cvcCommonName :: Lens' ClientVPNConnection (Maybe Text)
cvcCommonName = lens _cvcCommonName (\s a -> s {_cvcCommonName = a})

-- | The date and time the client connection was terminated.
cvcConnectionEndTime :: Lens' ClientVPNConnection (Maybe Text)
cvcConnectionEndTime = lens _cvcConnectionEndTime (\s a -> s {_cvcConnectionEndTime = a})

-- | The number of bytes sent by the client.
cvcIngressBytes :: Lens' ClientVPNConnection (Maybe Text)
cvcIngressBytes = lens _cvcIngressBytes (\s a -> s {_cvcIngressBytes = a})

-- | The number of packets received by the client.
cvcEgressPackets :: Lens' ClientVPNConnection (Maybe Text)
cvcEgressPackets = lens _cvcEgressPackets (\s a -> s {_cvcEgressPackets = a})

-- | The current date and time.
cvcTimestamp :: Lens' ClientVPNConnection (Maybe Text)
cvcTimestamp = lens _cvcTimestamp (\s a -> s {_cvcTimestamp = a})

-- | The username of the client who established the client connection. This information is only provided if Active Directory client authentication is used.
cvcUsername :: Lens' ClientVPNConnection (Maybe Text)
cvcUsername = lens _cvcUsername (\s a -> s {_cvcUsername = a})

-- | The IP address of the client.
cvcClientIP :: Lens' ClientVPNConnection (Maybe Text)
cvcClientIP = lens _cvcClientIP (\s a -> s {_cvcClientIP = a})

instance FromXML ClientVPNConnection where
  parseXML x =
    ClientVPNConnection'
      <$> (x .@? "clientVpnEndpointId")
      <*> (x .@? "status")
      <*> (x .@? "ingressPackets")
      <*> (x .@? "egressBytes")
      <*> (x .@? "connectionId")
      <*> (x .@? "connectionEstablishedTime")
      <*> ( x .@? "postureComplianceStatusSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "commonName")
      <*> (x .@? "connectionEndTime")
      <*> (x .@? "ingressBytes")
      <*> (x .@? "egressPackets")
      <*> (x .@? "timestamp")
      <*> (x .@? "username")
      <*> (x .@? "clientIp")

instance Hashable ClientVPNConnection

instance NFData ClientVPNConnection
