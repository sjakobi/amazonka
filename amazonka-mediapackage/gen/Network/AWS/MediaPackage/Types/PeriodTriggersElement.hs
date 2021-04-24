{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaPackage.Types.PeriodTriggersElement
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaPackage.Types.PeriodTriggersElement
  ( PeriodTriggersElement
      ( ..,
        Ads
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data PeriodTriggersElement
  = PeriodTriggersElement'
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

pattern Ads :: PeriodTriggersElement
pattern Ads = PeriodTriggersElement' "ADS"

{-# COMPLETE
  Ads,
  PeriodTriggersElement'
  #-}

instance FromText PeriodTriggersElement where
  parser = (PeriodTriggersElement' . mk) <$> takeText

instance ToText PeriodTriggersElement where
  toText (PeriodTriggersElement' ci) = original ci

instance Hashable PeriodTriggersElement

instance NFData PeriodTriggersElement

instance ToByteString PeriodTriggersElement

instance ToQuery PeriodTriggersElement

instance ToHeader PeriodTriggersElement

instance ToJSON PeriodTriggersElement where
  toJSON = toJSONText

instance FromJSON PeriodTriggersElement where
  parseJSON = parseJSONText "PeriodTriggersElement"
