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
-- Module      : Network.AWS.MediaLive.Types.Mpeg2DisplayRatio
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Mpeg2DisplayRatio
  ( Mpeg2DisplayRatio
      ( ..,
        Mpeg2DisplayRatioDISPLAYRATIO16X9,
        Mpeg2DisplayRatioDISPLAYRATIO4X3
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Mpeg2 Display Ratio
newtype Mpeg2DisplayRatio = Mpeg2DisplayRatio'
  { fromMpeg2DisplayRatio ::
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

pattern Mpeg2DisplayRatioDISPLAYRATIO16X9 :: Mpeg2DisplayRatio
pattern Mpeg2DisplayRatioDISPLAYRATIO16X9 = Mpeg2DisplayRatio' "DISPLAYRATIO16X9"

pattern Mpeg2DisplayRatioDISPLAYRATIO4X3 :: Mpeg2DisplayRatio
pattern Mpeg2DisplayRatioDISPLAYRATIO4X3 = Mpeg2DisplayRatio' "DISPLAYRATIO4X3"

{-# COMPLETE
  Mpeg2DisplayRatioDISPLAYRATIO16X9,
  Mpeg2DisplayRatioDISPLAYRATIO4X3,
  Mpeg2DisplayRatio'
  #-}

instance Prelude.FromText Mpeg2DisplayRatio where
  parser = Mpeg2DisplayRatio' Prelude.<$> Prelude.takeText

instance Prelude.ToText Mpeg2DisplayRatio where
  toText (Mpeg2DisplayRatio' x) = x

instance Prelude.Hashable Mpeg2DisplayRatio

instance Prelude.NFData Mpeg2DisplayRatio

instance Prelude.ToByteString Mpeg2DisplayRatio

instance Prelude.ToQuery Mpeg2DisplayRatio

instance Prelude.ToHeader Mpeg2DisplayRatio

instance Prelude.ToJSON Mpeg2DisplayRatio where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Mpeg2DisplayRatio where
  parseJSON = Prelude.parseJSONText "Mpeg2DisplayRatio"
