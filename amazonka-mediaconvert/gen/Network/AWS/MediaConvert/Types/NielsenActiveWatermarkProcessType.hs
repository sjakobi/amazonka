{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.NielsenActiveWatermarkProcessType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.NielsenActiveWatermarkProcessType
  ( NielsenActiveWatermarkProcessType
      ( ..,
        Cbet,
        NAES2AndNw,
        NAES2AndNwAndCbet
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Choose the type of Nielsen watermarks that you want in your outputs. When you choose NAES 2 and NW (NAES2_AND_NW), you must provide a value for the setting SID (sourceId). When you choose CBET (CBET), you must provide a value for the setting CSID (cbetSourceId). When you choose NAES 2, NW, and CBET (NAES2_AND_NW_AND_CBET), you must provide values for both of these settings.
data NielsenActiveWatermarkProcessType
  = NielsenActiveWatermarkProcessType'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Cbet :: NielsenActiveWatermarkProcessType
pattern Cbet = NielsenActiveWatermarkProcessType' "CBET"

pattern NAES2AndNw :: NielsenActiveWatermarkProcessType
pattern NAES2AndNw = NielsenActiveWatermarkProcessType' "NAES2_AND_NW"

pattern NAES2AndNwAndCbet :: NielsenActiveWatermarkProcessType
pattern NAES2AndNwAndCbet = NielsenActiveWatermarkProcessType' "NAES2_AND_NW_AND_CBET"

{-# COMPLETE
  Cbet,
  NAES2AndNw,
  NAES2AndNwAndCbet,
  NielsenActiveWatermarkProcessType'
  #-}

instance FromText NielsenActiveWatermarkProcessType where
  parser = (NielsenActiveWatermarkProcessType' . mk) <$> takeText

instance ToText NielsenActiveWatermarkProcessType where
  toText (NielsenActiveWatermarkProcessType' ci) = original ci

instance Hashable NielsenActiveWatermarkProcessType

instance NFData NielsenActiveWatermarkProcessType

instance ToByteString NielsenActiveWatermarkProcessType

instance ToQuery NielsenActiveWatermarkProcessType

instance ToHeader NielsenActiveWatermarkProcessType

instance ToJSON NielsenActiveWatermarkProcessType where
  toJSON = toJSONText

instance FromJSON NielsenActiveWatermarkProcessType where
  parseJSON = parseJSONText "NielsenActiveWatermarkProcessType"
