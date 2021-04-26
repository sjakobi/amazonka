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
-- Module      : Network.AWS.MediaLive.Types.H265LookAheadRateControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.H265LookAheadRateControl
  ( H265LookAheadRateControl
      ( ..,
        H265LookAheadRateControlHIGH,
        H265LookAheadRateControlLOW,
        H265LookAheadRateControlMEDIUM
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | H265 Look Ahead Rate Control
newtype H265LookAheadRateControl = H265LookAheadRateControl'
  { fromH265LookAheadRateControl ::
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

pattern H265LookAheadRateControlHIGH :: H265LookAheadRateControl
pattern H265LookAheadRateControlHIGH = H265LookAheadRateControl' "HIGH"

pattern H265LookAheadRateControlLOW :: H265LookAheadRateControl
pattern H265LookAheadRateControlLOW = H265LookAheadRateControl' "LOW"

pattern H265LookAheadRateControlMEDIUM :: H265LookAheadRateControl
pattern H265LookAheadRateControlMEDIUM = H265LookAheadRateControl' "MEDIUM"

{-# COMPLETE
  H265LookAheadRateControlHIGH,
  H265LookAheadRateControlLOW,
  H265LookAheadRateControlMEDIUM,
  H265LookAheadRateControl'
  #-}

instance Prelude.FromText H265LookAheadRateControl where
  parser = H265LookAheadRateControl' Prelude.<$> Prelude.takeText

instance Prelude.ToText H265LookAheadRateControl where
  toText (H265LookAheadRateControl' x) = x

instance Prelude.Hashable H265LookAheadRateControl

instance Prelude.NFData H265LookAheadRateControl

instance Prelude.ToByteString H265LookAheadRateControl

instance Prelude.ToQuery H265LookAheadRateControl

instance Prelude.ToHeader H265LookAheadRateControl

instance Prelude.ToJSON H265LookAheadRateControl where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON H265LookAheadRateControl where
  parseJSON = Prelude.parseJSONText "H265LookAheadRateControl"
