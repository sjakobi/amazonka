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
-- Module      : Network.AWS.MediaLive.Types.Mpeg2ColorSpace
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Mpeg2ColorSpace
  ( Mpeg2ColorSpace
      ( ..,
        Mpeg2ColorSpaceAUTO,
        Mpeg2ColorSpacePASSTHROUGH
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Mpeg2 Color Space
newtype Mpeg2ColorSpace = Mpeg2ColorSpace'
  { fromMpeg2ColorSpace ::
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

pattern Mpeg2ColorSpaceAUTO :: Mpeg2ColorSpace
pattern Mpeg2ColorSpaceAUTO = Mpeg2ColorSpace' "AUTO"

pattern Mpeg2ColorSpacePASSTHROUGH :: Mpeg2ColorSpace
pattern Mpeg2ColorSpacePASSTHROUGH = Mpeg2ColorSpace' "PASSTHROUGH"

{-# COMPLETE
  Mpeg2ColorSpaceAUTO,
  Mpeg2ColorSpacePASSTHROUGH,
  Mpeg2ColorSpace'
  #-}

instance Prelude.FromText Mpeg2ColorSpace where
  parser = Mpeg2ColorSpace' Prelude.<$> Prelude.takeText

instance Prelude.ToText Mpeg2ColorSpace where
  toText (Mpeg2ColorSpace' x) = x

instance Prelude.Hashable Mpeg2ColorSpace

instance Prelude.NFData Mpeg2ColorSpace

instance Prelude.ToByteString Mpeg2ColorSpace

instance Prelude.ToQuery Mpeg2ColorSpace

instance Prelude.ToHeader Mpeg2ColorSpace

instance Prelude.ToJSON Mpeg2ColorSpace where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Mpeg2ColorSpace where
  parseJSON = Prelude.parseJSONText "Mpeg2ColorSpace"
