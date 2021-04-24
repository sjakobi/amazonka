{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.OpsWorks.Types.OperatingSystemConfigurationManager
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.OpsWorks.Types.OperatingSystemConfigurationManager where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | A block that contains information about the configuration manager (Chef) and the versions of the configuration manager that are supported for an operating system.
--
--
--
-- /See:/ 'operatingSystemConfigurationManager' smart constructor.
data OperatingSystemConfigurationManager = OperatingSystemConfigurationManager'
  { _oscmVersion ::
      !( Maybe
           Text
       ),
    _oscmName ::
      !( Maybe
           Text
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

-- | Creates a value of 'OperatingSystemConfigurationManager' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oscmVersion' - The versions of the configuration manager that are supported by an operating system.
--
-- * 'oscmName' - The name of the configuration manager, which is Chef.
operatingSystemConfigurationManager ::
  OperatingSystemConfigurationManager
operatingSystemConfigurationManager =
  OperatingSystemConfigurationManager'
    { _oscmVersion =
        Nothing,
      _oscmName = Nothing
    }

-- | The versions of the configuration manager that are supported by an operating system.
oscmVersion :: Lens' OperatingSystemConfigurationManager (Maybe Text)
oscmVersion = lens _oscmVersion (\s a -> s {_oscmVersion = a})

-- | The name of the configuration manager, which is Chef.
oscmName :: Lens' OperatingSystemConfigurationManager (Maybe Text)
oscmName = lens _oscmName (\s a -> s {_oscmName = a})

instance FromJSON OperatingSystemConfigurationManager where
  parseJSON =
    withObject
      "OperatingSystemConfigurationManager"
      ( \x ->
          OperatingSystemConfigurationManager'
            <$> (x .:? "Version") <*> (x .:? "Name")
      )

instance Hashable OperatingSystemConfigurationManager

instance NFData OperatingSystemConfigurationManager
