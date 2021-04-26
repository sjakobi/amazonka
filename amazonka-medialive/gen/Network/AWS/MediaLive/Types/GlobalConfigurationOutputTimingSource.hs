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
-- Module      : Network.AWS.MediaLive.Types.GlobalConfigurationOutputTimingSource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.GlobalConfigurationOutputTimingSource
  ( GlobalConfigurationOutputTimingSource
      ( ..,
        GlobalConfigurationOutputTimingSourceINPUTCLOCK,
        GlobalConfigurationOutputTimingSourceSYSTEMCLOCK
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Global Configuration Output Timing Source
newtype GlobalConfigurationOutputTimingSource = GlobalConfigurationOutputTimingSource'
  { fromGlobalConfigurationOutputTimingSource ::
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

pattern GlobalConfigurationOutputTimingSourceINPUTCLOCK :: GlobalConfigurationOutputTimingSource
pattern GlobalConfigurationOutputTimingSourceINPUTCLOCK = GlobalConfigurationOutputTimingSource' "INPUT_CLOCK"

pattern GlobalConfigurationOutputTimingSourceSYSTEMCLOCK :: GlobalConfigurationOutputTimingSource
pattern GlobalConfigurationOutputTimingSourceSYSTEMCLOCK = GlobalConfigurationOutputTimingSource' "SYSTEM_CLOCK"

{-# COMPLETE
  GlobalConfigurationOutputTimingSourceINPUTCLOCK,
  GlobalConfigurationOutputTimingSourceSYSTEMCLOCK,
  GlobalConfigurationOutputTimingSource'
  #-}

instance Prelude.FromText GlobalConfigurationOutputTimingSource where
  parser = GlobalConfigurationOutputTimingSource' Prelude.<$> Prelude.takeText

instance Prelude.ToText GlobalConfigurationOutputTimingSource where
  toText (GlobalConfigurationOutputTimingSource' x) = x

instance Prelude.Hashable GlobalConfigurationOutputTimingSource

instance Prelude.NFData GlobalConfigurationOutputTimingSource

instance Prelude.ToByteString GlobalConfigurationOutputTimingSource

instance Prelude.ToQuery GlobalConfigurationOutputTimingSource

instance Prelude.ToHeader GlobalConfigurationOutputTimingSource

instance Prelude.ToJSON GlobalConfigurationOutputTimingSource where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON GlobalConfigurationOutputTimingSource where
  parseJSON = Prelude.parseJSONText "GlobalConfigurationOutputTimingSource"
