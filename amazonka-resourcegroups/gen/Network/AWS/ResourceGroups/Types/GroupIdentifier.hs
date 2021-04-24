{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ResourceGroups.Types.GroupIdentifier
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ResourceGroups.Types.GroupIdentifier where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The unique identifiers for a resource group.
--
--
--
-- /See:/ 'groupIdentifier' smart constructor.
data GroupIdentifier = GroupIdentifier'
  { _giGroupName ::
      !(Maybe Text),
    _giGroupARN :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GroupIdentifier' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giGroupName' - The name of the resource group.
--
-- * 'giGroupARN' - The ARN of the resource group.
groupIdentifier ::
  GroupIdentifier
groupIdentifier =
  GroupIdentifier'
    { _giGroupName = Nothing,
      _giGroupARN = Nothing
    }

-- | The name of the resource group.
giGroupName :: Lens' GroupIdentifier (Maybe Text)
giGroupName = lens _giGroupName (\s a -> s {_giGroupName = a})

-- | The ARN of the resource group.
giGroupARN :: Lens' GroupIdentifier (Maybe Text)
giGroupARN = lens _giGroupARN (\s a -> s {_giGroupARN = a})

instance FromJSON GroupIdentifier where
  parseJSON =
    withObject
      "GroupIdentifier"
      ( \x ->
          GroupIdentifier'
            <$> (x .:? "GroupName") <*> (x .:? "GroupArn")
      )

instance Hashable GroupIdentifier

instance NFData GroupIdentifier
