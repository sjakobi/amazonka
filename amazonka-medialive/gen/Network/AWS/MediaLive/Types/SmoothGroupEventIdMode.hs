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
-- Module      : Network.AWS.MediaLive.Types.SmoothGroupEventIdMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.SmoothGroupEventIdMode
  ( SmoothGroupEventIdMode
      ( ..,
        SmoothGroupEventIdModeNOEVENTID,
        SmoothGroupEventIdModeUSECONFIGURED,
        SmoothGroupEventIdModeUSETIMESTAMP
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Smooth Group Event Id Mode
newtype SmoothGroupEventIdMode = SmoothGroupEventIdMode'
  { fromSmoothGroupEventIdMode ::
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

pattern SmoothGroupEventIdModeNOEVENTID :: SmoothGroupEventIdMode
pattern SmoothGroupEventIdModeNOEVENTID = SmoothGroupEventIdMode' "NO_EVENT_ID"

pattern SmoothGroupEventIdModeUSECONFIGURED :: SmoothGroupEventIdMode
pattern SmoothGroupEventIdModeUSECONFIGURED = SmoothGroupEventIdMode' "USE_CONFIGURED"

pattern SmoothGroupEventIdModeUSETIMESTAMP :: SmoothGroupEventIdMode
pattern SmoothGroupEventIdModeUSETIMESTAMP = SmoothGroupEventIdMode' "USE_TIMESTAMP"

{-# COMPLETE
  SmoothGroupEventIdModeNOEVENTID,
  SmoothGroupEventIdModeUSECONFIGURED,
  SmoothGroupEventIdModeUSETIMESTAMP,
  SmoothGroupEventIdMode'
  #-}

instance Prelude.FromText SmoothGroupEventIdMode where
  parser = SmoothGroupEventIdMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText SmoothGroupEventIdMode where
  toText (SmoothGroupEventIdMode' x) = x

instance Prelude.Hashable SmoothGroupEventIdMode

instance Prelude.NFData SmoothGroupEventIdMode

instance Prelude.ToByteString SmoothGroupEventIdMode

instance Prelude.ToQuery SmoothGroupEventIdMode

instance Prelude.ToHeader SmoothGroupEventIdMode

instance Prelude.ToJSON SmoothGroupEventIdMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON SmoothGroupEventIdMode where
  parseJSON = Prelude.parseJSONText "SmoothGroupEventIdMode"
