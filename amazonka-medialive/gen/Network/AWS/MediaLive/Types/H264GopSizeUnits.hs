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
-- Module      : Network.AWS.MediaLive.Types.H264GopSizeUnits
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.H264GopSizeUnits
  ( H264GopSizeUnits
      ( ..,
        H264GopSizeUnitsFRAMES,
        H264GopSizeUnitsSECONDS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | H264 Gop Size Units
newtype H264GopSizeUnits = H264GopSizeUnits'
  { fromH264GopSizeUnits ::
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

pattern H264GopSizeUnitsFRAMES :: H264GopSizeUnits
pattern H264GopSizeUnitsFRAMES = H264GopSizeUnits' "FRAMES"

pattern H264GopSizeUnitsSECONDS :: H264GopSizeUnits
pattern H264GopSizeUnitsSECONDS = H264GopSizeUnits' "SECONDS"

{-# COMPLETE
  H264GopSizeUnitsFRAMES,
  H264GopSizeUnitsSECONDS,
  H264GopSizeUnits'
  #-}

instance Prelude.FromText H264GopSizeUnits where
  parser = H264GopSizeUnits' Prelude.<$> Prelude.takeText

instance Prelude.ToText H264GopSizeUnits where
  toText (H264GopSizeUnits' x) = x

instance Prelude.Hashable H264GopSizeUnits

instance Prelude.NFData H264GopSizeUnits

instance Prelude.ToByteString H264GopSizeUnits

instance Prelude.ToQuery H264GopSizeUnits

instance Prelude.ToHeader H264GopSizeUnits

instance Prelude.ToJSON H264GopSizeUnits where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON H264GopSizeUnits where
  parseJSON = Prelude.parseJSONText "H264GopSizeUnits"
