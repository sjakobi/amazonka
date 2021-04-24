{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.VolumeFrom
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.VolumeFrom where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Details on a data volume from another container in the same task definition.
--
--
--
-- /See:/ 'volumeFrom' smart constructor.
data VolumeFrom = VolumeFrom'
  { _vfReadOnly ::
      !(Maybe Bool),
    _vfSourceContainer :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'VolumeFrom' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vfReadOnly' - If this value is @true@ , the container has read-only access to the volume. If this value is @false@ , then the container can write to the volume. The default value is @false@ .
--
-- * 'vfSourceContainer' - The name of another container within the same task definition from which to mount volumes.
volumeFrom ::
  VolumeFrom
volumeFrom =
  VolumeFrom'
    { _vfReadOnly = Nothing,
      _vfSourceContainer = Nothing
    }

-- | If this value is @true@ , the container has read-only access to the volume. If this value is @false@ , then the container can write to the volume. The default value is @false@ .
vfReadOnly :: Lens' VolumeFrom (Maybe Bool)
vfReadOnly = lens _vfReadOnly (\s a -> s {_vfReadOnly = a})

-- | The name of another container within the same task definition from which to mount volumes.
vfSourceContainer :: Lens' VolumeFrom (Maybe Text)
vfSourceContainer = lens _vfSourceContainer (\s a -> s {_vfSourceContainer = a})

instance FromJSON VolumeFrom where
  parseJSON =
    withObject
      "VolumeFrom"
      ( \x ->
          VolumeFrom'
            <$> (x .:? "readOnly") <*> (x .:? "sourceContainer")
      )

instance Hashable VolumeFrom

instance NFData VolumeFrom

instance ToJSON VolumeFrom where
  toJSON VolumeFrom' {..} =
    object
      ( catMaybes
          [ ("readOnly" .=) <$> _vfReadOnly,
            ("sourceContainer" .=) <$> _vfSourceContainer
          ]
      )
