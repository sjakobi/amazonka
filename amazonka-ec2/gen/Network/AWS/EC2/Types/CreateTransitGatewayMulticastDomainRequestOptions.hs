{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.CreateTransitGatewayMulticastDomainRequestOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.CreateTransitGatewayMulticastDomainRequestOptions where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.AutoAcceptSharedAssociationsValue
import Network.AWS.EC2.Types.Igmpv2SupportValue
import Network.AWS.EC2.Types.StaticSourcesSupportValue
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The options for the transit gateway multicast domain.
--
--
--
-- /See:/ 'createTransitGatewayMulticastDomainRequestOptions' smart constructor.
data CreateTransitGatewayMulticastDomainRequestOptions = CreateTransitGatewayMulticastDomainRequestOptions'
  { _ctgmdroIgmpv2Support ::
      !( Maybe
           Igmpv2SupportValue
       ),
    _ctgmdroAutoAcceptSharedAssociations ::
      !( Maybe
           AutoAcceptSharedAssociationsValue
       ),
    _ctgmdroStaticSourcesSupport ::
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

-- | Creates a value of 'CreateTransitGatewayMulticastDomainRequestOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctgmdroIgmpv2Support' - Specify whether to enable Internet Group Management Protocol (IGMP) version 2 for the transit gateway multicast domain.
--
-- * 'ctgmdroAutoAcceptSharedAssociations' - Indicates whether to automatically accept cross-account subnet associations that are associated with the transit gateway multicast domain.
--
-- * 'ctgmdroStaticSourcesSupport' - Specify whether to enable support for statically configuring multicast group sources for a domain.
createTransitGatewayMulticastDomainRequestOptions ::
  CreateTransitGatewayMulticastDomainRequestOptions
createTransitGatewayMulticastDomainRequestOptions =
  CreateTransitGatewayMulticastDomainRequestOptions'
    { _ctgmdroIgmpv2Support =
        Nothing,
      _ctgmdroAutoAcceptSharedAssociations =
        Nothing,
      _ctgmdroStaticSourcesSupport =
        Nothing
    }

-- | Specify whether to enable Internet Group Management Protocol (IGMP) version 2 for the transit gateway multicast domain.
ctgmdroIgmpv2Support :: Lens' CreateTransitGatewayMulticastDomainRequestOptions (Maybe Igmpv2SupportValue)
ctgmdroIgmpv2Support = lens _ctgmdroIgmpv2Support (\s a -> s {_ctgmdroIgmpv2Support = a})

-- | Indicates whether to automatically accept cross-account subnet associations that are associated with the transit gateway multicast domain.
ctgmdroAutoAcceptSharedAssociations :: Lens' CreateTransitGatewayMulticastDomainRequestOptions (Maybe AutoAcceptSharedAssociationsValue)
ctgmdroAutoAcceptSharedAssociations = lens _ctgmdroAutoAcceptSharedAssociations (\s a -> s {_ctgmdroAutoAcceptSharedAssociations = a})

-- | Specify whether to enable support for statically configuring multicast group sources for a domain.
ctgmdroStaticSourcesSupport :: Lens' CreateTransitGatewayMulticastDomainRequestOptions (Maybe StaticSourcesSupportValue)
ctgmdroStaticSourcesSupport = lens _ctgmdroStaticSourcesSupport (\s a -> s {_ctgmdroStaticSourcesSupport = a})

instance
  Hashable
    CreateTransitGatewayMulticastDomainRequestOptions

instance
  NFData
    CreateTransitGatewayMulticastDomainRequestOptions

instance
  ToQuery
    CreateTransitGatewayMulticastDomainRequestOptions
  where
  toQuery
    CreateTransitGatewayMulticastDomainRequestOptions' {..} =
      mconcat
        [ "Igmpv2Support" =: _ctgmdroIgmpv2Support,
          "AutoAcceptSharedAssociations"
            =: _ctgmdroAutoAcceptSharedAssociations,
          "StaticSourcesSupport"
            =: _ctgmdroStaticSourcesSupport
        ]
