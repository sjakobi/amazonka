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
-- Module      : Network.AWS.MediaLive.Types.InputCodec
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.InputCodec
  ( InputCodec
      ( ..,
        InputCodecAVC,
        InputCodecHEVC,
        InputCodecMPEG2
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | codec in increasing order of complexity
newtype InputCodec = InputCodec'
  { fromInputCodec ::
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

pattern InputCodecAVC :: InputCodec
pattern InputCodecAVC = InputCodec' "AVC"

pattern InputCodecHEVC :: InputCodec
pattern InputCodecHEVC = InputCodec' "HEVC"

pattern InputCodecMPEG2 :: InputCodec
pattern InputCodecMPEG2 = InputCodec' "MPEG2"

{-# COMPLETE
  InputCodecAVC,
  InputCodecHEVC,
  InputCodecMPEG2,
  InputCodec'
  #-}

instance Prelude.FromText InputCodec where
  parser = InputCodec' Prelude.<$> Prelude.takeText

instance Prelude.ToText InputCodec where
  toText (InputCodec' x) = x

instance Prelude.Hashable InputCodec

instance Prelude.NFData InputCodec

instance Prelude.ToByteString InputCodec

instance Prelude.ToQuery InputCodec

instance Prelude.ToHeader InputCodec

instance Prelude.ToJSON InputCodec where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON InputCodec where
  parseJSON = Prelude.parseJSONText "InputCodec"
