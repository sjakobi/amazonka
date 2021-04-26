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
-- Module      : Network.AWS.MediaLive.Types.SmoothGroupSparseTrackType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.SmoothGroupSparseTrackType
  ( SmoothGroupSparseTrackType
      ( ..,
        SmoothGroupSparseTrackTypeNONE,
        SmoothGroupSparseTrackTypeSCTE35,
        SmoothGroupSparseTrackTypeSCTE35WITHOUTSEGMENTATION
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Smooth Group Sparse Track Type
newtype SmoothGroupSparseTrackType = SmoothGroupSparseTrackType'
  { fromSmoothGroupSparseTrackType ::
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

pattern SmoothGroupSparseTrackTypeNONE :: SmoothGroupSparseTrackType
pattern SmoothGroupSparseTrackTypeNONE = SmoothGroupSparseTrackType' "NONE"

pattern SmoothGroupSparseTrackTypeSCTE35 :: SmoothGroupSparseTrackType
pattern SmoothGroupSparseTrackTypeSCTE35 = SmoothGroupSparseTrackType' "SCTE_35"

pattern SmoothGroupSparseTrackTypeSCTE35WITHOUTSEGMENTATION :: SmoothGroupSparseTrackType
pattern SmoothGroupSparseTrackTypeSCTE35WITHOUTSEGMENTATION = SmoothGroupSparseTrackType' "SCTE_35_WITHOUT_SEGMENTATION"

{-# COMPLETE
  SmoothGroupSparseTrackTypeNONE,
  SmoothGroupSparseTrackTypeSCTE35,
  SmoothGroupSparseTrackTypeSCTE35WITHOUTSEGMENTATION,
  SmoothGroupSparseTrackType'
  #-}

instance Prelude.FromText SmoothGroupSparseTrackType where
  parser = SmoothGroupSparseTrackType' Prelude.<$> Prelude.takeText

instance Prelude.ToText SmoothGroupSparseTrackType where
  toText (SmoothGroupSparseTrackType' x) = x

instance Prelude.Hashable SmoothGroupSparseTrackType

instance Prelude.NFData SmoothGroupSparseTrackType

instance Prelude.ToByteString SmoothGroupSparseTrackType

instance Prelude.ToQuery SmoothGroupSparseTrackType

instance Prelude.ToHeader SmoothGroupSparseTrackType

instance Prelude.ToJSON SmoothGroupSparseTrackType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON SmoothGroupSparseTrackType where
  parseJSON = Prelude.parseJSONText "SmoothGroupSparseTrackType"
