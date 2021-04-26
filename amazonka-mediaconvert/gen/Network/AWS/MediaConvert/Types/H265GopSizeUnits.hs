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
-- Module      : Network.AWS.MediaConvert.Types.H265GopSizeUnits
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H265GopSizeUnits
  ( H265GopSizeUnits
      ( ..,
        H265GopSizeUnitsFRAMES,
        H265GopSizeUnitsSECONDS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Indicates if the GOP Size in H265 is specified in frames or seconds. If
-- seconds the system will convert the GOP Size into a frame count at run
-- time.
newtype H265GopSizeUnits = H265GopSizeUnits'
  { fromH265GopSizeUnits ::
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

pattern H265GopSizeUnitsFRAMES :: H265GopSizeUnits
pattern H265GopSizeUnitsFRAMES = H265GopSizeUnits' "FRAMES"

pattern H265GopSizeUnitsSECONDS :: H265GopSizeUnits
pattern H265GopSizeUnitsSECONDS = H265GopSizeUnits' "SECONDS"

{-# COMPLETE
  H265GopSizeUnitsFRAMES,
  H265GopSizeUnitsSECONDS,
  H265GopSizeUnits'
  #-}

instance Prelude.FromText H265GopSizeUnits where
  parser = H265GopSizeUnits' Prelude.<$> Prelude.takeText

instance Prelude.ToText H265GopSizeUnits where
  toText (H265GopSizeUnits' x) = x

instance Prelude.Hashable H265GopSizeUnits

instance Prelude.NFData H265GopSizeUnits

instance Prelude.ToByteString H265GopSizeUnits

instance Prelude.ToQuery H265GopSizeUnits

instance Prelude.ToHeader H265GopSizeUnits

instance Prelude.ToJSON H265GopSizeUnits where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON H265GopSizeUnits where
  parseJSON = Prelude.parseJSONText "H265GopSizeUnits"
