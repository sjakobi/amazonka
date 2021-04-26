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
-- Module      : Network.AWS.DAX.Types.SSEStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DAX.Types.SSEStatus
  ( SSEStatus
      ( ..,
        SSEStatusDISABLED,
        SSEStatusDISABLING,
        SSEStatusENABLED,
        SSEStatusENABLING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SSEStatus = SSEStatus'
  { fromSSEStatus ::
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

pattern SSEStatusDISABLED :: SSEStatus
pattern SSEStatusDISABLED = SSEStatus' "DISABLED"

pattern SSEStatusDISABLING :: SSEStatus
pattern SSEStatusDISABLING = SSEStatus' "DISABLING"

pattern SSEStatusENABLED :: SSEStatus
pattern SSEStatusENABLED = SSEStatus' "ENABLED"

pattern SSEStatusENABLING :: SSEStatus
pattern SSEStatusENABLING = SSEStatus' "ENABLING"

{-# COMPLETE
  SSEStatusDISABLED,
  SSEStatusDISABLING,
  SSEStatusENABLED,
  SSEStatusENABLING,
  SSEStatus'
  #-}

instance Prelude.FromText SSEStatus where
  parser = SSEStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText SSEStatus where
  toText (SSEStatus' x) = x

instance Prelude.Hashable SSEStatus

instance Prelude.NFData SSEStatus

instance Prelude.ToByteString SSEStatus

instance Prelude.ToQuery SSEStatus

instance Prelude.ToHeader SSEStatus

instance Prelude.FromJSON SSEStatus where
  parseJSON = Prelude.parseJSONText "SSEStatus"
