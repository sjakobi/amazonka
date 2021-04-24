{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.VPCOutputSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.VPCOutputSettings where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The properties for a private VPC Output
--
-- When this property is specified, the output egress addresses will be created in a user specified VPC
--
-- /See:/ 'vpcOutputSettings' smart constructor.
data VPCOutputSettings = VPCOutputSettings'
  { _vosSecurityGroupIds ::
      !(Maybe [Text]),
    _vosPublicAddressAllocationIds ::
      !(Maybe [Text]),
    _vosSubnetIds :: ![Text]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'VPCOutputSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vosSecurityGroupIds' - A list of up to 5 EC2 VPC security group IDs to attach to the Output VPC network interfaces. If none are specified then the VPC default security group will be used
--
-- * 'vosPublicAddressAllocationIds' - List of public address allocation ids to associate with ENIs that will be created in Output VPC. Must specify one for SINGLE_PIPELINE, two for STANDARD channels
--
-- * 'vosSubnetIds' - A list of VPC subnet IDs from the same VPC. If STANDARD channel, subnet IDs must be mapped to two unique availability zones (AZ).
vpcOutputSettings ::
  VPCOutputSettings
vpcOutputSettings =
  VPCOutputSettings'
    { _vosSecurityGroupIds = Nothing,
      _vosPublicAddressAllocationIds = Nothing,
      _vosSubnetIds = mempty
    }

-- | A list of up to 5 EC2 VPC security group IDs to attach to the Output VPC network interfaces. If none are specified then the VPC default security group will be used
vosSecurityGroupIds :: Lens' VPCOutputSettings [Text]
vosSecurityGroupIds = lens _vosSecurityGroupIds (\s a -> s {_vosSecurityGroupIds = a}) . _Default . _Coerce

-- | List of public address allocation ids to associate with ENIs that will be created in Output VPC. Must specify one for SINGLE_PIPELINE, two for STANDARD channels
vosPublicAddressAllocationIds :: Lens' VPCOutputSettings [Text]
vosPublicAddressAllocationIds = lens _vosPublicAddressAllocationIds (\s a -> s {_vosPublicAddressAllocationIds = a}) . _Default . _Coerce

-- | A list of VPC subnet IDs from the same VPC. If STANDARD channel, subnet IDs must be mapped to two unique availability zones (AZ).
vosSubnetIds :: Lens' VPCOutputSettings [Text]
vosSubnetIds = lens _vosSubnetIds (\s a -> s {_vosSubnetIds = a}) . _Coerce

instance FromJSON VPCOutputSettings where
  parseJSON =
    withObject
      "VPCOutputSettings"
      ( \x ->
          VPCOutputSettings'
            <$> (x .:? "securityGroupIds" .!= mempty)
            <*> (x .:? "publicAddressAllocationIds" .!= mempty)
            <*> (x .:? "subnetIds" .!= mempty)
      )

instance Hashable VPCOutputSettings

instance NFData VPCOutputSettings

instance ToJSON VPCOutputSettings where
  toJSON VPCOutputSettings' {..} =
    object
      ( catMaybes
          [ ("securityGroupIds" .=) <$> _vosSecurityGroupIds,
            ("publicAddressAllocationIds" .=)
              <$> _vosPublicAddressAllocationIds,
            Just ("subnetIds" .= _vosSubnetIds)
          ]
      )
