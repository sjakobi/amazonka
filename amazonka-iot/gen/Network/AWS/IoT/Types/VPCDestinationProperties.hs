{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.VPCDestinationProperties
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.VPCDestinationProperties where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The properties of a virtual private cloud (VPC) destination.
--
--
--
-- /See:/ 'vpcDestinationProperties' smart constructor.
data VPCDestinationProperties = VPCDestinationProperties'
  { _vdpRoleARN ::
      !(Maybe Text),
    _vdpSubnetIds ::
      !(Maybe [Text]),
    _vdpSecurityGroups ::
      !(Maybe [Text]),
    _vdpVpcId ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'VPCDestinationProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vdpRoleARN' - The ARN of a role that has permission to create and attach to elastic network interfaces (ENIs).
--
-- * 'vdpSubnetIds' - The subnet IDs of the VPC destination.
--
-- * 'vdpSecurityGroups' - The security groups of the VPC destination.
--
-- * 'vdpVpcId' - The ID of the VPC.
vpcDestinationProperties ::
  VPCDestinationProperties
vpcDestinationProperties =
  VPCDestinationProperties'
    { _vdpRoleARN = Nothing,
      _vdpSubnetIds = Nothing,
      _vdpSecurityGroups = Nothing,
      _vdpVpcId = Nothing
    }

-- | The ARN of a role that has permission to create and attach to elastic network interfaces (ENIs).
vdpRoleARN :: Lens' VPCDestinationProperties (Maybe Text)
vdpRoleARN = lens _vdpRoleARN (\s a -> s {_vdpRoleARN = a})

-- | The subnet IDs of the VPC destination.
vdpSubnetIds :: Lens' VPCDestinationProperties [Text]
vdpSubnetIds = lens _vdpSubnetIds (\s a -> s {_vdpSubnetIds = a}) . _Default . _Coerce

-- | The security groups of the VPC destination.
vdpSecurityGroups :: Lens' VPCDestinationProperties [Text]
vdpSecurityGroups = lens _vdpSecurityGroups (\s a -> s {_vdpSecurityGroups = a}) . _Default . _Coerce

-- | The ID of the VPC.
vdpVpcId :: Lens' VPCDestinationProperties (Maybe Text)
vdpVpcId = lens _vdpVpcId (\s a -> s {_vdpVpcId = a})

instance FromJSON VPCDestinationProperties where
  parseJSON =
    withObject
      "VPCDestinationProperties"
      ( \x ->
          VPCDestinationProperties'
            <$> (x .:? "roleArn")
            <*> (x .:? "subnetIds" .!= mempty)
            <*> (x .:? "securityGroups" .!= mempty)
            <*> (x .:? "vpcId")
      )

instance Hashable VPCDestinationProperties

instance NFData VPCDestinationProperties
