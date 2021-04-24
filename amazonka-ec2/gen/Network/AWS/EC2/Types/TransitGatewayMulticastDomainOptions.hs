{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.TransitGatewayMulticastDomainOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.TransitGatewayMulticastDomainOptions where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.AutoAcceptSharedAssociationsValue
import Network.AWS.EC2.Types.Igmpv2SupportValue
import Network.AWS.EC2.Types.StaticSourcesSupportValue
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the options for a transit gateway multicast domain.
--
--
--
-- /See:/ 'transitGatewayMulticastDomainOptions' smart constructor.
data TransitGatewayMulticastDomainOptions = TransitGatewayMulticastDomainOptions'
  { _tgmdoIgmpv2Support ::
      !( Maybe
           Igmpv2SupportValue
       ),
    _tgmdoAutoAcceptSharedAssociations ::
      !( Maybe
           AutoAcceptSharedAssociationsValue
       ),
    _tgmdoStaticSourcesSupport ::
      !( Maybe
           StaticSourcesSupportValue
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

-- | Creates a value of 'TransitGatewayMulticastDomainOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tgmdoIgmpv2Support' - Indicates whether Internet Group Management Protocol (IGMP) version 2 is turned on for the transit gateway multicast domain.
--
-- * 'tgmdoAutoAcceptSharedAssociations' - Indicates whether to automatically cross-account subnet associations that are associated with the transit gateway multicast domain.
--
-- * 'tgmdoStaticSourcesSupport' - Indicates whether support for statically configuring transit gateway multicast group sources is turned on.
transitGatewayMulticastDomainOptions ::
  TransitGatewayMulticastDomainOptions
transitGatewayMulticastDomainOptions =
  TransitGatewayMulticastDomainOptions'
    { _tgmdoIgmpv2Support =
        Nothing,
      _tgmdoAutoAcceptSharedAssociations =
        Nothing,
      _tgmdoStaticSourcesSupport = Nothing
    }

-- | Indicates whether Internet Group Management Protocol (IGMP) version 2 is turned on for the transit gateway multicast domain.
tgmdoIgmpv2Support :: Lens' TransitGatewayMulticastDomainOptions (Maybe Igmpv2SupportValue)
tgmdoIgmpv2Support = lens _tgmdoIgmpv2Support (\s a -> s {_tgmdoIgmpv2Support = a})

-- | Indicates whether to automatically cross-account subnet associations that are associated with the transit gateway multicast domain.
tgmdoAutoAcceptSharedAssociations :: Lens' TransitGatewayMulticastDomainOptions (Maybe AutoAcceptSharedAssociationsValue)
tgmdoAutoAcceptSharedAssociations = lens _tgmdoAutoAcceptSharedAssociations (\s a -> s {_tgmdoAutoAcceptSharedAssociations = a})

-- | Indicates whether support for statically configuring transit gateway multicast group sources is turned on.
tgmdoStaticSourcesSupport :: Lens' TransitGatewayMulticastDomainOptions (Maybe StaticSourcesSupportValue)
tgmdoStaticSourcesSupport = lens _tgmdoStaticSourcesSupport (\s a -> s {_tgmdoStaticSourcesSupport = a})

instance FromXML TransitGatewayMulticastDomainOptions where
  parseXML x =
    TransitGatewayMulticastDomainOptions'
      <$> (x .@? "igmpv2Support")
      <*> (x .@? "autoAcceptSharedAssociations")
      <*> (x .@? "staticSourcesSupport")

instance
  Hashable
    TransitGatewayMulticastDomainOptions

instance NFData TransitGatewayMulticastDomainOptions
