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
-- Module      : Network.AWS.LexRuntime.Types.DialogActionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LexRuntime.Types.DialogActionType
  ( DialogActionType
      ( ..,
        DialogActionTypeClose,
        DialogActionTypeConfirmIntent,
        DialogActionTypeDelegate,
        DialogActionTypeElicitIntent,
        DialogActionTypeElicitSlot
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DialogActionType = DialogActionType'
  { fromDialogActionType ::
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

pattern DialogActionTypeClose :: DialogActionType
pattern DialogActionTypeClose = DialogActionType' "Close"

pattern DialogActionTypeConfirmIntent :: DialogActionType
pattern DialogActionTypeConfirmIntent = DialogActionType' "ConfirmIntent"

pattern DialogActionTypeDelegate :: DialogActionType
pattern DialogActionTypeDelegate = DialogActionType' "Delegate"

pattern DialogActionTypeElicitIntent :: DialogActionType
pattern DialogActionTypeElicitIntent = DialogActionType' "ElicitIntent"

pattern DialogActionTypeElicitSlot :: DialogActionType
pattern DialogActionTypeElicitSlot = DialogActionType' "ElicitSlot"

{-# COMPLETE
  DialogActionTypeClose,
  DialogActionTypeConfirmIntent,
  DialogActionTypeDelegate,
  DialogActionTypeElicitIntent,
  DialogActionTypeElicitSlot,
  DialogActionType'
  #-}

instance Prelude.FromText DialogActionType where
  parser = DialogActionType' Prelude.<$> Prelude.takeText

instance Prelude.ToText DialogActionType where
  toText (DialogActionType' x) = x

instance Prelude.Hashable DialogActionType

instance Prelude.NFData DialogActionType

instance Prelude.ToByteString DialogActionType

instance Prelude.ToQuery DialogActionType

instance Prelude.ToHeader DialogActionType

instance Prelude.ToJSON DialogActionType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DialogActionType where
  parseJSON = Prelude.parseJSONText "DialogActionType"
