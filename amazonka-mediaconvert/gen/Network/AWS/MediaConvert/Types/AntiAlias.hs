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
-- Module      : Network.AWS.MediaConvert.Types.AntiAlias
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.AntiAlias
  ( AntiAlias
      ( ..,
        AntiAliasDISABLED,
        AntiAliasENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The anti-alias filter is automatically applied to all outputs. The
-- service no longer accepts the value DISABLED for AntiAlias. If you
-- specify that in your job, the service will ignore the setting.
newtype AntiAlias = AntiAlias'
  { fromAntiAlias ::
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

pattern AntiAliasDISABLED :: AntiAlias
pattern AntiAliasDISABLED = AntiAlias' "DISABLED"

pattern AntiAliasENABLED :: AntiAlias
pattern AntiAliasENABLED = AntiAlias' "ENABLED"

{-# COMPLETE
  AntiAliasDISABLED,
  AntiAliasENABLED,
  AntiAlias'
  #-}

instance Prelude.FromText AntiAlias where
  parser = AntiAlias' Prelude.<$> Prelude.takeText

instance Prelude.ToText AntiAlias where
  toText (AntiAlias' x) = x

instance Prelude.Hashable AntiAlias

instance Prelude.NFData AntiAlias

instance Prelude.ToByteString AntiAlias

instance Prelude.ToQuery AntiAlias

instance Prelude.ToHeader AntiAlias

instance Prelude.ToJSON AntiAlias where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AntiAlias where
  parseJSON = Prelude.parseJSONText "AntiAlias"
