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
-- Module      : Network.AWS.MediaConvert.Types.Mp4MoovPlacement
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Mp4MoovPlacement
  ( Mp4MoovPlacement
      ( ..,
        Mp4MoovPlacementNORMAL,
        Mp4MoovPlacementPROGRESSIVEDOWNLOAD
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | If set to PROGRESSIVE_DOWNLOAD, the MOOV atom is relocated to the
-- beginning of the archive as required for progressive downloading.
-- Otherwise it is placed normally at the end.
newtype Mp4MoovPlacement = Mp4MoovPlacement'
  { fromMp4MoovPlacement ::
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

pattern Mp4MoovPlacementNORMAL :: Mp4MoovPlacement
pattern Mp4MoovPlacementNORMAL = Mp4MoovPlacement' "NORMAL"

pattern Mp4MoovPlacementPROGRESSIVEDOWNLOAD :: Mp4MoovPlacement
pattern Mp4MoovPlacementPROGRESSIVEDOWNLOAD = Mp4MoovPlacement' "PROGRESSIVE_DOWNLOAD"

{-# COMPLETE
  Mp4MoovPlacementNORMAL,
  Mp4MoovPlacementPROGRESSIVEDOWNLOAD,
  Mp4MoovPlacement'
  #-}

instance Prelude.FromText Mp4MoovPlacement where
  parser = Mp4MoovPlacement' Prelude.<$> Prelude.takeText

instance Prelude.ToText Mp4MoovPlacement where
  toText (Mp4MoovPlacement' x) = x

instance Prelude.Hashable Mp4MoovPlacement

instance Prelude.NFData Mp4MoovPlacement

instance Prelude.ToByteString Mp4MoovPlacement

instance Prelude.ToQuery Mp4MoovPlacement

instance Prelude.ToHeader Mp4MoovPlacement

instance Prelude.ToJSON Mp4MoovPlacement where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Mp4MoovPlacement where
  parseJSON = Prelude.parseJSONText "Mp4MoovPlacement"
