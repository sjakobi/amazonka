{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ClassicLinkInstance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ClassicLinkInstance where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.GroupIdentifier
import Network.AWS.EC2.Types.Tag
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a linked EC2-Classic instance.
--
--
--
-- /See:/ 'classicLinkInstance' smart constructor.
data ClassicLinkInstance = ClassicLinkInstance'
  { _cliGroups ::
      !(Maybe [GroupIdentifier]),
    _cliInstanceId :: !(Maybe Text),
    _cliTags :: !(Maybe [Tag]),
    _cliVPCId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ClassicLinkInstance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cliGroups' - A list of security groups.
--
-- * 'cliInstanceId' - The ID of the instance.
--
-- * 'cliTags' - Any tags assigned to the instance.
--
-- * 'cliVPCId' - The ID of the VPC.
classicLinkInstance ::
  ClassicLinkInstance
classicLinkInstance =
  ClassicLinkInstance'
    { _cliGroups = Nothing,
      _cliInstanceId = Nothing,
      _cliTags = Nothing,
      _cliVPCId = Nothing
    }

-- | A list of security groups.
cliGroups :: Lens' ClassicLinkInstance [GroupIdentifier]
cliGroups = lens _cliGroups (\s a -> s {_cliGroups = a}) . _Default . _Coerce

-- | The ID of the instance.
cliInstanceId :: Lens' ClassicLinkInstance (Maybe Text)
cliInstanceId = lens _cliInstanceId (\s a -> s {_cliInstanceId = a})

-- | Any tags assigned to the instance.
cliTags :: Lens' ClassicLinkInstance [Tag]
cliTags = lens _cliTags (\s a -> s {_cliTags = a}) . _Default . _Coerce

-- | The ID of the VPC.
cliVPCId :: Lens' ClassicLinkInstance (Maybe Text)
cliVPCId = lens _cliVPCId (\s a -> s {_cliVPCId = a})

instance FromXML ClassicLinkInstance where
  parseXML x =
    ClassicLinkInstance'
      <$> ( x .@? "groupSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "instanceId")
      <*> ( x .@? "tagSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "vpcId")

instance Hashable ClassicLinkInstance

instance NFData ClassicLinkInstance
