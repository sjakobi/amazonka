{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.VPCPeeringConnectionStateReason
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.VPCPeeringConnectionStateReason where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.VPCPeeringConnectionStateReasonCode
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the status of a VPC peering connection.
--
--
--
-- /See:/ 'vpcPeeringConnectionStateReason' smart constructor.
data VPCPeeringConnectionStateReason = VPCPeeringConnectionStateReason'
  { _vpcsrMessage ::
      !( Maybe
           Text
       ),
    _vpcsrCode ::
      !( Maybe
           VPCPeeringConnectionStateReasonCode
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'VPCPeeringConnectionStateReason' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vpcsrMessage' - A message that provides more information about the status, if applicable.
--
-- * 'vpcsrCode' - The status of the VPC peering connection.
vpcPeeringConnectionStateReason ::
  VPCPeeringConnectionStateReason
vpcPeeringConnectionStateReason =
  VPCPeeringConnectionStateReason'
    { _vpcsrMessage =
        Nothing,
      _vpcsrCode = Nothing
    }

-- | A message that provides more information about the status, if applicable.
vpcsrMessage :: Lens' VPCPeeringConnectionStateReason (Maybe Text)
vpcsrMessage = lens _vpcsrMessage (\s a -> s {_vpcsrMessage = a})

-- | The status of the VPC peering connection.
vpcsrCode :: Lens' VPCPeeringConnectionStateReason (Maybe VPCPeeringConnectionStateReasonCode)
vpcsrCode = lens _vpcsrCode (\s a -> s {_vpcsrCode = a})

instance FromXML VPCPeeringConnectionStateReason where
  parseXML x =
    VPCPeeringConnectionStateReason'
      <$> (x .@? "message") <*> (x .@? "code")

instance Hashable VPCPeeringConnectionStateReason

instance NFData VPCPeeringConnectionStateReason
