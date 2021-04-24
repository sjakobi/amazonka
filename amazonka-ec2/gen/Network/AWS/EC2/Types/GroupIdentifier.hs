{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.GroupIdentifier
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.GroupIdentifier where

import Network.AWS.EC2.Internal
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a security group.
--
--
--
-- /See:/ 'groupIdentifier' smart constructor.
data GroupIdentifier = GroupIdentifier'
  { _giGroupName ::
      !(Maybe Text),
    _giGroupId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GroupIdentifier' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giGroupName' - The name of the security group.
--
-- * 'giGroupId' - The ID of the security group.
groupIdentifier ::
  GroupIdentifier
groupIdentifier =
  GroupIdentifier'
    { _giGroupName = Nothing,
      _giGroupId = Nothing
    }

-- | The name of the security group.
giGroupName :: Lens' GroupIdentifier (Maybe Text)
giGroupName = lens _giGroupName (\s a -> s {_giGroupName = a})

-- | The ID of the security group.
giGroupId :: Lens' GroupIdentifier (Maybe Text)
giGroupId = lens _giGroupId (\s a -> s {_giGroupId = a})

instance FromXML GroupIdentifier where
  parseXML x =
    GroupIdentifier'
      <$> (x .@? "groupName") <*> (x .@? "groupId")

instance Hashable GroupIdentifier

instance NFData GroupIdentifier

instance ToQuery GroupIdentifier where
  toQuery GroupIdentifier' {..} =
    mconcat
      [ "GroupName" =: _giGroupName,
        "GroupId" =: _giGroupId
      ]
