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
-- Module      : Network.AWS.MediaLive.Types.EbuTtDFillLineGapControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.EbuTtDFillLineGapControl
  ( EbuTtDFillLineGapControl
      ( ..,
        EbuTtDFillLineGapControlDISABLED,
        EbuTtDFillLineGapControlENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Ebu Tt DFill Line Gap Control
newtype EbuTtDFillLineGapControl = EbuTtDFillLineGapControl'
  { fromEbuTtDFillLineGapControl ::
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

pattern EbuTtDFillLineGapControlDISABLED :: EbuTtDFillLineGapControl
pattern EbuTtDFillLineGapControlDISABLED = EbuTtDFillLineGapControl' "DISABLED"

pattern EbuTtDFillLineGapControlENABLED :: EbuTtDFillLineGapControl
pattern EbuTtDFillLineGapControlENABLED = EbuTtDFillLineGapControl' "ENABLED"

{-# COMPLETE
  EbuTtDFillLineGapControlDISABLED,
  EbuTtDFillLineGapControlENABLED,
  EbuTtDFillLineGapControl'
  #-}

instance Prelude.FromText EbuTtDFillLineGapControl where
  parser = EbuTtDFillLineGapControl' Prelude.<$> Prelude.takeText

instance Prelude.ToText EbuTtDFillLineGapControl where
  toText (EbuTtDFillLineGapControl' x) = x

instance Prelude.Hashable EbuTtDFillLineGapControl

instance Prelude.NFData EbuTtDFillLineGapControl

instance Prelude.ToByteString EbuTtDFillLineGapControl

instance Prelude.ToQuery EbuTtDFillLineGapControl

instance Prelude.ToHeader EbuTtDFillLineGapControl

instance Prelude.ToJSON EbuTtDFillLineGapControl where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON EbuTtDFillLineGapControl where
  parseJSON = Prelude.parseJSONText "EbuTtDFillLineGapControl"
