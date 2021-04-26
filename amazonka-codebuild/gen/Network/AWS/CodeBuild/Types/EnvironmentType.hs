{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
        EnvironmentTypeARMCONTAINER,
        EnvironmentTypeLINUXCONTAINER,
        EnvironmentTypeLINUXGPUCONTAINER,
        EnvironmentTypeWINDOWSCONTAINER,
        EnvironmentTypeWINDOWSSERVER2019CONTAINER
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype EnvironmentType = EnvironmentType'
  { fromEnvironmentType ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern EnvironmentTypeARMCONTAINER :: EnvironmentType
pattern EnvironmentTypeARMCONTAINER = EnvironmentType' "ARM_CONTAINER"

pattern EnvironmentTypeLINUXCONTAINER :: EnvironmentType
pattern EnvironmentTypeLINUXCONTAINER = EnvironmentType' "LINUX_CONTAINER"

pattern EnvironmentTypeLINUXGPUCONTAINER :: EnvironmentType
pattern EnvironmentTypeLINUXGPUCONTAINER = EnvironmentType' "LINUX_GPU_CONTAINER"

pattern EnvironmentTypeWINDOWSCONTAINER :: EnvironmentType
pattern EnvironmentTypeWINDOWSCONTAINER = EnvironmentType' "WINDOWS_CONTAINER"

pattern EnvironmentTypeWINDOWSSERVER2019CONTAINER :: EnvironmentType
pattern EnvironmentTypeWINDOWSSERVER2019CONTAINER = EnvironmentType' "WINDOWS_SERVER_2019_CONTAINER"

{-# COMPLETE
  EnvironmentTypeARMCONTAINER,
  EnvironmentTypeLINUXCONTAINER,
  EnvironmentTypeLINUXGPUCONTAINER,
  EnvironmentTypeWINDOWSCONTAINER,
  EnvironmentTypeWINDOWSSERVER2019CONTAINER,
  EnvironmentType'
  #-}

instance Prelude.FromText EnvironmentType where
  parser = EnvironmentType' Prelude.<$> Prelude.takeText

instance Prelude.ToText EnvironmentType where
  toText (EnvironmentType' x) = x

instance Prelude.Hashable EnvironmentType

instance Prelude.NFData EnvironmentType

instance Prelude.ToByteString EnvironmentType

instance Prelude.ToQuery EnvironmentType

instance Prelude.ToHeader EnvironmentType

instance Prelude.ToJSON EnvironmentType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON EnvironmentType where
  parseJSON = Prelude.parseJSONText "EnvironmentType"
