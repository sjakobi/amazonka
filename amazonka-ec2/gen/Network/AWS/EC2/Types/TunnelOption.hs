{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.TunnelOption
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.TunnelOption where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.IKEVersionsListValue
import Network.AWS.EC2.Types.Phase1DHGroupNumbersListValue
import Network.AWS.EC2.Types.Phase1EncryptionAlgorithmsListValue
import Network.AWS.EC2.Types.Phase1IntegrityAlgorithmsListValue
import Network.AWS.EC2.Types.Phase2DHGroupNumbersListValue
import Network.AWS.EC2.Types.Phase2EncryptionAlgorithmsListValue
import Network.AWS.EC2.Types.Phase2IntegrityAlgorithmsListValue
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The VPN tunnel options.
--
--
--
-- /See:/ 'tunnelOption' smart constructor.
data TunnelOption = TunnelOption'
  { _toPhase1LifetimeSeconds ::
      !(Maybe Int),
    _toPhase2DHGroupNumbers ::
      !(Maybe [Phase2DHGroupNumbersListValue]),
    _toIkeVersions ::
      !(Maybe [IKEVersionsListValue]),
    _toPhase2EncryptionAlgorithms ::
      !( Maybe
           [Phase2EncryptionAlgorithmsListValue]
       ),
    _toPhase2IntegrityAlgorithms ::
      !(Maybe [Phase2IntegrityAlgorithmsListValue]),
    _toStartupAction :: !(Maybe Text),
    _toDpdTimeoutSeconds :: !(Maybe Int),
    _toPhase1DHGroupNumbers ::
      !(Maybe [Phase1DHGroupNumbersListValue]),
    _toPhase1EncryptionAlgorithms ::
      !( Maybe
           [Phase1EncryptionAlgorithmsListValue]
       ),
    _toReplayWindowSize :: !(Maybe Int),
    _toOutsideIPAddress :: !(Maybe Text),
    _toPreSharedKey :: !(Maybe Text),
    _toTunnelInsideIPv6Cidr :: !(Maybe Text),
    _toRekeyFuzzPercentage :: !(Maybe Int),
    _toRekeyMarginTimeSeconds :: !(Maybe Int),
    _toTunnelInsideCidr :: !(Maybe Text),
    _toPhase1IntegrityAlgorithms ::
      !(Maybe [Phase1IntegrityAlgorithmsListValue]),
    _toDpdTimeoutAction :: !(Maybe Text),
    _toPhase2LifetimeSeconds :: !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TunnelOption' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'toPhase1LifetimeSeconds' - The lifetime for phase 1 of the IKE negotiation, in seconds.
--
-- * 'toPhase2DHGroupNumbers' - The permitted Diffie-Hellman group numbers for the VPN tunnel for phase 2 IKE negotiations.
--
-- * 'toIkeVersions' - The IKE versions that are permitted for the VPN tunnel.
--
-- * 'toPhase2EncryptionAlgorithms' - The permitted encryption algorithms for the VPN tunnel for phase 2 IKE negotiations.
--
-- * 'toPhase2IntegrityAlgorithms' - The permitted integrity algorithms for the VPN tunnel for phase 2 IKE negotiations.
--
-- * 'toStartupAction' - The action to take when the establishing the VPN tunnels for a VPN connection.
--
-- * 'toDpdTimeoutSeconds' - The number of seconds after which a DPD timeout occurs.
--
-- * 'toPhase1DHGroupNumbers' - The permitted Diffie-Hellman group numbers for the VPN tunnel for phase 1 IKE negotiations.
--
-- * 'toPhase1EncryptionAlgorithms' - The permitted encryption algorithms for the VPN tunnel for phase 1 IKE negotiations.
--
-- * 'toReplayWindowSize' - The number of packets in an IKE replay window.
--
-- * 'toOutsideIPAddress' - The external IP address of the VPN tunnel.
--
-- * 'toPreSharedKey' - The pre-shared key (PSK) to establish initial authentication between the virtual private gateway and the customer gateway.
--
-- * 'toTunnelInsideIPv6Cidr' - The range of inside IPv6 addresses for the tunnel.
--
-- * 'toRekeyFuzzPercentage' - The percentage of the rekey window determined by @RekeyMarginTimeSeconds@ during which the rekey time is randomly selected.
--
-- * 'toRekeyMarginTimeSeconds' - The margin time, in seconds, before the phase 2 lifetime expires, during which the AWS side of the VPN connection performs an IKE rekey.
--
-- * 'toTunnelInsideCidr' - The range of inside IPv4 addresses for the tunnel.
--
-- * 'toPhase1IntegrityAlgorithms' - The permitted integrity algorithms for the VPN tunnel for phase 1 IKE negotiations.
--
-- * 'toDpdTimeoutAction' - The action to take after a DPD timeout occurs.
--
-- * 'toPhase2LifetimeSeconds' - The lifetime for phase 2 of the IKE negotiation, in seconds.
tunnelOption ::
  TunnelOption
tunnelOption =
  TunnelOption'
    { _toPhase1LifetimeSeconds = Nothing,
      _toPhase2DHGroupNumbers = Nothing,
      _toIkeVersions = Nothing,
      _toPhase2EncryptionAlgorithms = Nothing,
      _toPhase2IntegrityAlgorithms = Nothing,
      _toStartupAction = Nothing,
      _toDpdTimeoutSeconds = Nothing,
      _toPhase1DHGroupNumbers = Nothing,
      _toPhase1EncryptionAlgorithms = Nothing,
      _toReplayWindowSize = Nothing,
      _toOutsideIPAddress = Nothing,
      _toPreSharedKey = Nothing,
      _toTunnelInsideIPv6Cidr = Nothing,
      _toRekeyFuzzPercentage = Nothing,
      _toRekeyMarginTimeSeconds = Nothing,
      _toTunnelInsideCidr = Nothing,
      _toPhase1IntegrityAlgorithms = Nothing,
      _toDpdTimeoutAction = Nothing,
      _toPhase2LifetimeSeconds = Nothing
    }

-- | The lifetime for phase 1 of the IKE negotiation, in seconds.
toPhase1LifetimeSeconds :: Lens' TunnelOption (Maybe Int)
toPhase1LifetimeSeconds = lens _toPhase1LifetimeSeconds (\s a -> s {_toPhase1LifetimeSeconds = a})

-- | The permitted Diffie-Hellman group numbers for the VPN tunnel for phase 2 IKE negotiations.
toPhase2DHGroupNumbers :: Lens' TunnelOption [Phase2DHGroupNumbersListValue]
toPhase2DHGroupNumbers = lens _toPhase2DHGroupNumbers (\s a -> s {_toPhase2DHGroupNumbers = a}) . _Default . _Coerce

-- | The IKE versions that are permitted for the VPN tunnel.
toIkeVersions :: Lens' TunnelOption [IKEVersionsListValue]
toIkeVersions = lens _toIkeVersions (\s a -> s {_toIkeVersions = a}) . _Default . _Coerce

-- | The permitted encryption algorithms for the VPN tunnel for phase 2 IKE negotiations.
toPhase2EncryptionAlgorithms :: Lens' TunnelOption [Phase2EncryptionAlgorithmsListValue]
toPhase2EncryptionAlgorithms = lens _toPhase2EncryptionAlgorithms (\s a -> s {_toPhase2EncryptionAlgorithms = a}) . _Default . _Coerce

-- | The permitted integrity algorithms for the VPN tunnel for phase 2 IKE negotiations.
toPhase2IntegrityAlgorithms :: Lens' TunnelOption [Phase2IntegrityAlgorithmsListValue]
toPhase2IntegrityAlgorithms = lens _toPhase2IntegrityAlgorithms (\s a -> s {_toPhase2IntegrityAlgorithms = a}) . _Default . _Coerce

-- | The action to take when the establishing the VPN tunnels for a VPN connection.
toStartupAction :: Lens' TunnelOption (Maybe Text)
toStartupAction = lens _toStartupAction (\s a -> s {_toStartupAction = a})

-- | The number of seconds after which a DPD timeout occurs.
toDpdTimeoutSeconds :: Lens' TunnelOption (Maybe Int)
toDpdTimeoutSeconds = lens _toDpdTimeoutSeconds (\s a -> s {_toDpdTimeoutSeconds = a})

-- | The permitted Diffie-Hellman group numbers for the VPN tunnel for phase 1 IKE negotiations.
toPhase1DHGroupNumbers :: Lens' TunnelOption [Phase1DHGroupNumbersListValue]
toPhase1DHGroupNumbers = lens _toPhase1DHGroupNumbers (\s a -> s {_toPhase1DHGroupNumbers = a}) . _Default . _Coerce

-- | The permitted encryption algorithms for the VPN tunnel for phase 1 IKE negotiations.
toPhase1EncryptionAlgorithms :: Lens' TunnelOption [Phase1EncryptionAlgorithmsListValue]
toPhase1EncryptionAlgorithms = lens _toPhase1EncryptionAlgorithms (\s a -> s {_toPhase1EncryptionAlgorithms = a}) . _Default . _Coerce

-- | The number of packets in an IKE replay window.
toReplayWindowSize :: Lens' TunnelOption (Maybe Int)
toReplayWindowSize = lens _toReplayWindowSize (\s a -> s {_toReplayWindowSize = a})

-- | The external IP address of the VPN tunnel.
toOutsideIPAddress :: Lens' TunnelOption (Maybe Text)
toOutsideIPAddress = lens _toOutsideIPAddress (\s a -> s {_toOutsideIPAddress = a})

-- | The pre-shared key (PSK) to establish initial authentication between the virtual private gateway and the customer gateway.
toPreSharedKey :: Lens' TunnelOption (Maybe Text)
toPreSharedKey = lens _toPreSharedKey (\s a -> s {_toPreSharedKey = a})

-- | The range of inside IPv6 addresses for the tunnel.
toTunnelInsideIPv6Cidr :: Lens' TunnelOption (Maybe Text)
toTunnelInsideIPv6Cidr = lens _toTunnelInsideIPv6Cidr (\s a -> s {_toTunnelInsideIPv6Cidr = a})

-- | The percentage of the rekey window determined by @RekeyMarginTimeSeconds@ during which the rekey time is randomly selected.
toRekeyFuzzPercentage :: Lens' TunnelOption (Maybe Int)
toRekeyFuzzPercentage = lens _toRekeyFuzzPercentage (\s a -> s {_toRekeyFuzzPercentage = a})

-- | The margin time, in seconds, before the phase 2 lifetime expires, during which the AWS side of the VPN connection performs an IKE rekey.
toRekeyMarginTimeSeconds :: Lens' TunnelOption (Maybe Int)
toRekeyMarginTimeSeconds = lens _toRekeyMarginTimeSeconds (\s a -> s {_toRekeyMarginTimeSeconds = a})

-- | The range of inside IPv4 addresses for the tunnel.
toTunnelInsideCidr :: Lens' TunnelOption (Maybe Text)
toTunnelInsideCidr = lens _toTunnelInsideCidr (\s a -> s {_toTunnelInsideCidr = a})

-- | The permitted integrity algorithms for the VPN tunnel for phase 1 IKE negotiations.
toPhase1IntegrityAlgorithms :: Lens' TunnelOption [Phase1IntegrityAlgorithmsListValue]
toPhase1IntegrityAlgorithms = lens _toPhase1IntegrityAlgorithms (\s a -> s {_toPhase1IntegrityAlgorithms = a}) . _Default . _Coerce

-- | The action to take after a DPD timeout occurs.
toDpdTimeoutAction :: Lens' TunnelOption (Maybe Text)
toDpdTimeoutAction = lens _toDpdTimeoutAction (\s a -> s {_toDpdTimeoutAction = a})

-- | The lifetime for phase 2 of the IKE negotiation, in seconds.
toPhase2LifetimeSeconds :: Lens' TunnelOption (Maybe Int)
toPhase2LifetimeSeconds = lens _toPhase2LifetimeSeconds (\s a -> s {_toPhase2LifetimeSeconds = a})

instance FromXML TunnelOption where
  parseXML x =
    TunnelOption'
      <$> (x .@? "phase1LifetimeSeconds")
      <*> ( x .@? "phase2DHGroupNumberSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> ( x .@? "ikeVersionSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> ( x .@? "phase2EncryptionAlgorithmSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> ( x .@? "phase2IntegrityAlgorithmSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "startupAction")
      <*> (x .@? "dpdTimeoutSeconds")
      <*> ( x .@? "phase1DHGroupNumberSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> ( x .@? "phase1EncryptionAlgorithmSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "replayWindowSize")
      <*> (x .@? "outsideIpAddress")
      <*> (x .@? "preSharedKey")
      <*> (x .@? "tunnelInsideIpv6Cidr")
      <*> (x .@? "rekeyFuzzPercentage")
      <*> (x .@? "rekeyMarginTimeSeconds")
      <*> (x .@? "tunnelInsideCidr")
      <*> ( x .@? "phase1IntegrityAlgorithmSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "dpdTimeoutAction")
      <*> (x .@? "phase2LifetimeSeconds")

instance Hashable TunnelOption

instance NFData TunnelOption
