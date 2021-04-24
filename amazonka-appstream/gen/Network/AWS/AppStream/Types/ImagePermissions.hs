{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppStream.Types.ImagePermissions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppStream.Types.ImagePermissions where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the permissions for an image.
--
--
--
-- /See:/ 'imagePermissions' smart constructor.
data ImagePermissions = ImagePermissions'
  { _ipAllowImageBuilder ::
      !(Maybe Bool),
    _ipAllowFleet :: !(Maybe Bool)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ImagePermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ipAllowImageBuilder' - Indicates whether the image can be used for an image builder.
--
-- * 'ipAllowFleet' - Indicates whether the image can be used for a fleet.
imagePermissions ::
  ImagePermissions
imagePermissions =
  ImagePermissions'
    { _ipAllowImageBuilder = Nothing,
      _ipAllowFleet = Nothing
    }

-- | Indicates whether the image can be used for an image builder.
ipAllowImageBuilder :: Lens' ImagePermissions (Maybe Bool)
ipAllowImageBuilder = lens _ipAllowImageBuilder (\s a -> s {_ipAllowImageBuilder = a})

-- | Indicates whether the image can be used for a fleet.
ipAllowFleet :: Lens' ImagePermissions (Maybe Bool)
ipAllowFleet = lens _ipAllowFleet (\s a -> s {_ipAllowFleet = a})

instance FromJSON ImagePermissions where
  parseJSON =
    withObject
      "ImagePermissions"
      ( \x ->
          ImagePermissions'
            <$> (x .:? "allowImageBuilder") <*> (x .:? "allowFleet")
      )

instance Hashable ImagePermissions

instance NFData ImagePermissions

instance ToJSON ImagePermissions where
  toJSON ImagePermissions' {..} =
    object
      ( catMaybes
          [ ("allowImageBuilder" .=) <$> _ipAllowImageBuilder,
            ("allowFleet" .=) <$> _ipAllowFleet
          ]
      )
