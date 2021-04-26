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
-- Module      : Network.AWS.MediaPackage.Types.Status
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaPackage.Types.Status
  ( Status
      ( ..,
        StatusFAILED,
        StatusINPROGRESS,
        StatusSUCCEEDED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype Status = Status' {fromStatus :: Prelude.Text}
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern StatusFAILED :: Status
pattern StatusFAILED = Status' "FAILED"

pattern StatusINPROGRESS :: Status
pattern StatusINPROGRESS = Status' "IN_PROGRESS"

pattern StatusSUCCEEDED :: Status
pattern StatusSUCCEEDED = Status' "SUCCEEDED"

{-# COMPLETE
  StatusFAILED,
  StatusINPROGRESS,
  StatusSUCCEEDED,
  Status'
  #-}

instance Prelude.FromText Status where
  parser = Status' Prelude.<$> Prelude.takeText

instance Prelude.ToText Status where
  toText (Status' x) = x

instance Prelude.Hashable Status

instance Prelude.NFData Status

instance Prelude.ToByteString Status

instance Prelude.ToQuery Status

instance Prelude.ToHeader Status

instance Prelude.FromJSON Status where
  parseJSON = Prelude.parseJSONText "Status"
