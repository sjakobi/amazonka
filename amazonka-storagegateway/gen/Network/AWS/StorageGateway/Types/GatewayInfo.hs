{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.StorageGateway.Types.GatewayInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.StorageGateway.Types.GatewayInfo where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a gateway object.
--
--
--
-- /See:/ 'gatewayInfo' smart constructor.
data GatewayInfo = GatewayInfo'
  { _giGatewayOperationalState ::
      !(Maybe Text),
    _giGatewayName :: !(Maybe Text),
    _giGatewayType :: !(Maybe Text),
    _giEC2InstanceRegion :: !(Maybe Text),
    _giEC2InstanceId :: !(Maybe Text),
    _giGatewayARN :: !(Maybe Text),
    _giGatewayId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GatewayInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giGatewayOperationalState' - The state of the gateway. Valid Values: @DISABLED@ | @ACTIVE@
--
-- * 'giGatewayName' - The name of the gateway.
--
-- * 'giGatewayType' - The type of the gateway.
--
-- * 'giEC2InstanceRegion' - The AWS Region where the Amazon EC2 instance is located.
--
-- * 'giEC2InstanceId' - The ID of the Amazon EC2 instance that was used to launch the gateway.
--
-- * 'giGatewayARN' - The Amazon Resource Name (ARN) of the gateway. Use the 'ListGateways' operation to return a list of gateways for your account and AWS Region.
--
-- * 'giGatewayId' - The unique identifier assigned to your gateway during activation. This ID becomes part of the gateway Amazon Resource Name (ARN), which you use as input for other operations.
gatewayInfo ::
  GatewayInfo
gatewayInfo =
  GatewayInfo'
    { _giGatewayOperationalState = Nothing,
      _giGatewayName = Nothing,
      _giGatewayType = Nothing,
      _giEC2InstanceRegion = Nothing,
      _giEC2InstanceId = Nothing,
      _giGatewayARN = Nothing,
      _giGatewayId = Nothing
    }

-- | The state of the gateway. Valid Values: @DISABLED@ | @ACTIVE@
giGatewayOperationalState :: Lens' GatewayInfo (Maybe Text)
giGatewayOperationalState = lens _giGatewayOperationalState (\s a -> s {_giGatewayOperationalState = a})

-- | The name of the gateway.
giGatewayName :: Lens' GatewayInfo (Maybe Text)
giGatewayName = lens _giGatewayName (\s a -> s {_giGatewayName = a})

-- | The type of the gateway.
giGatewayType :: Lens' GatewayInfo (Maybe Text)
giGatewayType = lens _giGatewayType (\s a -> s {_giGatewayType = a})

-- | The AWS Region where the Amazon EC2 instance is located.
giEC2InstanceRegion :: Lens' GatewayInfo (Maybe Text)
giEC2InstanceRegion = lens _giEC2InstanceRegion (\s a -> s {_giEC2InstanceRegion = a})

-- | The ID of the Amazon EC2 instance that was used to launch the gateway.
giEC2InstanceId :: Lens' GatewayInfo (Maybe Text)
giEC2InstanceId = lens _giEC2InstanceId (\s a -> s {_giEC2InstanceId = a})

-- | The Amazon Resource Name (ARN) of the gateway. Use the 'ListGateways' operation to return a list of gateways for your account and AWS Region.
giGatewayARN :: Lens' GatewayInfo (Maybe Text)
giGatewayARN = lens _giGatewayARN (\s a -> s {_giGatewayARN = a})

-- | The unique identifier assigned to your gateway during activation. This ID becomes part of the gateway Amazon Resource Name (ARN), which you use as input for other operations.
giGatewayId :: Lens' GatewayInfo (Maybe Text)
giGatewayId = lens _giGatewayId (\s a -> s {_giGatewayId = a})

instance FromJSON GatewayInfo where
  parseJSON =
    withObject
      "GatewayInfo"
      ( \x ->
          GatewayInfo'
            <$> (x .:? "GatewayOperationalState")
            <*> (x .:? "GatewayName")
            <*> (x .:? "GatewayType")
            <*> (x .:? "Ec2InstanceRegion")
            <*> (x .:? "Ec2InstanceId")
            <*> (x .:? "GatewayARN")
            <*> (x .:? "GatewayId")
      )

instance Hashable GatewayInfo

instance NFData GatewayInfo
