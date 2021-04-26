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
-- Module      : Network.AWS.MediaLive.Types.H265FlickerAq
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.H265FlickerAq
  ( H265FlickerAq
      ( ..,
        H265FlickerAqDISABLED,
        H265FlickerAqENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | H265 Flicker Aq
newtype H265FlickerAq = H265FlickerAq'
  { fromH265FlickerAq ::
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

pattern H265FlickerAqDISABLED :: H265FlickerAq
pattern H265FlickerAqDISABLED = H265FlickerAq' "DISABLED"

pattern H265FlickerAqENABLED :: H265FlickerAq
pattern H265FlickerAqENABLED = H265FlickerAq' "ENABLED"

{-# COMPLETE
  H265FlickerAqDISABLED,
  H265FlickerAqENABLED,
  H265FlickerAq'
  #-}

instance Prelude.FromText H265FlickerAq where
  parser = H265FlickerAq' Prelude.<$> Prelude.takeText

instance Prelude.ToText H265FlickerAq where
  toText (H265FlickerAq' x) = x

instance Prelude.Hashable H265FlickerAq

instance Prelude.NFData H265FlickerAq

instance Prelude.ToByteString H265FlickerAq

instance Prelude.ToQuery H265FlickerAq

instance Prelude.ToHeader H265FlickerAq

instance Prelude.ToJSON H265FlickerAq where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON H265FlickerAq where
  parseJSON = Prelude.parseJSONText "H265FlickerAq"
