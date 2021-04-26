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
-- Module      : Network.AWS.MediaConvert.Types.Eac3LfeFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Eac3LfeFilter
  ( Eac3LfeFilter
      ( ..,
        Eac3LfeFilterDISABLED,
        Eac3LfeFilterENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Applies a 120Hz lowpass filter to the LFE channel prior to encoding.
-- Only valid with 3_2_LFE coding mode.
newtype Eac3LfeFilter = Eac3LfeFilter'
  { fromEac3LfeFilter ::
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

pattern Eac3LfeFilterDISABLED :: Eac3LfeFilter
pattern Eac3LfeFilterDISABLED = Eac3LfeFilter' "DISABLED"

pattern Eac3LfeFilterENABLED :: Eac3LfeFilter
pattern Eac3LfeFilterENABLED = Eac3LfeFilter' "ENABLED"

{-# COMPLETE
  Eac3LfeFilterDISABLED,
  Eac3LfeFilterENABLED,
  Eac3LfeFilter'
  #-}

instance Prelude.FromText Eac3LfeFilter where
  parser = Eac3LfeFilter' Prelude.<$> Prelude.takeText

instance Prelude.ToText Eac3LfeFilter where
  toText (Eac3LfeFilter' x) = x

instance Prelude.Hashable Eac3LfeFilter

instance Prelude.NFData Eac3LfeFilter

instance Prelude.ToByteString Eac3LfeFilter

instance Prelude.ToQuery Eac3LfeFilter

instance Prelude.ToHeader Eac3LfeFilter

instance Prelude.ToJSON Eac3LfeFilter where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Eac3LfeFilter where
  parseJSON = Prelude.parseJSONText "Eac3LfeFilter"
