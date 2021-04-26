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
-- Module      : Network.AWS.MediaConvert.Types.F4vMoovPlacement
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.F4vMoovPlacement
  ( F4vMoovPlacement
      ( ..,
        F4vMoovPlacementNORMAL,
        F4vMoovPlacementPROGRESSIVEDOWNLOAD
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | If set to PROGRESSIVE_DOWNLOAD, the MOOV atom is relocated to the
-- beginning of the archive as required for progressive downloading.
-- Otherwise it is placed normally at the end.
newtype F4vMoovPlacement = F4vMoovPlacement'
  { fromF4vMoovPlacement ::
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

pattern F4vMoovPlacementNORMAL :: F4vMoovPlacement
pattern F4vMoovPlacementNORMAL = F4vMoovPlacement' "NORMAL"

pattern F4vMoovPlacementPROGRESSIVEDOWNLOAD :: F4vMoovPlacement
pattern F4vMoovPlacementPROGRESSIVEDOWNLOAD = F4vMoovPlacement' "PROGRESSIVE_DOWNLOAD"

{-# COMPLETE
  F4vMoovPlacementNORMAL,
  F4vMoovPlacementPROGRESSIVEDOWNLOAD,
  F4vMoovPlacement'
  #-}

instance Prelude.FromText F4vMoovPlacement where
  parser = F4vMoovPlacement' Prelude.<$> Prelude.takeText

instance Prelude.ToText F4vMoovPlacement where
  toText (F4vMoovPlacement' x) = x

instance Prelude.Hashable F4vMoovPlacement

instance Prelude.NFData F4vMoovPlacement

instance Prelude.ToByteString F4vMoovPlacement

instance Prelude.ToQuery F4vMoovPlacement

instance Prelude.ToHeader F4vMoovPlacement

instance Prelude.ToJSON F4vMoovPlacement where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON F4vMoovPlacement where
  parseJSON = Prelude.parseJSONText "F4vMoovPlacement"
