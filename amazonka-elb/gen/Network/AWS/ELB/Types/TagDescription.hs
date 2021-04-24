{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ELB.Types.TagDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ELB.Types.TagDescription where

import Network.AWS.ELB.Internal
import Network.AWS.ELB.Types.Tag
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The tags associated with a load balancer.
--
--
--
-- /See:/ 'tagDescription' smart constructor.
data TagDescription = TagDescription'
  { _tdTags ::
      !(Maybe (List1 Tag)),
    _tdLoadBalancerName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TagDescription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tdTags' - The tags.
--
-- * 'tdLoadBalancerName' - The name of the load balancer.
tagDescription ::
  TagDescription
tagDescription =
  TagDescription'
    { _tdTags = Nothing,
      _tdLoadBalancerName = Nothing
    }

-- | The tags.
tdTags :: Lens' TagDescription (Maybe (NonEmpty Tag))
tdTags = lens _tdTags (\s a -> s {_tdTags = a}) . mapping _List1

-- | The name of the load balancer.
tdLoadBalancerName :: Lens' TagDescription (Maybe Text)
tdLoadBalancerName = lens _tdLoadBalancerName (\s a -> s {_tdLoadBalancerName = a})

instance FromXML TagDescription where
  parseXML x =
    TagDescription'
      <$> ( x .@? "Tags" .!@ mempty
              >>= may (parseXMLList1 "member")
          )
      <*> (x .@? "LoadBalancerName")

instance Hashable TagDescription

instance NFData TagDescription
