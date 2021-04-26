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
-- Module      : Network.AWS.DeviceFarm.Types.InteractionMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.InteractionMode
  ( InteractionMode
      ( ..,
        InteractionModeINTERACTIVE,
        InteractionModeNOVIDEO,
        InteractionModeVIDEOONLY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype InteractionMode = InteractionMode'
  { fromInteractionMode ::
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

pattern InteractionModeINTERACTIVE :: InteractionMode
pattern InteractionModeINTERACTIVE = InteractionMode' "INTERACTIVE"

pattern InteractionModeNOVIDEO :: InteractionMode
pattern InteractionModeNOVIDEO = InteractionMode' "NO_VIDEO"

pattern InteractionModeVIDEOONLY :: InteractionMode
pattern InteractionModeVIDEOONLY = InteractionMode' "VIDEO_ONLY"

{-# COMPLETE
  InteractionModeINTERACTIVE,
  InteractionModeNOVIDEO,
  InteractionModeVIDEOONLY,
  InteractionMode'
  #-}

instance Prelude.FromText InteractionMode where
  parser = InteractionMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText InteractionMode where
  toText (InteractionMode' x) = x

instance Prelude.Hashable InteractionMode

instance Prelude.NFData InteractionMode

instance Prelude.ToByteString InteractionMode

instance Prelude.ToQuery InteractionMode

instance Prelude.ToHeader InteractionMode

instance Prelude.ToJSON InteractionMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON InteractionMode where
  parseJSON = Prelude.parseJSONText "InteractionMode"
