{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.Origin
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.Origin where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types.OriginProtocolPolicyEnum
import Network.AWS.Lightsail.Types.RegionName
import Network.AWS.Lightsail.Types.ResourceType
import Network.AWS.Prelude

-- | Describes the origin resource of an Amazon Lightsail content delivery network (CDN) distribution.
--
--
-- An origin can be a Lightsail instance or load balancer. A distribution pulls content from an origin, caches it, and serves it to viewers via a worldwide network of edge servers.
--
--
-- /See:/ 'origin' smart constructor.
data Origin = Origin'
  { _oriRegionName ::
      !(Maybe RegionName),
    _oriProtocolPolicy ::
      !(Maybe OriginProtocolPolicyEnum),
    _oriResourceType :: !(Maybe ResourceType),
    _oriName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Origin' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oriRegionName' - The AWS Region name of the origin resource.
--
-- * 'oriProtocolPolicy' - The protocol that your Amazon Lightsail distribution uses when establishing a connection with your origin to pull content.
--
-- * 'oriResourceType' - The resource type of the origin resource (e.g., /Instance/ ).
--
-- * 'oriName' - The name of the origin resource.
origin ::
  Origin
origin =
  Origin'
    { _oriRegionName = Nothing,
      _oriProtocolPolicy = Nothing,
      _oriResourceType = Nothing,
      _oriName = Nothing
    }

-- | The AWS Region name of the origin resource.
oriRegionName :: Lens' Origin (Maybe RegionName)
oriRegionName = lens _oriRegionName (\s a -> s {_oriRegionName = a})

-- | The protocol that your Amazon Lightsail distribution uses when establishing a connection with your origin to pull content.
oriProtocolPolicy :: Lens' Origin (Maybe OriginProtocolPolicyEnum)
oriProtocolPolicy = lens _oriProtocolPolicy (\s a -> s {_oriProtocolPolicy = a})

-- | The resource type of the origin resource (e.g., /Instance/ ).
oriResourceType :: Lens' Origin (Maybe ResourceType)
oriResourceType = lens _oriResourceType (\s a -> s {_oriResourceType = a})

-- | The name of the origin resource.
oriName :: Lens' Origin (Maybe Text)
oriName = lens _oriName (\s a -> s {_oriName = a})

instance FromJSON Origin where
  parseJSON =
    withObject
      "Origin"
      ( \x ->
          Origin'
            <$> (x .:? "regionName")
            <*> (x .:? "protocolPolicy")
            <*> (x .:? "resourceType")
            <*> (x .:? "name")
      )

instance Hashable Origin

instance NFData Origin
