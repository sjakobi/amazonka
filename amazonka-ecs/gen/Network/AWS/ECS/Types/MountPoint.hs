{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.MountPoint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.MountPoint where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Details on a volume mount point that is used in a container definition.
--
--
--
-- /See:/ 'mountPoint' smart constructor.
data MountPoint = MountPoint'
  { _mpReadOnly ::
      !(Maybe Bool),
    _mpSourceVolume :: !(Maybe Text),
    _mpContainerPath :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'MountPoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpReadOnly' - If this value is @true@ , the container has read-only access to the volume. If this value is @false@ , then the container can write to the volume. The default value is @false@ .
--
-- * 'mpSourceVolume' - The name of the volume to mount. Must be a volume name referenced in the @name@ parameter of task definition @volume@ .
--
-- * 'mpContainerPath' - The path on the container to mount the host volume at.
mountPoint ::
  MountPoint
mountPoint =
  MountPoint'
    { _mpReadOnly = Nothing,
      _mpSourceVolume = Nothing,
      _mpContainerPath = Nothing
    }

-- | If this value is @true@ , the container has read-only access to the volume. If this value is @false@ , then the container can write to the volume. The default value is @false@ .
mpReadOnly :: Lens' MountPoint (Maybe Bool)
mpReadOnly = lens _mpReadOnly (\s a -> s {_mpReadOnly = a})

-- | The name of the volume to mount. Must be a volume name referenced in the @name@ parameter of task definition @volume@ .
mpSourceVolume :: Lens' MountPoint (Maybe Text)
mpSourceVolume = lens _mpSourceVolume (\s a -> s {_mpSourceVolume = a})

-- | The path on the container to mount the host volume at.
mpContainerPath :: Lens' MountPoint (Maybe Text)
mpContainerPath = lens _mpContainerPath (\s a -> s {_mpContainerPath = a})

instance FromJSON MountPoint where
  parseJSON =
    withObject
      "MountPoint"
      ( \x ->
          MountPoint'
            <$> (x .:? "readOnly")
            <*> (x .:? "sourceVolume")
            <*> (x .:? "containerPath")
      )

instance Hashable MountPoint

instance NFData MountPoint

instance ToJSON MountPoint where
  toJSON MountPoint' {..} =
    object
      ( catMaybes
          [ ("readOnly" .=) <$> _mpReadOnly,
            ("sourceVolume" .=) <$> _mpSourceVolume,
            ("containerPath" .=) <$> _mpContainerPath
          ]
      )
