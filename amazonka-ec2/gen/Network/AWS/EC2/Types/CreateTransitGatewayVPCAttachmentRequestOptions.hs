{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.CreateTransitGatewayVPCAttachmentRequestOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.CreateTransitGatewayVPCAttachmentRequestOptions where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.ApplianceModeSupportValue
import Network.AWS.EC2.Types.DNSSupportValue
import Network.AWS.EC2.Types.IPv6SupportValue
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the options for a VPC attachment.
--
--
--
-- /See:/ 'createTransitGatewayVPCAttachmentRequestOptions' smart constructor.
data CreateTransitGatewayVPCAttachmentRequestOptions = CreateTransitGatewayVPCAttachmentRequestOptions'
  { _ctgvaroApplianceModeSupport ::
      !( Maybe
           ApplianceModeSupportValue
       ),
    _ctgvaroDNSSupport ::
      !( Maybe
           DNSSupportValue
       ),
    _ctgvaroIPv6Support ::
      !( Maybe
           IPv6SupportValue
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

-- | Creates a value of 'CreateTransitGatewayVPCAttachmentRequestOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctgvaroApplianceModeSupport' - Enable or disable support for appliance mode. If enabled, a traffic flow between a source and destination uses the same Availability Zone for the VPC attachment for the lifetime of that flow. The default is @disable@ .
--
-- * 'ctgvaroDNSSupport' - Enable or disable DNS support. The default is @enable@ .
--
-- * 'ctgvaroIPv6Support' - Enable or disable IPv6 support. The default is @disable@ .
createTransitGatewayVPCAttachmentRequestOptions ::
  CreateTransitGatewayVPCAttachmentRequestOptions
createTransitGatewayVPCAttachmentRequestOptions =
  CreateTransitGatewayVPCAttachmentRequestOptions'
    { _ctgvaroApplianceModeSupport =
        Nothing,
      _ctgvaroDNSSupport =
        Nothing,
      _ctgvaroIPv6Support =
        Nothing
    }

-- | Enable or disable support for appliance mode. If enabled, a traffic flow between a source and destination uses the same Availability Zone for the VPC attachment for the lifetime of that flow. The default is @disable@ .
ctgvaroApplianceModeSupport :: Lens' CreateTransitGatewayVPCAttachmentRequestOptions (Maybe ApplianceModeSupportValue)
ctgvaroApplianceModeSupport = lens _ctgvaroApplianceModeSupport (\s a -> s {_ctgvaroApplianceModeSupport = a})

-- | Enable or disable DNS support. The default is @enable@ .
ctgvaroDNSSupport :: Lens' CreateTransitGatewayVPCAttachmentRequestOptions (Maybe DNSSupportValue)
ctgvaroDNSSupport = lens _ctgvaroDNSSupport (\s a -> s {_ctgvaroDNSSupport = a})

-- | Enable or disable IPv6 support. The default is @disable@ .
ctgvaroIPv6Support :: Lens' CreateTransitGatewayVPCAttachmentRequestOptions (Maybe IPv6SupportValue)
ctgvaroIPv6Support = lens _ctgvaroIPv6Support (\s a -> s {_ctgvaroIPv6Support = a})

instance
  Hashable
    CreateTransitGatewayVPCAttachmentRequestOptions

instance
  NFData
    CreateTransitGatewayVPCAttachmentRequestOptions

instance
  ToQuery
    CreateTransitGatewayVPCAttachmentRequestOptions
  where
  toQuery
    CreateTransitGatewayVPCAttachmentRequestOptions' {..} =
      mconcat
        [ "ApplianceModeSupport"
            =: _ctgvaroApplianceModeSupport,
          "DnsSupport" =: _ctgvaroDNSSupport,
          "Ipv6Support" =: _ctgvaroIPv6Support
        ]
