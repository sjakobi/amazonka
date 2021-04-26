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
-- Module      : Network.AWS.MediaLive.Types.RtmpCaptionData
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.RtmpCaptionData
  ( RtmpCaptionData
      ( ..,
        RtmpCaptionDataALL,
        RtmpCaptionDataFIELD1608,
        RtmpCaptionDataFIELD1ANDFIELD2608
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Rtmp Caption Data
newtype RtmpCaptionData = RtmpCaptionData'
  { fromRtmpCaptionData ::
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

pattern RtmpCaptionDataALL :: RtmpCaptionData
pattern RtmpCaptionDataALL = RtmpCaptionData' "ALL"

pattern RtmpCaptionDataFIELD1608 :: RtmpCaptionData
pattern RtmpCaptionDataFIELD1608 = RtmpCaptionData' "FIELD1_608"

pattern RtmpCaptionDataFIELD1ANDFIELD2608 :: RtmpCaptionData
pattern RtmpCaptionDataFIELD1ANDFIELD2608 = RtmpCaptionData' "FIELD1_AND_FIELD2_608"

{-# COMPLETE
  RtmpCaptionDataALL,
  RtmpCaptionDataFIELD1608,
  RtmpCaptionDataFIELD1ANDFIELD2608,
  RtmpCaptionData'
  #-}

instance Prelude.FromText RtmpCaptionData where
  parser = RtmpCaptionData' Prelude.<$> Prelude.takeText

instance Prelude.ToText RtmpCaptionData where
  toText (RtmpCaptionData' x) = x

instance Prelude.Hashable RtmpCaptionData

instance Prelude.NFData RtmpCaptionData

instance Prelude.ToByteString RtmpCaptionData

instance Prelude.ToQuery RtmpCaptionData

instance Prelude.ToHeader RtmpCaptionData

instance Prelude.ToJSON RtmpCaptionData where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON RtmpCaptionData where
  parseJSON = Prelude.parseJSONText "RtmpCaptionData"
