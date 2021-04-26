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
-- Module      : Network.AWS.MediaConvert.Types.Mpeg2CodecLevel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Mpeg2CodecLevel
  ( Mpeg2CodecLevel
      ( ..,
        Mpeg2CodecLevelAUTO,
        Mpeg2CodecLevelHIGH,
        Mpeg2CodecLevelHIGH1440,
        Mpeg2CodecLevelLOW,
        Mpeg2CodecLevelMAIN
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Use Level (Mpeg2CodecLevel) to set the MPEG-2 level for the video
-- output.
newtype Mpeg2CodecLevel = Mpeg2CodecLevel'
  { fromMpeg2CodecLevel ::
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

pattern Mpeg2CodecLevelAUTO :: Mpeg2CodecLevel
pattern Mpeg2CodecLevelAUTO = Mpeg2CodecLevel' "AUTO"

pattern Mpeg2CodecLevelHIGH :: Mpeg2CodecLevel
pattern Mpeg2CodecLevelHIGH = Mpeg2CodecLevel' "HIGH"

pattern Mpeg2CodecLevelHIGH1440 :: Mpeg2CodecLevel
pattern Mpeg2CodecLevelHIGH1440 = Mpeg2CodecLevel' "HIGH1440"

pattern Mpeg2CodecLevelLOW :: Mpeg2CodecLevel
pattern Mpeg2CodecLevelLOW = Mpeg2CodecLevel' "LOW"

pattern Mpeg2CodecLevelMAIN :: Mpeg2CodecLevel
pattern Mpeg2CodecLevelMAIN = Mpeg2CodecLevel' "MAIN"

{-# COMPLETE
  Mpeg2CodecLevelAUTO,
  Mpeg2CodecLevelHIGH,
  Mpeg2CodecLevelHIGH1440,
  Mpeg2CodecLevelLOW,
  Mpeg2CodecLevelMAIN,
  Mpeg2CodecLevel'
  #-}

instance Prelude.FromText Mpeg2CodecLevel where
  parser = Mpeg2CodecLevel' Prelude.<$> Prelude.takeText

instance Prelude.ToText Mpeg2CodecLevel where
  toText (Mpeg2CodecLevel' x) = x

instance Prelude.Hashable Mpeg2CodecLevel

instance Prelude.NFData Mpeg2CodecLevel

instance Prelude.ToByteString Mpeg2CodecLevel

instance Prelude.ToQuery Mpeg2CodecLevel

instance Prelude.ToHeader Mpeg2CodecLevel

instance Prelude.ToJSON Mpeg2CodecLevel where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Mpeg2CodecLevel where
  parseJSON = Prelude.parseJSONText "Mpeg2CodecLevel"
