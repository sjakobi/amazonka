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
-- Module      : Network.AWS.LexRuntime.Types.ConfirmationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LexRuntime.Types.ConfirmationStatus
  ( ConfirmationStatus
      ( ..,
        ConfirmationStatusConfirmed,
        ConfirmationStatusDenied,
        ConfirmationStatusNone
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ConfirmationStatus = ConfirmationStatus'
  { fromConfirmationStatus ::
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

pattern ConfirmationStatusConfirmed :: ConfirmationStatus
pattern ConfirmationStatusConfirmed = ConfirmationStatus' "Confirmed"

pattern ConfirmationStatusDenied :: ConfirmationStatus
pattern ConfirmationStatusDenied = ConfirmationStatus' "Denied"

pattern ConfirmationStatusNone :: ConfirmationStatus
pattern ConfirmationStatusNone = ConfirmationStatus' "None"

{-# COMPLETE
  ConfirmationStatusConfirmed,
  ConfirmationStatusDenied,
  ConfirmationStatusNone,
  ConfirmationStatus'
  #-}

instance Prelude.FromText ConfirmationStatus where
  parser = ConfirmationStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ConfirmationStatus where
  toText (ConfirmationStatus' x) = x

instance Prelude.Hashable ConfirmationStatus

instance Prelude.NFData ConfirmationStatus

instance Prelude.ToByteString ConfirmationStatus

instance Prelude.ToQuery ConfirmationStatus

instance Prelude.ToHeader ConfirmationStatus

instance Prelude.ToJSON ConfirmationStatus where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ConfirmationStatus where
  parseJSON = Prelude.parseJSONText "ConfirmationStatus"
