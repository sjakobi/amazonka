{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Greengrass.Types.LocalVolumeResourceData
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Greengrass.Types.LocalVolumeResourceData where

import Network.AWS.Greengrass.Types.GroupOwnerSetting
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Attributes that define a local volume resource.
--
-- /See:/ 'localVolumeResourceData' smart constructor.
data LocalVolumeResourceData = LocalVolumeResourceData'
  { _lvrdDestinationPath ::
      !(Maybe Text),
    _lvrdSourcePath ::
      !(Maybe Text),
    _lvrdGroupOwnerSetting ::
      !( Maybe
           GroupOwnerSetting
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'LocalVolumeResourceData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lvrdDestinationPath' - The absolute local path of the resource inside the Lambda environment.
--
-- * 'lvrdSourcePath' - The local absolute path of the volume resource on the host. The source path for a volume resource type cannot start with ''/sys''.
--
-- * 'lvrdGroupOwnerSetting' - Allows you to configure additional group privileges for the Lambda process. This field is optional.
localVolumeResourceData ::
  LocalVolumeResourceData
localVolumeResourceData =
  LocalVolumeResourceData'
    { _lvrdDestinationPath =
        Nothing,
      _lvrdSourcePath = Nothing,
      _lvrdGroupOwnerSetting = Nothing
    }

-- | The absolute local path of the resource inside the Lambda environment.
lvrdDestinationPath :: Lens' LocalVolumeResourceData (Maybe Text)
lvrdDestinationPath = lens _lvrdDestinationPath (\s a -> s {_lvrdDestinationPath = a})

-- | The local absolute path of the volume resource on the host. The source path for a volume resource type cannot start with ''/sys''.
lvrdSourcePath :: Lens' LocalVolumeResourceData (Maybe Text)
lvrdSourcePath = lens _lvrdSourcePath (\s a -> s {_lvrdSourcePath = a})

-- | Allows you to configure additional group privileges for the Lambda process. This field is optional.
lvrdGroupOwnerSetting :: Lens' LocalVolumeResourceData (Maybe GroupOwnerSetting)
lvrdGroupOwnerSetting = lens _lvrdGroupOwnerSetting (\s a -> s {_lvrdGroupOwnerSetting = a})

instance FromJSON LocalVolumeResourceData where
  parseJSON =
    withObject
      "LocalVolumeResourceData"
      ( \x ->
          LocalVolumeResourceData'
            <$> (x .:? "DestinationPath")
            <*> (x .:? "SourcePath")
            <*> (x .:? "GroupOwnerSetting")
      )

instance Hashable LocalVolumeResourceData

instance NFData LocalVolumeResourceData

instance ToJSON LocalVolumeResourceData where
  toJSON LocalVolumeResourceData' {..} =
    object
      ( catMaybes
          [ ("DestinationPath" .=) <$> _lvrdDestinationPath,
            ("SourcePath" .=) <$> _lvrdSourcePath,
            ("GroupOwnerSetting" .=) <$> _lvrdGroupOwnerSetting
          ]
      )
