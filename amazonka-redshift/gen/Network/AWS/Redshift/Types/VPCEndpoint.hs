{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Redshift.Types.VPCEndpoint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.VPCEndpoint where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Redshift.Internal

-- | The connection endpoint for connecting an Amazon Redshift cluster through the proxy.
--
--
--
-- /See:/ 'vpcEndpoint' smart constructor.
newtype VPCEndpoint = VPCEndpoint'
  { _veVPCEndpointId ::
      Maybe Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'VPCEndpoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'veVPCEndpointId' - The connection endpoint ID for connecting an Amazon Redshift cluster through the proxy.
vpcEndpoint ::
  VPCEndpoint
vpcEndpoint =
  VPCEndpoint' {_veVPCEndpointId = Nothing}

-- | The connection endpoint ID for connecting an Amazon Redshift cluster through the proxy.
veVPCEndpointId :: Lens' VPCEndpoint (Maybe Text)
veVPCEndpointId = lens _veVPCEndpointId (\s a -> s {_veVPCEndpointId = a})

instance FromXML VPCEndpoint where
  parseXML x = VPCEndpoint' <$> (x .@? "VpcEndpointId")

instance Hashable VPCEndpoint

instance NFData VPCEndpoint
