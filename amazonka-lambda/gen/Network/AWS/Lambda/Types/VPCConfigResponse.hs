{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lambda.Types.VPCConfigResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lambda.Types.VPCConfigResponse where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The VPC security groups and subnets that are attached to a Lambda function.
--
--
--
-- /See:/ 'vpcConfigResponse' smart constructor.
data VPCConfigResponse = VPCConfigResponse'
  { _vcrSecurityGroupIds ::
      !(Maybe [Text]),
    _vcrSubnetIds :: !(Maybe [Text]),
    _vcrVPCId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'VPCConfigResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vcrSecurityGroupIds' - A list of VPC security groups IDs.
--
-- * 'vcrSubnetIds' - A list of VPC subnet IDs.
--
-- * 'vcrVPCId' - The ID of the VPC.
vpcConfigResponse ::
  VPCConfigResponse
vpcConfigResponse =
  VPCConfigResponse'
    { _vcrSecurityGroupIds = Nothing,
      _vcrSubnetIds = Nothing,
      _vcrVPCId = Nothing
    }

-- | A list of VPC security groups IDs.
vcrSecurityGroupIds :: Lens' VPCConfigResponse [Text]
vcrSecurityGroupIds = lens _vcrSecurityGroupIds (\s a -> s {_vcrSecurityGroupIds = a}) . _Default . _Coerce

-- | A list of VPC subnet IDs.
vcrSubnetIds :: Lens' VPCConfigResponse [Text]
vcrSubnetIds = lens _vcrSubnetIds (\s a -> s {_vcrSubnetIds = a}) . _Default . _Coerce

-- | The ID of the VPC.
vcrVPCId :: Lens' VPCConfigResponse (Maybe Text)
vcrVPCId = lens _vcrVPCId (\s a -> s {_vcrVPCId = a})

instance FromJSON VPCConfigResponse where
  parseJSON =
    withObject
      "VPCConfigResponse"
      ( \x ->
          VPCConfigResponse'
            <$> (x .:? "SecurityGroupIds" .!= mempty)
            <*> (x .:? "SubnetIds" .!= mempty)
            <*> (x .:? "VpcId")
      )

instance Hashable VPCConfigResponse

instance NFData VPCConfigResponse
