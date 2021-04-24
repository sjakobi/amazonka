{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Budgets.Types.TimeUnit
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Budgets.Types.TimeUnit
  ( TimeUnit
      ( ..,
        Annually,
        Daily,
        Monthly,
        Quarterly
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | The time unit of the budget, such as MONTHLY or QUARTERLY.
data TimeUnit = TimeUnit' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Annually :: TimeUnit
pattern Annually = TimeUnit' "ANNUALLY"

pattern Daily :: TimeUnit
pattern Daily = TimeUnit' "DAILY"

pattern Monthly :: TimeUnit
pattern Monthly = TimeUnit' "MONTHLY"

pattern Quarterly :: TimeUnit
pattern Quarterly = TimeUnit' "QUARTERLY"

{-# COMPLETE
  Annually,
  Daily,
  Monthly,
  Quarterly,
  TimeUnit'
  #-}

instance FromText TimeUnit where
  parser = (TimeUnit' . mk) <$> takeText

instance ToText TimeUnit where
  toText (TimeUnit' ci) = original ci

instance Hashable TimeUnit

instance NFData TimeUnit

instance ToByteString TimeUnit

instance ToQuery TimeUnit

instance ToHeader TimeUnit

instance ToJSON TimeUnit where
  toJSON = toJSONText

instance FromJSON TimeUnit where
  parseJSON = parseJSONText "TimeUnit"
