{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.VPCDestinationSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.VPCDestinationSummary where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The summary of a virtual private cloud (VPC) destination.
--
--
--
-- /See:/ 'vpcDestinationSummary' smart constructor.
data VPCDestinationSummary = VPCDestinationSummary'
  { _vdsRoleARN ::
      !(Maybe Text),
    _vdsSubnetIds ::
      !(Maybe [Text]),
    _vdsSecurityGroups ::
      !(Maybe [Text]),
    _vdsVpcId :: !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'VPCDestinationSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vdsRoleARN' - The ARN of a role that has permission to create and attach to elastic network interfaces (ENIs).
--
-- * 'vdsSubnetIds' - The subnet IDs of the VPC destination.
--
-- * 'vdsSecurityGroups' - The security groups of the VPC destination.
--
-- * 'vdsVpcId' - The ID of the VPC.
vpcDestinationSummary ::
  VPCDestinationSummary
vpcDestinationSummary =
  VPCDestinationSummary'
    { _vdsRoleARN = Nothing,
      _vdsSubnetIds = Nothing,
      _vdsSecurityGroups = Nothing,
      _vdsVpcId = Nothing
    }

-- | The ARN of a role that has permission to create and attach to elastic network interfaces (ENIs).
vdsRoleARN :: Lens' VPCDestinationSummary (Maybe Text)
vdsRoleARN = lens _vdsRoleARN (\s a -> s {_vdsRoleARN = a})

-- | The subnet IDs of the VPC destination.
vdsSubnetIds :: Lens' VPCDestinationSummary [Text]
vdsSubnetIds = lens _vdsSubnetIds (\s a -> s {_vdsSubnetIds = a}) . _Default . _Coerce

-- | The security groups of the VPC destination.
vdsSecurityGroups :: Lens' VPCDestinationSummary [Text]
vdsSecurityGroups = lens _vdsSecurityGroups (\s a -> s {_vdsSecurityGroups = a}) . _Default . _Coerce

-- | The ID of the VPC.
vdsVpcId :: Lens' VPCDestinationSummary (Maybe Text)
vdsVpcId = lens _vdsVpcId (\s a -> s {_vdsVpcId = a})

instance FromJSON VPCDestinationSummary where
  parseJSON =
    withObject
      "VPCDestinationSummary"
      ( \x ->
          VPCDestinationSummary'
            <$> (x .:? "roleArn")
            <*> (x .:? "subnetIds" .!= mempty)
            <*> (x .:? "securityGroups" .!= mempty)
            <*> (x .:? "vpcId")
      )

instance Hashable VPCDestinationSummary

instance NFData VPCDestinationSummary
