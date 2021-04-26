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
-- Module      : Network.AWS.MediaLive.Types.GlobalConfigurationOutputLockingMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.GlobalConfigurationOutputLockingMode
  ( GlobalConfigurationOutputLockingMode
      ( ..,
        GlobalConfigurationOutputLockingModeEPOCHLOCKING,
        GlobalConfigurationOutputLockingModePIPELINELOCKING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Global Configuration Output Locking Mode
newtype GlobalConfigurationOutputLockingMode = GlobalConfigurationOutputLockingMode'
  { fromGlobalConfigurationOutputLockingMode ::
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

pattern GlobalConfigurationOutputLockingModeEPOCHLOCKING :: GlobalConfigurationOutputLockingMode
pattern GlobalConfigurationOutputLockingModeEPOCHLOCKING = GlobalConfigurationOutputLockingMode' "EPOCH_LOCKING"

pattern GlobalConfigurationOutputLockingModePIPELINELOCKING :: GlobalConfigurationOutputLockingMode
pattern GlobalConfigurationOutputLockingModePIPELINELOCKING = GlobalConfigurationOutputLockingMode' "PIPELINE_LOCKING"

{-# COMPLETE
  GlobalConfigurationOutputLockingModeEPOCHLOCKING,
  GlobalConfigurationOutputLockingModePIPELINELOCKING,
  GlobalConfigurationOutputLockingMode'
  #-}

instance Prelude.FromText GlobalConfigurationOutputLockingMode where
  parser = GlobalConfigurationOutputLockingMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText GlobalConfigurationOutputLockingMode where
  toText (GlobalConfigurationOutputLockingMode' x) = x

instance Prelude.Hashable GlobalConfigurationOutputLockingMode

instance Prelude.NFData GlobalConfigurationOutputLockingMode

instance Prelude.ToByteString GlobalConfigurationOutputLockingMode

instance Prelude.ToQuery GlobalConfigurationOutputLockingMode

instance Prelude.ToHeader GlobalConfigurationOutputLockingMode

instance Prelude.ToJSON GlobalConfigurationOutputLockingMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON GlobalConfigurationOutputLockingMode where
  parseJSON = Prelude.parseJSONText "GlobalConfigurationOutputLockingMode"
