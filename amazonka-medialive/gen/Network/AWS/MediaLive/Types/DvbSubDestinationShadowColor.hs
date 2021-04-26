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
-- Module      : Network.AWS.MediaLive.Types.DvbSubDestinationShadowColor
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.DvbSubDestinationShadowColor
  ( DvbSubDestinationShadowColor
      ( ..,
        DvbSubDestinationShadowColorBLACK,
        DvbSubDestinationShadowColorNONE,
        DvbSubDestinationShadowColorWHITE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Dvb Sub Destination Shadow Color
newtype DvbSubDestinationShadowColor = DvbSubDestinationShadowColor'
  { fromDvbSubDestinationShadowColor ::
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

pattern DvbSubDestinationShadowColorBLACK :: DvbSubDestinationShadowColor
pattern DvbSubDestinationShadowColorBLACK = DvbSubDestinationShadowColor' "BLACK"

pattern DvbSubDestinationShadowColorNONE :: DvbSubDestinationShadowColor
pattern DvbSubDestinationShadowColorNONE = DvbSubDestinationShadowColor' "NONE"

pattern DvbSubDestinationShadowColorWHITE :: DvbSubDestinationShadowColor
pattern DvbSubDestinationShadowColorWHITE = DvbSubDestinationShadowColor' "WHITE"

{-# COMPLETE
  DvbSubDestinationShadowColorBLACK,
  DvbSubDestinationShadowColorNONE,
  DvbSubDestinationShadowColorWHITE,
  DvbSubDestinationShadowColor'
  #-}

instance Prelude.FromText DvbSubDestinationShadowColor where
  parser = DvbSubDestinationShadowColor' Prelude.<$> Prelude.takeText

instance Prelude.ToText DvbSubDestinationShadowColor where
  toText (DvbSubDestinationShadowColor' x) = x

instance Prelude.Hashable DvbSubDestinationShadowColor

instance Prelude.NFData DvbSubDestinationShadowColor

instance Prelude.ToByteString DvbSubDestinationShadowColor

instance Prelude.ToQuery DvbSubDestinationShadowColor

instance Prelude.ToHeader DvbSubDestinationShadowColor

instance Prelude.ToJSON DvbSubDestinationShadowColor where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DvbSubDestinationShadowColor where
  parseJSON = Prelude.parseJSONText "DvbSubDestinationShadowColor"
