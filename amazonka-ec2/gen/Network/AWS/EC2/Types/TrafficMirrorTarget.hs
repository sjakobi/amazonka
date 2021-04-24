{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.TrafficMirrorTarget
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.TrafficMirrorTarget where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.Tag
import Network.AWS.EC2.Types.TrafficMirrorTargetType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a Traffic Mirror target.
--
--
--
-- /See:/ 'trafficMirrorTarget' smart constructor.
data TrafficMirrorTarget = TrafficMirrorTarget'
  { _tmtOwnerId ::
      !(Maybe Text),
    _tmtNetworkLoadBalancerARN ::
      !(Maybe Text),
    _tmtTags :: !(Maybe [Tag]),
    _tmtNetworkInterfaceId ::
      !(Maybe Text),
    _tmtDescription ::
      !(Maybe Text),
    _tmtType ::
      !( Maybe
           TrafficMirrorTargetType
       ),
    _tmtTrafficMirrorTargetId ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TrafficMirrorTarget' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tmtOwnerId' - The ID of the account that owns the Traffic Mirror target.
--
-- * 'tmtNetworkLoadBalancerARN' - The Amazon Resource Name (ARN) of the Network Load Balancer.
--
-- * 'tmtTags' - The tags assigned to the Traffic Mirror target.
--
-- * 'tmtNetworkInterfaceId' - The network interface ID that is attached to the target.
--
-- * 'tmtDescription' - Information about the Traffic Mirror target.
--
-- * 'tmtType' - The type of Traffic Mirror target.
--
-- * 'tmtTrafficMirrorTargetId' - The ID of the Traffic Mirror target.
trafficMirrorTarget ::
  TrafficMirrorTarget
trafficMirrorTarget =
  TrafficMirrorTarget'
    { _tmtOwnerId = Nothing,
      _tmtNetworkLoadBalancerARN = Nothing,
      _tmtTags = Nothing,
      _tmtNetworkInterfaceId = Nothing,
      _tmtDescription = Nothing,
      _tmtType = Nothing,
      _tmtTrafficMirrorTargetId = Nothing
    }

-- | The ID of the account that owns the Traffic Mirror target.
tmtOwnerId :: Lens' TrafficMirrorTarget (Maybe Text)
tmtOwnerId = lens _tmtOwnerId (\s a -> s {_tmtOwnerId = a})

-- | The Amazon Resource Name (ARN) of the Network Load Balancer.
tmtNetworkLoadBalancerARN :: Lens' TrafficMirrorTarget (Maybe Text)
tmtNetworkLoadBalancerARN = lens _tmtNetworkLoadBalancerARN (\s a -> s {_tmtNetworkLoadBalancerARN = a})

-- | The tags assigned to the Traffic Mirror target.
tmtTags :: Lens' TrafficMirrorTarget [Tag]
tmtTags = lens _tmtTags (\s a -> s {_tmtTags = a}) . _Default . _Coerce

-- | The network interface ID that is attached to the target.
tmtNetworkInterfaceId :: Lens' TrafficMirrorTarget (Maybe Text)
tmtNetworkInterfaceId = lens _tmtNetworkInterfaceId (\s a -> s {_tmtNetworkInterfaceId = a})

-- | Information about the Traffic Mirror target.
tmtDescription :: Lens' TrafficMirrorTarget (Maybe Text)
tmtDescription = lens _tmtDescription (\s a -> s {_tmtDescription = a})

-- | The type of Traffic Mirror target.
tmtType :: Lens' TrafficMirrorTarget (Maybe TrafficMirrorTargetType)
tmtType = lens _tmtType (\s a -> s {_tmtType = a})

-- | The ID of the Traffic Mirror target.
tmtTrafficMirrorTargetId :: Lens' TrafficMirrorTarget (Maybe Text)
tmtTrafficMirrorTargetId = lens _tmtTrafficMirrorTargetId (\s a -> s {_tmtTrafficMirrorTargetId = a})

instance FromXML TrafficMirrorTarget where
  parseXML x =
    TrafficMirrorTarget'
      <$> (x .@? "ownerId")
      <*> (x .@? "networkLoadBalancerArn")
      <*> ( x .@? "tagSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "networkInterfaceId")
      <*> (x .@? "description")
      <*> (x .@? "type")
      <*> (x .@? "trafficMirrorTargetId")

instance Hashable TrafficMirrorTarget

instance NFData TrafficMirrorTarget
