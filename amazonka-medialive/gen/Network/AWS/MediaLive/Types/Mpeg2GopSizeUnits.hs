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
-- Module      : Network.AWS.MediaLive.Types.Mpeg2GopSizeUnits
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Mpeg2GopSizeUnits
  ( Mpeg2GopSizeUnits
      ( ..,
        Mpeg2GopSizeUnitsFRAMES,
        Mpeg2GopSizeUnitsSECONDS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Mpeg2 Gop Size Units
newtype Mpeg2GopSizeUnits = Mpeg2GopSizeUnits'
  { fromMpeg2GopSizeUnits ::
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

pattern Mpeg2GopSizeUnitsFRAMES :: Mpeg2GopSizeUnits
pattern Mpeg2GopSizeUnitsFRAMES = Mpeg2GopSizeUnits' "FRAMES"

pattern Mpeg2GopSizeUnitsSECONDS :: Mpeg2GopSizeUnits
pattern Mpeg2GopSizeUnitsSECONDS = Mpeg2GopSizeUnits' "SECONDS"

{-# COMPLETE
  Mpeg2GopSizeUnitsFRAMES,
  Mpeg2GopSizeUnitsSECONDS,
  Mpeg2GopSizeUnits'
  #-}

instance Prelude.FromText Mpeg2GopSizeUnits where
  parser = Mpeg2GopSizeUnits' Prelude.<$> Prelude.takeText

instance Prelude.ToText Mpeg2GopSizeUnits where
  toText (Mpeg2GopSizeUnits' x) = x

instance Prelude.Hashable Mpeg2GopSizeUnits

instance Prelude.NFData Mpeg2GopSizeUnits

instance Prelude.ToByteString Mpeg2GopSizeUnits

instance Prelude.ToQuery Mpeg2GopSizeUnits

instance Prelude.ToHeader Mpeg2GopSizeUnits

instance Prelude.ToJSON Mpeg2GopSizeUnits where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Mpeg2GopSizeUnits where
  parseJSON = Prelude.parseJSONText "Mpeg2GopSizeUnits"
