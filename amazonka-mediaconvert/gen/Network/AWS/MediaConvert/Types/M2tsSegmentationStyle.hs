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
-- Module      : Network.AWS.MediaConvert.Types.M2tsSegmentationStyle
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.M2tsSegmentationStyle
  ( M2tsSegmentationStyle
      ( ..,
        M2tsSegmentationStyleMAINTAINCADENCE,
        M2tsSegmentationStyleRESETCADENCE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The segmentation style parameter controls how segmentation markers are
-- inserted into the transport stream. With avails, it is possible that
-- segments may be truncated, which can influence where future segmentation
-- markers are inserted. When a segmentation style of \"reset_cadence\" is
-- selected and a segment is truncated due to an avail, we will reset the
-- segmentation cadence. This means the subsequent segment will have a
-- duration of of $segmentation_time seconds. When a segmentation style of
-- \"maintain_cadence\" is selected and a segment is truncated due to an
-- avail, we will not reset the segmentation cadence. This means the
-- subsequent segment will likely be truncated as well. However, all
-- segments after that will have a duration of $segmentation_time seconds.
-- Note that EBP lookahead is a slight exception to this rule.
newtype M2tsSegmentationStyle = M2tsSegmentationStyle'
  { fromM2tsSegmentationStyle ::
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

pattern M2tsSegmentationStyleMAINTAINCADENCE :: M2tsSegmentationStyle
pattern M2tsSegmentationStyleMAINTAINCADENCE = M2tsSegmentationStyle' "MAINTAIN_CADENCE"

pattern M2tsSegmentationStyleRESETCADENCE :: M2tsSegmentationStyle
pattern M2tsSegmentationStyleRESETCADENCE = M2tsSegmentationStyle' "RESET_CADENCE"

{-# COMPLETE
  M2tsSegmentationStyleMAINTAINCADENCE,
  M2tsSegmentationStyleRESETCADENCE,
  M2tsSegmentationStyle'
  #-}

instance Prelude.FromText M2tsSegmentationStyle where
  parser = M2tsSegmentationStyle' Prelude.<$> Prelude.takeText

instance Prelude.ToText M2tsSegmentationStyle where
  toText (M2tsSegmentationStyle' x) = x

instance Prelude.Hashable M2tsSegmentationStyle

instance Prelude.NFData M2tsSegmentationStyle

instance Prelude.ToByteString M2tsSegmentationStyle

instance Prelude.ToQuery M2tsSegmentationStyle

instance Prelude.ToHeader M2tsSegmentationStyle

instance Prelude.ToJSON M2tsSegmentationStyle where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON M2tsSegmentationStyle where
  parseJSON = Prelude.parseJSONText "M2tsSegmentationStyle"
