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
-- Module      : Network.AWS.MediaLive.Types.InputFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.InputFilter
  ( InputFilter
      ( ..,
        InputFilterAUTO,
        InputFilterDISABLED,
        InputFilterFORCED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Input Filter
newtype InputFilter = InputFilter'
  { fromInputFilter ::
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

pattern InputFilterAUTO :: InputFilter
pattern InputFilterAUTO = InputFilter' "AUTO"

pattern InputFilterDISABLED :: InputFilter
pattern InputFilterDISABLED = InputFilter' "DISABLED"

pattern InputFilterFORCED :: InputFilter
pattern InputFilterFORCED = InputFilter' "FORCED"

{-# COMPLETE
  InputFilterAUTO,
  InputFilterDISABLED,
  InputFilterFORCED,
  InputFilter'
  #-}

instance Prelude.FromText InputFilter where
  parser = InputFilter' Prelude.<$> Prelude.takeText

instance Prelude.ToText InputFilter where
  toText (InputFilter' x) = x

instance Prelude.Hashable InputFilter

instance Prelude.NFData InputFilter

instance Prelude.ToByteString InputFilter

instance Prelude.ToQuery InputFilter

instance Prelude.ToHeader InputFilter

instance Prelude.ToJSON InputFilter where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON InputFilter where
  parseJSON = Prelude.parseJSONText "InputFilter"
