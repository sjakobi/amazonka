{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.VPCClassicLink
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.VPCClassicLink where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.Tag
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes whether a VPC is enabled for ClassicLink.
--
--
--
-- /See:/ 'vpcClassicLink' smart constructor.
data VPCClassicLink = VPCClassicLink'
  { _vclTags ::
      !(Maybe [Tag]),
    _vclClassicLinkEnabled :: !(Maybe Bool),
    _vclVPCId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'VPCClassicLink' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vclTags' - Any tags assigned to the VPC.
--
-- * 'vclClassicLinkEnabled' - Indicates whether the VPC is enabled for ClassicLink.
--
-- * 'vclVPCId' - The ID of the VPC.
vpcClassicLink ::
  VPCClassicLink
vpcClassicLink =
  VPCClassicLink'
    { _vclTags = Nothing,
      _vclClassicLinkEnabled = Nothing,
      _vclVPCId = Nothing
    }

-- | Any tags assigned to the VPC.
vclTags :: Lens' VPCClassicLink [Tag]
vclTags = lens _vclTags (\s a -> s {_vclTags = a}) . _Default . _Coerce

-- | Indicates whether the VPC is enabled for ClassicLink.
vclClassicLinkEnabled :: Lens' VPCClassicLink (Maybe Bool)
vclClassicLinkEnabled = lens _vclClassicLinkEnabled (\s a -> s {_vclClassicLinkEnabled = a})

-- | The ID of the VPC.
vclVPCId :: Lens' VPCClassicLink (Maybe Text)
vclVPCId = lens _vclVPCId (\s a -> s {_vclVPCId = a})

instance FromXML VPCClassicLink where
  parseXML x =
    VPCClassicLink'
      <$> ( x .@? "tagSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "classicLinkEnabled")
      <*> (x .@? "vpcId")

instance Hashable VPCClassicLink

instance NFData VPCClassicLink
