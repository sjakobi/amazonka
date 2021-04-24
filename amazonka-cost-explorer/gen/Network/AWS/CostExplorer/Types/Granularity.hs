{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CostExplorer.Types.Granularity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.Granularity
  ( Granularity
      ( ..,
        Daily,
        Hourly,
        Monthly
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data Granularity = Granularity' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Daily :: Granularity
pattern Daily = Granularity' "DAILY"

pattern Hourly :: Granularity
pattern Hourly = Granularity' "HOURLY"

pattern Monthly :: Granularity
pattern Monthly = Granularity' "MONTHLY"

{-# COMPLETE
  Daily,
  Hourly,
  Monthly,
  Granularity'
  #-}

instance FromText Granularity where
  parser = (Granularity' . mk) <$> takeText

instance ToText Granularity where
  toText (Granularity' ci) = original ci

instance Hashable Granularity

instance NFData Granularity

instance ToByteString Granularity

instance ToQuery Granularity

instance ToHeader Granularity

instance ToJSON Granularity where
  toJSON = toJSONText
