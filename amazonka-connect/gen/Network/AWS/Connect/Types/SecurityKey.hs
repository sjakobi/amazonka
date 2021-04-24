{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Connect.Types.SecurityKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.SecurityKey where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Configuration information of the security key.
--
--
--
-- /See:/ 'securityKey' smart constructor.
data SecurityKey = SecurityKey'
  { _skKey ::
      !(Maybe Text),
    _skCreationTime :: !(Maybe POSIX),
    _skAssociationId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SecurityKey' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'skKey' - The key of the security key.
--
-- * 'skCreationTime' - When the security key was created.
--
-- * 'skAssociationId' - The existing association identifier that uniquely identifies the resource type and storage config for the given instance ID.
securityKey ::
  SecurityKey
securityKey =
  SecurityKey'
    { _skKey = Nothing,
      _skCreationTime = Nothing,
      _skAssociationId = Nothing
    }

-- | The key of the security key.
skKey :: Lens' SecurityKey (Maybe Text)
skKey = lens _skKey (\s a -> s {_skKey = a})

-- | When the security key was created.
skCreationTime :: Lens' SecurityKey (Maybe UTCTime)
skCreationTime = lens _skCreationTime (\s a -> s {_skCreationTime = a}) . mapping _Time

-- | The existing association identifier that uniquely identifies the resource type and storage config for the given instance ID.
skAssociationId :: Lens' SecurityKey (Maybe Text)
skAssociationId = lens _skAssociationId (\s a -> s {_skAssociationId = a})

instance FromJSON SecurityKey where
  parseJSON =
    withObject
      "SecurityKey"
      ( \x ->
          SecurityKey'
            <$> (x .:? "Key")
            <*> (x .:? "CreationTime")
            <*> (x .:? "AssociationId")
      )

instance Hashable SecurityKey

instance NFData SecurityKey
