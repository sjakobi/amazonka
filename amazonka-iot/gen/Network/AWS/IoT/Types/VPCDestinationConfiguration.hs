{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.VPCDestinationConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.VPCDestinationConfiguration where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The configuration information for a virtual private cloud (VPC) destination.
--
--
--
-- /See:/ 'vpcDestinationConfiguration' smart constructor.
data VPCDestinationConfiguration = VPCDestinationConfiguration'
  { _vdcSecurityGroups ::
      !(Maybe [Text]),
    _vdcSubnetIds ::
      ![Text],
    _vdcVpcId ::
      !Text,
    _vdcRoleARN ::
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

-- | Creates a value of 'VPCDestinationConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vdcSecurityGroups' - The security groups of the VPC destination.
--
-- * 'vdcSubnetIds' - The subnet IDs of the VPC destination.
--
-- * 'vdcVpcId' - The ID of the VPC.
--
-- * 'vdcRoleARN' - The ARN of a role that has permission to create and attach to elastic network interfaces (ENIs).
vpcDestinationConfiguration ::
  -- | 'vdcVpcId'
  Text ->
  -- | 'vdcRoleARN'
  Text ->
  VPCDestinationConfiguration
vpcDestinationConfiguration pVpcId_ pRoleARN_ =
  VPCDestinationConfiguration'
    { _vdcSecurityGroups =
        Nothing,
      _vdcSubnetIds = mempty,
      _vdcVpcId = pVpcId_,
      _vdcRoleARN = pRoleARN_
    }

-- | The security groups of the VPC destination.
vdcSecurityGroups :: Lens' VPCDestinationConfiguration [Text]
vdcSecurityGroups = lens _vdcSecurityGroups (\s a -> s {_vdcSecurityGroups = a}) . _Default . _Coerce

-- | The subnet IDs of the VPC destination.
vdcSubnetIds :: Lens' VPCDestinationConfiguration [Text]
vdcSubnetIds = lens _vdcSubnetIds (\s a -> s {_vdcSubnetIds = a}) . _Coerce

-- | The ID of the VPC.
vdcVpcId :: Lens' VPCDestinationConfiguration Text
vdcVpcId = lens _vdcVpcId (\s a -> s {_vdcVpcId = a})

-- | The ARN of a role that has permission to create and attach to elastic network interfaces (ENIs).
vdcRoleARN :: Lens' VPCDestinationConfiguration Text
vdcRoleARN = lens _vdcRoleARN (\s a -> s {_vdcRoleARN = a})

instance Hashable VPCDestinationConfiguration

instance NFData VPCDestinationConfiguration

instance ToJSON VPCDestinationConfiguration where
  toJSON VPCDestinationConfiguration' {..} =
    object
      ( catMaybes
          [ ("securityGroups" .=) <$> _vdcSecurityGroups,
            Just ("subnetIds" .= _vdcSubnetIds),
            Just ("vpcId" .= _vdcVpcId),
            Just ("roleArn" .= _vdcRoleARN)
          ]
      )
