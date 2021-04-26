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
-- Module      : Network.AWS.MediaLive.Types.H265Tier
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.H265Tier
  ( H265Tier
      ( ..,
        H265TierHIGH,
        H265TierMAIN
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | H265 Tier
newtype H265Tier = H265Tier'
  { fromH265Tier ::
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

pattern H265TierHIGH :: H265Tier
pattern H265TierHIGH = H265Tier' "HIGH"

pattern H265TierMAIN :: H265Tier
pattern H265TierMAIN = H265Tier' "MAIN"

{-# COMPLETE
  H265TierHIGH,
  H265TierMAIN,
  H265Tier'
  #-}

instance Prelude.FromText H265Tier where
  parser = H265Tier' Prelude.<$> Prelude.takeText

instance Prelude.ToText H265Tier where
  toText (H265Tier' x) = x

instance Prelude.Hashable H265Tier

instance Prelude.NFData H265Tier

instance Prelude.ToByteString H265Tier

instance Prelude.ToQuery H265Tier

instance Prelude.ToHeader H265Tier

instance Prelude.ToJSON H265Tier where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON H265Tier where
  parseJSON = Prelude.parseJSONText "H265Tier"
