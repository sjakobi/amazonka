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
-- Module      : Network.AWS.MediaLive.Types.GlobalConfigurationInputEndAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.GlobalConfigurationInputEndAction
  ( GlobalConfigurationInputEndAction
      ( ..,
        GlobalConfigurationInputEndActionNONE,
        GlobalConfigurationInputEndActionSWITCHANDLOOPINPUTS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Global Configuration Input End Action
newtype GlobalConfigurationInputEndAction = GlobalConfigurationInputEndAction'
  { fromGlobalConfigurationInputEndAction ::
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

pattern GlobalConfigurationInputEndActionNONE :: GlobalConfigurationInputEndAction
pattern GlobalConfigurationInputEndActionNONE = GlobalConfigurationInputEndAction' "NONE"

pattern GlobalConfigurationInputEndActionSWITCHANDLOOPINPUTS :: GlobalConfigurationInputEndAction
pattern GlobalConfigurationInputEndActionSWITCHANDLOOPINPUTS = GlobalConfigurationInputEndAction' "SWITCH_AND_LOOP_INPUTS"

{-# COMPLETE
  GlobalConfigurationInputEndActionNONE,
  GlobalConfigurationInputEndActionSWITCHANDLOOPINPUTS,
  GlobalConfigurationInputEndAction'
  #-}

instance Prelude.FromText GlobalConfigurationInputEndAction where
  parser = GlobalConfigurationInputEndAction' Prelude.<$> Prelude.takeText

instance Prelude.ToText GlobalConfigurationInputEndAction where
  toText (GlobalConfigurationInputEndAction' x) = x

instance Prelude.Hashable GlobalConfigurationInputEndAction

instance Prelude.NFData GlobalConfigurationInputEndAction

instance Prelude.ToByteString GlobalConfigurationInputEndAction

instance Prelude.ToQuery GlobalConfigurationInputEndAction

instance Prelude.ToHeader GlobalConfigurationInputEndAction

instance Prelude.ToJSON GlobalConfigurationInputEndAction where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON GlobalConfigurationInputEndAction where
  parseJSON = Prelude.parseJSONText "GlobalConfigurationInputEndAction"
