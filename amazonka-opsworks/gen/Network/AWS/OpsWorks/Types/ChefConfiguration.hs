{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.OpsWorks.Types.ChefConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.OpsWorks.Types.ChefConfiguration where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the Chef configuration.
--
--
--
-- /See:/ 'chefConfiguration' smart constructor.
data ChefConfiguration = ChefConfiguration'
  { _ccManageBerkshelf ::
      !(Maybe Bool),
    _ccBerkshelfVersion ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ChefConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccManageBerkshelf' - Whether to enable Berkshelf.
--
-- * 'ccBerkshelfVersion' - The Berkshelf version.
chefConfiguration ::
  ChefConfiguration
chefConfiguration =
  ChefConfiguration'
    { _ccManageBerkshelf = Nothing,
      _ccBerkshelfVersion = Nothing
    }

-- | Whether to enable Berkshelf.
ccManageBerkshelf :: Lens' ChefConfiguration (Maybe Bool)
ccManageBerkshelf = lens _ccManageBerkshelf (\s a -> s {_ccManageBerkshelf = a})

-- | The Berkshelf version.
ccBerkshelfVersion :: Lens' ChefConfiguration (Maybe Text)
ccBerkshelfVersion = lens _ccBerkshelfVersion (\s a -> s {_ccBerkshelfVersion = a})

instance FromJSON ChefConfiguration where
  parseJSON =
    withObject
      "ChefConfiguration"
      ( \x ->
          ChefConfiguration'
            <$> (x .:? "ManageBerkshelf")
            <*> (x .:? "BerkshelfVersion")
      )

instance Hashable ChefConfiguration

instance NFData ChefConfiguration

instance ToJSON ChefConfiguration where
  toJSON ChefConfiguration' {..} =
    object
      ( catMaybes
          [ ("ManageBerkshelf" .=) <$> _ccManageBerkshelf,
            ("BerkshelfVersion" .=) <$> _ccBerkshelfVersion
          ]
      )
