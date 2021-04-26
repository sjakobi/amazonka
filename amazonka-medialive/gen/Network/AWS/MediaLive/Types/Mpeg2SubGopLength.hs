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
-- Module      : Network.AWS.MediaLive.Types.Mpeg2SubGopLength
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Mpeg2SubGopLength
  ( Mpeg2SubGopLength
      ( ..,
        Mpeg2SubGopLengthDYNAMIC,
        Mpeg2SubGopLengthFIXED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Mpeg2 Sub Gop Length
newtype Mpeg2SubGopLength = Mpeg2SubGopLength'
  { fromMpeg2SubGopLength ::
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

pattern Mpeg2SubGopLengthDYNAMIC :: Mpeg2SubGopLength
pattern Mpeg2SubGopLengthDYNAMIC = Mpeg2SubGopLength' "DYNAMIC"

pattern Mpeg2SubGopLengthFIXED :: Mpeg2SubGopLength
pattern Mpeg2SubGopLengthFIXED = Mpeg2SubGopLength' "FIXED"

{-# COMPLETE
  Mpeg2SubGopLengthDYNAMIC,
  Mpeg2SubGopLengthFIXED,
  Mpeg2SubGopLength'
  #-}

instance Prelude.FromText Mpeg2SubGopLength where
  parser = Mpeg2SubGopLength' Prelude.<$> Prelude.takeText

instance Prelude.ToText Mpeg2SubGopLength where
  toText (Mpeg2SubGopLength' x) = x

instance Prelude.Hashable Mpeg2SubGopLength

instance Prelude.NFData Mpeg2SubGopLength

instance Prelude.ToByteString Mpeg2SubGopLength

instance Prelude.ToQuery Mpeg2SubGopLength

instance Prelude.ToHeader Mpeg2SubGopLength

instance Prelude.ToJSON Mpeg2SubGopLength where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Mpeg2SubGopLength where
  parseJSON = Prelude.parseJSONText "Mpeg2SubGopLength"
