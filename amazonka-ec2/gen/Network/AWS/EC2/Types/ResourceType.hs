{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ResourceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ResourceType
  ( ResourceType
      ( ..,
        RTClientVPNEndpoint,
        RTCustomerGateway,
        RTDHCPOptions,
        RTDedicatedHost,
        RTEgressOnlyInternetGateway,
        RTElasticGpu,
        RTElasticIP,
        RTExportImageTask,
        RTExportInstanceTask,
        RTFleet,
        RTFpgaImage,
        RTHostReservation,
        RTImage,
        RTImportImageTask,
        RTImportSnapshotTask,
        RTInstance,
        RTInternetGateway,
        RTKeyPair,
        RTLaunchTemplate,
        RTLocalGatewayRouteTableVPCAssociation,
        RTNatgateway,
        RTNetworkACL,
        RTNetworkInsightsAnalysis,
        RTNetworkInsightsPath,
        RTNetworkInterface,
        RTPlacementGroup,
        RTReservedInstances,
        RTRouteTable,
        RTSecurityGroup,
        RTSnapshot,
        RTSpotFleetRequest,
        RTSpotInstancesRequest,
        RTSubnet,
        RTTrafficMirrorFilter,
        RTTrafficMirrorSession,
        RTTrafficMirrorTarget,
        RTTransitGateway,
        RTTransitGatewayAttachment,
        RTTransitGatewayConnectPeer,
        RTTransitGatewayMulticastDomain,
        RTTransitGatewayRouteTable,
        RTVPC,
        RTVPCFlowLog,
        RTVPCPeeringConnection,
        RTVPNConnection,
        RTVPNGateway,
        RTVolume
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data ResourceType = ResourceType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern RTClientVPNEndpoint :: ResourceType
pattern RTClientVPNEndpoint = ResourceType' "client-vpn-endpoint"

pattern RTCustomerGateway :: ResourceType
pattern RTCustomerGateway = ResourceType' "customer-gateway"

pattern RTDHCPOptions :: ResourceType
pattern RTDHCPOptions = ResourceType' "dhcp-options"

pattern RTDedicatedHost :: ResourceType
pattern RTDedicatedHost = ResourceType' "dedicated-host"

pattern RTEgressOnlyInternetGateway :: ResourceType
pattern RTEgressOnlyInternetGateway = ResourceType' "egress-only-internet-gateway"

pattern RTElasticGpu :: ResourceType
pattern RTElasticGpu = ResourceType' "elastic-gpu"

pattern RTElasticIP :: ResourceType
pattern RTElasticIP = ResourceType' "elastic-ip"

pattern RTExportImageTask :: ResourceType
pattern RTExportImageTask = ResourceType' "export-image-task"

pattern RTExportInstanceTask :: ResourceType
pattern RTExportInstanceTask = ResourceType' "export-instance-task"

pattern RTFleet :: ResourceType
pattern RTFleet = ResourceType' "fleet"

pattern RTFpgaImage :: ResourceType
pattern RTFpgaImage = ResourceType' "fpga-image"

pattern RTHostReservation :: ResourceType
pattern RTHostReservation = ResourceType' "host-reservation"

pattern RTImage :: ResourceType
pattern RTImage = ResourceType' "image"

pattern RTImportImageTask :: ResourceType
pattern RTImportImageTask = ResourceType' "import-image-task"

pattern RTImportSnapshotTask :: ResourceType
pattern RTImportSnapshotTask = ResourceType' "import-snapshot-task"

pattern RTInstance :: ResourceType
pattern RTInstance = ResourceType' "instance"

pattern RTInternetGateway :: ResourceType
pattern RTInternetGateway = ResourceType' "internet-gateway"

pattern RTKeyPair :: ResourceType
pattern RTKeyPair = ResourceType' "key-pair"

pattern RTLaunchTemplate :: ResourceType
pattern RTLaunchTemplate = ResourceType' "launch-template"

pattern RTLocalGatewayRouteTableVPCAssociation :: ResourceType
pattern RTLocalGatewayRouteTableVPCAssociation = ResourceType' "local-gateway-route-table-vpc-association"

pattern RTNatgateway :: ResourceType
pattern RTNatgateway = ResourceType' "natgateway"

pattern RTNetworkACL :: ResourceType
pattern RTNetworkACL = ResourceType' "network-acl"

pattern RTNetworkInsightsAnalysis :: ResourceType
pattern RTNetworkInsightsAnalysis = ResourceType' "network-insights-analysis"

pattern RTNetworkInsightsPath :: ResourceType
pattern RTNetworkInsightsPath = ResourceType' "network-insights-path"

pattern RTNetworkInterface :: ResourceType
pattern RTNetworkInterface = ResourceType' "network-interface"

pattern RTPlacementGroup :: ResourceType
pattern RTPlacementGroup = ResourceType' "placement-group"

pattern RTReservedInstances :: ResourceType
pattern RTReservedInstances = ResourceType' "reserved-instances"

pattern RTRouteTable :: ResourceType
pattern RTRouteTable = ResourceType' "route-table"

pattern RTSecurityGroup :: ResourceType
pattern RTSecurityGroup = ResourceType' "security-group"

pattern RTSnapshot :: ResourceType
pattern RTSnapshot = ResourceType' "snapshot"

pattern RTSpotFleetRequest :: ResourceType
pattern RTSpotFleetRequest = ResourceType' "spot-fleet-request"

pattern RTSpotInstancesRequest :: ResourceType
pattern RTSpotInstancesRequest = ResourceType' "spot-instances-request"

pattern RTSubnet :: ResourceType
pattern RTSubnet = ResourceType' "subnet"

pattern RTTrafficMirrorFilter :: ResourceType
pattern RTTrafficMirrorFilter = ResourceType' "traffic-mirror-filter"

pattern RTTrafficMirrorSession :: ResourceType
pattern RTTrafficMirrorSession = ResourceType' "traffic-mirror-session"

pattern RTTrafficMirrorTarget :: ResourceType
pattern RTTrafficMirrorTarget = ResourceType' "traffic-mirror-target"

pattern RTTransitGateway :: ResourceType
pattern RTTransitGateway = ResourceType' "transit-gateway"

pattern RTTransitGatewayAttachment :: ResourceType
pattern RTTransitGatewayAttachment = ResourceType' "transit-gateway-attachment"

pattern RTTransitGatewayConnectPeer :: ResourceType
pattern RTTransitGatewayConnectPeer = ResourceType' "transit-gateway-connect-peer"

pattern RTTransitGatewayMulticastDomain :: ResourceType
pattern RTTransitGatewayMulticastDomain = ResourceType' "transit-gateway-multicast-domain"

pattern RTTransitGatewayRouteTable :: ResourceType
pattern RTTransitGatewayRouteTable = ResourceType' "transit-gateway-route-table"

pattern RTVPC :: ResourceType
pattern RTVPC = ResourceType' "vpc"

pattern RTVPCFlowLog :: ResourceType
pattern RTVPCFlowLog = ResourceType' "vpc-flow-log"

pattern RTVPCPeeringConnection :: ResourceType
pattern RTVPCPeeringConnection = ResourceType' "vpc-peering-connection"

pattern RTVPNConnection :: ResourceType
pattern RTVPNConnection = ResourceType' "vpn-connection"

pattern RTVPNGateway :: ResourceType
pattern RTVPNGateway = ResourceType' "vpn-gateway"

pattern RTVolume :: ResourceType
pattern RTVolume = ResourceType' "volume"

{-# COMPLETE
  RTClientVPNEndpoint,
  RTCustomerGateway,
  RTDHCPOptions,
  RTDedicatedHost,
  RTEgressOnlyInternetGateway,
  RTElasticGpu,
  RTElasticIP,
  RTExportImageTask,
  RTExportInstanceTask,
  RTFleet,
  RTFpgaImage,
  RTHostReservation,
  RTImage,
  RTImportImageTask,
  RTImportSnapshotTask,
  RTInstance,
  RTInternetGateway,
  RTKeyPair,
  RTLaunchTemplate,
  RTLocalGatewayRouteTableVPCAssociation,
  RTNatgateway,
  RTNetworkACL,
  RTNetworkInsightsAnalysis,
  RTNetworkInsightsPath,
  RTNetworkInterface,
  RTPlacementGroup,
  RTReservedInstances,
  RTRouteTable,
  RTSecurityGroup,
  RTSnapshot,
  RTSpotFleetRequest,
  RTSpotInstancesRequest,
  RTSubnet,
  RTTrafficMirrorFilter,
  RTTrafficMirrorSession,
  RTTrafficMirrorTarget,
  RTTransitGateway,
  RTTransitGatewayAttachment,
  RTTransitGatewayConnectPeer,
  RTTransitGatewayMulticastDomain,
  RTTransitGatewayRouteTable,
  RTVPC,
  RTVPCFlowLog,
  RTVPCPeeringConnection,
  RTVPNConnection,
  RTVPNGateway,
  RTVolume,
  ResourceType'
  #-}

instance FromText ResourceType where
  parser = (ResourceType' . mk) <$> takeText

instance ToText ResourceType where
  toText (ResourceType' ci) = original ci

instance Hashable ResourceType

instance NFData ResourceType

instance ToByteString ResourceType

instance ToQuery ResourceType

instance ToHeader ResourceType

instance FromXML ResourceType where
  parseXML = parseXMLText "ResourceType"
