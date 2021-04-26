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
-- Module      : Network.AWS.MediaLive.Types.DvbSubDestinationBackgroundColor
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.DvbSubDestinationBackgroundColor
  ( DvbSubDestinationBackgroundColor
      ( ..,
        DvbSubDestinationBackgroundColorBLACK,
        DvbSubDestinationBackgroundColorNONE,
        DvbSubDestinationBackgroundColorWHITE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Dvb Sub Destination Background Color
newtype DvbSubDestinationBackgroundColor = DvbSubDestinationBackgroundColor'
  { fromDvbSubDestinationBackgroundColor ::
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

pattern DvbSubDestinationBackgroundColorBLACK :: DvbSubDestinationBackgroundColor
pattern DvbSubDestinationBackgroundColorBLACK = DvbSubDestinationBackgroundColor' "BLACK"

pattern DvbSubDestinationBackgroundColorNONE :: DvbSubDestinationBackgroundColor
pattern DvbSubDestinationBackgroundColorNONE = DvbSubDestinationBackgroundColor' "NONE"

pattern DvbSubDestinationBackgroundColorWHITE :: DvbSubDestinationBackgroundColor
pattern DvbSubDestinationBackgroundColorWHITE = DvbSubDestinationBackgroundColor' "WHITE"

{-# COMPLETE
  DvbSubDestinationBackgroundColorBLACK,
  DvbSubDestinationBackgroundColorNONE,
  DvbSubDestinationBackgroundColorWHITE,
  DvbSubDestinationBackgroundColor'
  #-}

instance Prelude.FromText DvbSubDestinationBackgroundColor where
  parser = DvbSubDestinationBackgroundColor' Prelude.<$> Prelude.takeText

instance Prelude.ToText DvbSubDestinationBackgroundColor where
  toText (DvbSubDestinationBackgroundColor' x) = x

instance Prelude.Hashable DvbSubDestinationBackgroundColor

instance Prelude.NFData DvbSubDestinationBackgroundColor

instance Prelude.ToByteString DvbSubDestinationBackgroundColor

instance Prelude.ToQuery DvbSubDestinationBackgroundColor

instance Prelude.ToHeader DvbSubDestinationBackgroundColor

instance Prelude.ToJSON DvbSubDestinationBackgroundColor where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DvbSubDestinationBackgroundColor where
  parseJSON = Prelude.parseJSONText "DvbSubDestinationBackgroundColor"
