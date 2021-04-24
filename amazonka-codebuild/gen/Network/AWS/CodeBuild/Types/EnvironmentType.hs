{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeBuild.Types.EnvironmentType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.EnvironmentType
  ( EnvironmentType
      ( ..,
        ArmContainer,
        LinuxContainer,
        LinuxGpuContainer,
        WindowsContainer,
        WindowsServer2019Container
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data EnvironmentType = EnvironmentType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ArmContainer :: EnvironmentType
pattern ArmContainer = EnvironmentType' "ARM_CONTAINER"

pattern LinuxContainer :: EnvironmentType
pattern LinuxContainer = EnvironmentType' "LINUX_CONTAINER"

pattern LinuxGpuContainer :: EnvironmentType
pattern LinuxGpuContainer = EnvironmentType' "LINUX_GPU_CONTAINER"

pattern WindowsContainer :: EnvironmentType
pattern WindowsContainer = EnvironmentType' "WINDOWS_CONTAINER"

pattern WindowsServer2019Container :: EnvironmentType
pattern WindowsServer2019Container = EnvironmentType' "WINDOWS_SERVER_2019_CONTAINER"

{-# COMPLETE
  ArmContainer,
  LinuxContainer,
  LinuxGpuContainer,
  WindowsContainer,
  WindowsServer2019Container,
  EnvironmentType'
  #-}

instance FromText EnvironmentType where
  parser = (EnvironmentType' . mk) <$> takeText

instance ToText EnvironmentType where
  toText (EnvironmentType' ci) = original ci

instance Hashable EnvironmentType

instance NFData EnvironmentType

instance ToByteString EnvironmentType

instance ToQuery EnvironmentType

instance ToHeader EnvironmentType

instance ToJSON EnvironmentType where
  toJSON = toJSONText

instance FromJSON EnvironmentType where
  parseJSON = parseJSONText "EnvironmentType"
