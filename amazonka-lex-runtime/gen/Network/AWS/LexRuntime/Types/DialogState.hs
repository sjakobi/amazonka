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
-- Module      : Network.AWS.LexRuntime.Types.DialogState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LexRuntime.Types.DialogState
  ( DialogState
      ( ..,
        DialogStateConfirmIntent,
        DialogStateElicitIntent,
        DialogStateElicitSlot,
        DialogStateFailed,
        DialogStateFulfilled,
        DialogStateReadyForFulfillment
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DialogState = DialogState'
  { fromDialogState ::
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

pattern DialogStateConfirmIntent :: DialogState
pattern DialogStateConfirmIntent = DialogState' "ConfirmIntent"

pattern DialogStateElicitIntent :: DialogState
pattern DialogStateElicitIntent = DialogState' "ElicitIntent"

pattern DialogStateElicitSlot :: DialogState
pattern DialogStateElicitSlot = DialogState' "ElicitSlot"

pattern DialogStateFailed :: DialogState
pattern DialogStateFailed = DialogState' "Failed"

pattern DialogStateFulfilled :: DialogState
pattern DialogStateFulfilled = DialogState' "Fulfilled"

pattern DialogStateReadyForFulfillment :: DialogState
pattern DialogStateReadyForFulfillment = DialogState' "ReadyForFulfillment"

{-# COMPLETE
  DialogStateConfirmIntent,
  DialogStateElicitIntent,
  DialogStateElicitSlot,
  DialogStateFailed,
  DialogStateFulfilled,
  DialogStateReadyForFulfillment,
  DialogState'
  #-}

instance Prelude.FromText DialogState where
  parser = DialogState' Prelude.<$> Prelude.takeText

instance Prelude.ToText DialogState where
  toText (DialogState' x) = x

instance Prelude.Hashable DialogState

instance Prelude.NFData DialogState

instance Prelude.ToByteString DialogState

instance Prelude.ToQuery DialogState

instance Prelude.ToHeader DialogState

instance Prelude.FromJSON DialogState where
  parseJSON = Prelude.parseJSONText "DialogState"
