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
-- Module      : Network.AWS.MediaPackage.Types.StreamOrder
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaPackage.Types.StreamOrder
  ( StreamOrder
      ( ..,
        StreamOrderORIGINAL,
        StreamOrderVIDEOBITRATEASCENDING,
        StreamOrderVIDEOBITRATEDESCENDING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype StreamOrder = StreamOrder'
  { fromStreamOrder ::
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

pattern StreamOrderORIGINAL :: StreamOrder
pattern StreamOrderORIGINAL = StreamOrder' "ORIGINAL"

pattern StreamOrderVIDEOBITRATEASCENDING :: StreamOrder
pattern StreamOrderVIDEOBITRATEASCENDING = StreamOrder' "VIDEO_BITRATE_ASCENDING"

pattern StreamOrderVIDEOBITRATEDESCENDING :: StreamOrder
pattern StreamOrderVIDEOBITRATEDESCENDING = StreamOrder' "VIDEO_BITRATE_DESCENDING"

{-# COMPLETE
  StreamOrderORIGINAL,
  StreamOrderVIDEOBITRATEASCENDING,
  StreamOrderVIDEOBITRATEDESCENDING,
  StreamOrder'
  #-}

instance Prelude.FromText StreamOrder where
  parser = StreamOrder' Prelude.<$> Prelude.takeText

instance Prelude.ToText StreamOrder where
  toText (StreamOrder' x) = x

instance Prelude.Hashable StreamOrder

instance Prelude.NFData StreamOrder

instance Prelude.ToByteString StreamOrder

instance Prelude.ToQuery StreamOrder

instance Prelude.ToHeader StreamOrder

instance Prelude.ToJSON StreamOrder where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON StreamOrder where
  parseJSON = Prelude.parseJSONText "StreamOrder"
