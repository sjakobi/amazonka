{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Greengrass.Types.LocalDeviceResourceData
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Greengrass.Types.LocalDeviceResourceData where

import Network.AWS.Greengrass.Types.GroupOwnerSetting
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Attributes that define a local device resource.
--
-- /See:/ 'localDeviceResourceData' smart constructor.
data LocalDeviceResourceData = LocalDeviceResourceData'
  { _ldrdSourcePath ::
      !(Maybe Text),
    _ldrdGroupOwnerSetting ::
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

-- | Creates a value of 'LocalDeviceResourceData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldrdSourcePath' - The local absolute path of the device resource. The source path for a device resource can refer only to a character device or block device under ''/dev''.
--
-- * 'ldrdGroupOwnerSetting' - Group/owner related settings for local resources.
localDeviceResourceData ::
  LocalDeviceResourceData
localDeviceResourceData =
  LocalDeviceResourceData'
    { _ldrdSourcePath = Nothing,
      _ldrdGroupOwnerSetting = Nothing
    }

-- | The local absolute path of the device resource. The source path for a device resource can refer only to a character device or block device under ''/dev''.
ldrdSourcePath :: Lens' LocalDeviceResourceData (Maybe Text)
ldrdSourcePath = lens _ldrdSourcePath (\s a -> s {_ldrdSourcePath = a})

-- | Group/owner related settings for local resources.
ldrdGroupOwnerSetting :: Lens' LocalDeviceResourceData (Maybe GroupOwnerSetting)
ldrdGroupOwnerSetting = lens _ldrdGroupOwnerSetting (\s a -> s {_ldrdGroupOwnerSetting = a})

instance FromJSON LocalDeviceResourceData where
  parseJSON =
    withObject
      "LocalDeviceResourceData"
      ( \x ->
          LocalDeviceResourceData'
            <$> (x .:? "SourcePath") <*> (x .:? "GroupOwnerSetting")
      )

instance Hashable LocalDeviceResourceData

instance NFData LocalDeviceResourceData

instance ToJSON LocalDeviceResourceData where
  toJSON LocalDeviceResourceData' {..} =
    object
      ( catMaybes
          [ ("SourcePath" .=) <$> _ldrdSourcePath,
            ("GroupOwnerSetting" .=) <$> _ldrdGroupOwnerSetting
          ]
      )
