{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectConnect.Types.Connection
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectConnect.Types.Connection where

import Network.AWS.DirectConnect.Types.ConnectionState
import Network.AWS.DirectConnect.Types.HasLogicalRedundancy
import Network.AWS.DirectConnect.Types.Tag
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about an AWS Direct Connect connection.
--
--
--
-- /See:/ 'connection' smart constructor.
data Connection = Connection'
  { _cBandwidth ::
      !(Maybe Text),
    _cConnectionState :: !(Maybe ConnectionState),
    _cAwsDeviceV2 :: !(Maybe Text),
    _cConnectionName :: !(Maybe Text),
    _cProviderName :: !(Maybe Text),
    _cConnectionId :: !(Maybe Text),
    _cHasLogicalRedundancy ::
      !(Maybe HasLogicalRedundancy),
    _cAwsDevice :: !(Maybe Text),
    _cJumboFrameCapable :: !(Maybe Bool),
    _cLagId :: !(Maybe Text),
    _cPartnerName :: !(Maybe Text),
    _cTags :: !(Maybe (List1 Tag)),
    _cLoaIssueTime :: !(Maybe POSIX),
    _cOwnerAccount :: !(Maybe Text),
    _cRegion :: !(Maybe Text),
    _cLocation :: !(Maybe Text),
    _cVlan :: !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Connection' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cBandwidth' - The bandwidth of the connection.
--
-- * 'cConnectionState' - The state of the connection. The following are the possible values:     * @ordering@ : The initial state of a hosted connection provisioned on an interconnect. The connection stays in the ordering state until the owner of the hosted connection confirms or declines the connection order.     * @requested@ : The initial state of a standard connection. The connection stays in the requested state until the Letter of Authorization (LOA) is sent to the customer.     * @pending@ : The connection has been approved and is being initialized.     * @available@ : The network link is up and the connection is ready for use.     * @down@ : The network link is down.     * @deleting@ : The connection is being deleted.     * @deleted@ : The connection has been deleted.     * @rejected@ : A hosted connection in the @ordering@ state enters the @rejected@ state if it is deleted by the customer.     * @unknown@ : The state of the connection is not available.
--
-- * 'cAwsDeviceV2' - The Direct Connect endpoint on which the physical connection terminates.
--
-- * 'cConnectionName' - The name of the connection.
--
-- * 'cProviderName' - The name of the service provider associated with the connection.
--
-- * 'cConnectionId' - The ID of the connection.
--
-- * 'cHasLogicalRedundancy' - Indicates whether the connection supports a secondary BGP peer in the same address family (IPv4/IPv6).
--
-- * 'cAwsDevice' - The Direct Connect endpoint on which the physical connection terminates.
--
-- * 'cJumboFrameCapable' - Indicates whether jumbo frames (9001 MTU) are supported.
--
-- * 'cLagId' - The ID of the LAG.
--
-- * 'cPartnerName' - The name of the AWS Direct Connect service provider associated with the connection.
--
-- * 'cTags' - The tags associated with the connection.
--
-- * 'cLoaIssueTime' - The time of the most recent call to 'DescribeLoa' for this connection.
--
-- * 'cOwnerAccount' - The ID of the AWS account that owns the connection.
--
-- * 'cRegion' - The AWS Region where the connection is located.
--
-- * 'cLocation' - The location of the connection.
--
-- * 'cVlan' - The ID of the VLAN.
connection ::
  Connection
connection =
  Connection'
    { _cBandwidth = Nothing,
      _cConnectionState = Nothing,
      _cAwsDeviceV2 = Nothing,
      _cConnectionName = Nothing,
      _cProviderName = Nothing,
      _cConnectionId = Nothing,
      _cHasLogicalRedundancy = Nothing,
      _cAwsDevice = Nothing,
      _cJumboFrameCapable = Nothing,
      _cLagId = Nothing,
      _cPartnerName = Nothing,
      _cTags = Nothing,
      _cLoaIssueTime = Nothing,
      _cOwnerAccount = Nothing,
      _cRegion = Nothing,
      _cLocation = Nothing,
      _cVlan = Nothing
    }

-- | The bandwidth of the connection.
cBandwidth :: Lens' Connection (Maybe Text)
cBandwidth = lens _cBandwidth (\s a -> s {_cBandwidth = a})

-- | The state of the connection. The following are the possible values:     * @ordering@ : The initial state of a hosted connection provisioned on an interconnect. The connection stays in the ordering state until the owner of the hosted connection confirms or declines the connection order.     * @requested@ : The initial state of a standard connection. The connection stays in the requested state until the Letter of Authorization (LOA) is sent to the customer.     * @pending@ : The connection has been approved and is being initialized.     * @available@ : The network link is up and the connection is ready for use.     * @down@ : The network link is down.     * @deleting@ : The connection is being deleted.     * @deleted@ : The connection has been deleted.     * @rejected@ : A hosted connection in the @ordering@ state enters the @rejected@ state if it is deleted by the customer.     * @unknown@ : The state of the connection is not available.
cConnectionState :: Lens' Connection (Maybe ConnectionState)
cConnectionState = lens _cConnectionState (\s a -> s {_cConnectionState = a})

-- | The Direct Connect endpoint on which the physical connection terminates.
cAwsDeviceV2 :: Lens' Connection (Maybe Text)
cAwsDeviceV2 = lens _cAwsDeviceV2 (\s a -> s {_cAwsDeviceV2 = a})

-- | The name of the connection.
cConnectionName :: Lens' Connection (Maybe Text)
cConnectionName = lens _cConnectionName (\s a -> s {_cConnectionName = a})

-- | The name of the service provider associated with the connection.
cProviderName :: Lens' Connection (Maybe Text)
cProviderName = lens _cProviderName (\s a -> s {_cProviderName = a})

-- | The ID of the connection.
cConnectionId :: Lens' Connection (Maybe Text)
cConnectionId = lens _cConnectionId (\s a -> s {_cConnectionId = a})

-- | Indicates whether the connection supports a secondary BGP peer in the same address family (IPv4/IPv6).
cHasLogicalRedundancy :: Lens' Connection (Maybe HasLogicalRedundancy)
cHasLogicalRedundancy = lens _cHasLogicalRedundancy (\s a -> s {_cHasLogicalRedundancy = a})

-- | The Direct Connect endpoint on which the physical connection terminates.
cAwsDevice :: Lens' Connection (Maybe Text)
cAwsDevice = lens _cAwsDevice (\s a -> s {_cAwsDevice = a})

-- | Indicates whether jumbo frames (9001 MTU) are supported.
cJumboFrameCapable :: Lens' Connection (Maybe Bool)
cJumboFrameCapable = lens _cJumboFrameCapable (\s a -> s {_cJumboFrameCapable = a})

-- | The ID of the LAG.
cLagId :: Lens' Connection (Maybe Text)
cLagId = lens _cLagId (\s a -> s {_cLagId = a})

-- | The name of the AWS Direct Connect service provider associated with the connection.
cPartnerName :: Lens' Connection (Maybe Text)
cPartnerName = lens _cPartnerName (\s a -> s {_cPartnerName = a})

-- | The tags associated with the connection.
cTags :: Lens' Connection (Maybe (NonEmpty Tag))
cTags = lens _cTags (\s a -> s {_cTags = a}) . mapping _List1

-- | The time of the most recent call to 'DescribeLoa' for this connection.
cLoaIssueTime :: Lens' Connection (Maybe UTCTime)
cLoaIssueTime = lens _cLoaIssueTime (\s a -> s {_cLoaIssueTime = a}) . mapping _Time

-- | The ID of the AWS account that owns the connection.
cOwnerAccount :: Lens' Connection (Maybe Text)
cOwnerAccount = lens _cOwnerAccount (\s a -> s {_cOwnerAccount = a})

-- | The AWS Region where the connection is located.
cRegion :: Lens' Connection (Maybe Text)
cRegion = lens _cRegion (\s a -> s {_cRegion = a})

-- | The location of the connection.
cLocation :: Lens' Connection (Maybe Text)
cLocation = lens _cLocation (\s a -> s {_cLocation = a})

-- | The ID of the VLAN.
cVlan :: Lens' Connection (Maybe Int)
cVlan = lens _cVlan (\s a -> s {_cVlan = a})

instance FromJSON Connection where
  parseJSON =
    withObject
      "Connection"
      ( \x ->
          Connection'
            <$> (x .:? "bandwidth")
            <*> (x .:? "connectionState")
            <*> (x .:? "awsDeviceV2")
            <*> (x .:? "connectionName")
            <*> (x .:? "providerName")
            <*> (x .:? "connectionId")
            <*> (x .:? "hasLogicalRedundancy")
            <*> (x .:? "awsDevice")
            <*> (x .:? "jumboFrameCapable")
            <*> (x .:? "lagId")
            <*> (x .:? "partnerName")
            <*> (x .:? "tags")
            <*> (x .:? "loaIssueTime")
            <*> (x .:? "ownerAccount")
            <*> (x .:? "region")
            <*> (x .:? "location")
            <*> (x .:? "vlan")
      )

instance Hashable Connection

instance NFData Connection
