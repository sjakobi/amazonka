{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.RegistryListItem
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.RegistryListItem where

import Network.AWS.Glue.Types.RegistryStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | A structure containing the details for a registry.
--
--
--
-- /See:/ 'registryListItem' smart constructor.
data RegistryListItem = RegistryListItem'
  { _rliStatus ::
      !(Maybe RegistryStatus),
    _rliUpdatedTime :: !(Maybe Text),
    _rliCreatedTime :: !(Maybe Text),
    _rliRegistryName :: !(Maybe Text),
    _rliDescription :: !(Maybe Text),
    _rliRegistryARN :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RegistryListItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rliStatus' - The status of the registry.
--
-- * 'rliUpdatedTime' - The date the registry was updated.
--
-- * 'rliCreatedTime' - The data the registry was created.
--
-- * 'rliRegistryName' - The name of the registry.
--
-- * 'rliDescription' - A description of the registry.
--
-- * 'rliRegistryARN' - The Amazon Resource Name (ARN) of the registry.
registryListItem ::
  RegistryListItem
registryListItem =
  RegistryListItem'
    { _rliStatus = Nothing,
      _rliUpdatedTime = Nothing,
      _rliCreatedTime = Nothing,
      _rliRegistryName = Nothing,
      _rliDescription = Nothing,
      _rliRegistryARN = Nothing
    }

-- | The status of the registry.
rliStatus :: Lens' RegistryListItem (Maybe RegistryStatus)
rliStatus = lens _rliStatus (\s a -> s {_rliStatus = a})

-- | The date the registry was updated.
rliUpdatedTime :: Lens' RegistryListItem (Maybe Text)
rliUpdatedTime = lens _rliUpdatedTime (\s a -> s {_rliUpdatedTime = a})

-- | The data the registry was created.
rliCreatedTime :: Lens' RegistryListItem (Maybe Text)
rliCreatedTime = lens _rliCreatedTime (\s a -> s {_rliCreatedTime = a})

-- | The name of the registry.
rliRegistryName :: Lens' RegistryListItem (Maybe Text)
rliRegistryName = lens _rliRegistryName (\s a -> s {_rliRegistryName = a})

-- | A description of the registry.
rliDescription :: Lens' RegistryListItem (Maybe Text)
rliDescription = lens _rliDescription (\s a -> s {_rliDescription = a})

-- | The Amazon Resource Name (ARN) of the registry.
rliRegistryARN :: Lens' RegistryListItem (Maybe Text)
rliRegistryARN = lens _rliRegistryARN (\s a -> s {_rliRegistryARN = a})

instance FromJSON RegistryListItem where
  parseJSON =
    withObject
      "RegistryListItem"
      ( \x ->
          RegistryListItem'
            <$> (x .:? "Status")
            <*> (x .:? "UpdatedTime")
            <*> (x .:? "CreatedTime")
            <*> (x .:? "RegistryName")
            <*> (x .:? "Description")
            <*> (x .:? "RegistryArn")
      )

instance Hashable RegistryListItem

instance NFData RegistryListItem
