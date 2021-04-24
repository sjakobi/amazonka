{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GuardDuty.Types.SecurityGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GuardDuty.Types.SecurityGroup where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains information about the security groups associated with the EC2 instance.
--
--
--
-- /See:/ 'securityGroup' smart constructor.
data SecurityGroup = SecurityGroup'
  { _sgGroupName ::
      !(Maybe Text),
    _sgGroupId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SecurityGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgGroupName' - The security group name of the EC2 instance.
--
-- * 'sgGroupId' - The security group ID of the EC2 instance.
securityGroup ::
  SecurityGroup
securityGroup =
  SecurityGroup'
    { _sgGroupName = Nothing,
      _sgGroupId = Nothing
    }

-- | The security group name of the EC2 instance.
sgGroupName :: Lens' SecurityGroup (Maybe Text)
sgGroupName = lens _sgGroupName (\s a -> s {_sgGroupName = a})

-- | The security group ID of the EC2 instance.
sgGroupId :: Lens' SecurityGroup (Maybe Text)
sgGroupId = lens _sgGroupId (\s a -> s {_sgGroupId = a})

instance FromJSON SecurityGroup where
  parseJSON =
    withObject
      "SecurityGroup"
      ( \x ->
          SecurityGroup'
            <$> (x .:? "groupName") <*> (x .:? "groupId")
      )

instance Hashable SecurityGroup

instance NFData SecurityGroup
