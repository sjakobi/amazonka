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
-- Module      : Network.AWS.KMS.Types.KeyState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KMS.Types.KeyState
  ( KeyState
      ( ..,
        KeyStateDisabled,
        KeyStateEnabled,
        KeyStatePendingDeletion,
        KeyStatePendingImport,
        KeyStateUnavailable
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype KeyState = KeyState'
  { fromKeyState ::
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

pattern KeyStateDisabled :: KeyState
pattern KeyStateDisabled = KeyState' "Disabled"

pattern KeyStateEnabled :: KeyState
pattern KeyStateEnabled = KeyState' "Enabled"

pattern KeyStatePendingDeletion :: KeyState
pattern KeyStatePendingDeletion = KeyState' "PendingDeletion"

pattern KeyStatePendingImport :: KeyState
pattern KeyStatePendingImport = KeyState' "PendingImport"

pattern KeyStateUnavailable :: KeyState
pattern KeyStateUnavailable = KeyState' "Unavailable"

{-# COMPLETE
  KeyStateDisabled,
  KeyStateEnabled,
  KeyStatePendingDeletion,
  KeyStatePendingImport,
  KeyStateUnavailable,
  KeyState'
  #-}

instance Prelude.FromText KeyState where
  parser = KeyState' Prelude.<$> Prelude.takeText

instance Prelude.ToText KeyState where
  toText (KeyState' x) = x

instance Prelude.Hashable KeyState

instance Prelude.NFData KeyState

instance Prelude.ToByteString KeyState

instance Prelude.ToQuery KeyState

instance Prelude.ToHeader KeyState

instance Prelude.FromJSON KeyState where
  parseJSON = Prelude.parseJSONText "KeyState"
