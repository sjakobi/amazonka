{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.DvbSdtOutputSdt
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.DvbSdtOutputSdt
  ( DvbSdtOutputSdt
      ( ..,
        SdtFollow,
        SdtFollowIfPresent,
        SdtManual,
        SdtNone
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Dvb Sdt Output Sdt
data DvbSdtOutputSdt = DvbSdtOutputSdt' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern SdtFollow :: DvbSdtOutputSdt
pattern SdtFollow = DvbSdtOutputSdt' "SDT_FOLLOW"

pattern SdtFollowIfPresent :: DvbSdtOutputSdt
pattern SdtFollowIfPresent = DvbSdtOutputSdt' "SDT_FOLLOW_IF_PRESENT"

pattern SdtManual :: DvbSdtOutputSdt
pattern SdtManual = DvbSdtOutputSdt' "SDT_MANUAL"

pattern SdtNone :: DvbSdtOutputSdt
pattern SdtNone = DvbSdtOutputSdt' "SDT_NONE"

{-# COMPLETE
  SdtFollow,
  SdtFollowIfPresent,
  SdtManual,
  SdtNone,
  DvbSdtOutputSdt'
  #-}

instance FromText DvbSdtOutputSdt where
  parser = (DvbSdtOutputSdt' . mk) <$> takeText

instance ToText DvbSdtOutputSdt where
  toText (DvbSdtOutputSdt' ci) = original ci

instance Hashable DvbSdtOutputSdt

instance NFData DvbSdtOutputSdt

instance ToByteString DvbSdtOutputSdt

instance ToQuery DvbSdtOutputSdt

instance ToHeader DvbSdtOutputSdt

instance ToJSON DvbSdtOutputSdt where
  toJSON = toJSONText

instance FromJSON DvbSdtOutputSdt where
  parseJSON = parseJSONText "DvbSdtOutputSdt"
