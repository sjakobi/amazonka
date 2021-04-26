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
-- Module      : Network.AWS.MediaLive.Types.RtmpCacheFullBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.RtmpCacheFullBehavior
  ( RtmpCacheFullBehavior
      ( ..,
        RtmpCacheFullBehaviorDISCONNECTIMMEDIATELY,
        RtmpCacheFullBehaviorWAITFORSERVER
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Rtmp Cache Full Behavior
newtype RtmpCacheFullBehavior = RtmpCacheFullBehavior'
  { fromRtmpCacheFullBehavior ::
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

pattern RtmpCacheFullBehaviorDISCONNECTIMMEDIATELY :: RtmpCacheFullBehavior
pattern RtmpCacheFullBehaviorDISCONNECTIMMEDIATELY = RtmpCacheFullBehavior' "DISCONNECT_IMMEDIATELY"

pattern RtmpCacheFullBehaviorWAITFORSERVER :: RtmpCacheFullBehavior
pattern RtmpCacheFullBehaviorWAITFORSERVER = RtmpCacheFullBehavior' "WAIT_FOR_SERVER"

{-# COMPLETE
  RtmpCacheFullBehaviorDISCONNECTIMMEDIATELY,
  RtmpCacheFullBehaviorWAITFORSERVER,
  RtmpCacheFullBehavior'
  #-}

instance Prelude.FromText RtmpCacheFullBehavior where
  parser = RtmpCacheFullBehavior' Prelude.<$> Prelude.takeText

instance Prelude.ToText RtmpCacheFullBehavior where
  toText (RtmpCacheFullBehavior' x) = x

instance Prelude.Hashable RtmpCacheFullBehavior

instance Prelude.NFData RtmpCacheFullBehavior

instance Prelude.ToByteString RtmpCacheFullBehavior

instance Prelude.ToQuery RtmpCacheFullBehavior

instance Prelude.ToHeader RtmpCacheFullBehavior

instance Prelude.ToJSON RtmpCacheFullBehavior where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON RtmpCacheFullBehavior where
  parseJSON = Prelude.parseJSONText "RtmpCacheFullBehavior"
