{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Redshift.Types.UsageLimitPeriod
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.UsageLimitPeriod
  ( UsageLimitPeriod
      ( ..,
        Daily,
        Monthly,
        Weekly
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude
import Network.AWS.Redshift.Internal

data UsageLimitPeriod = UsageLimitPeriod' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Daily :: UsageLimitPeriod
pattern Daily = UsageLimitPeriod' "daily"

pattern Monthly :: UsageLimitPeriod
pattern Monthly = UsageLimitPeriod' "monthly"

pattern Weekly :: UsageLimitPeriod
pattern Weekly = UsageLimitPeriod' "weekly"

{-# COMPLETE
  Daily,
  Monthly,
  Weekly,
  UsageLimitPeriod'
  #-}

instance FromText UsageLimitPeriod where
  parser = (UsageLimitPeriod' . mk) <$> takeText

instance ToText UsageLimitPeriod where
  toText (UsageLimitPeriod' ci) = original ci

instance Hashable UsageLimitPeriod

instance NFData UsageLimitPeriod

instance ToByteString UsageLimitPeriod

instance ToQuery UsageLimitPeriod

instance ToHeader UsageLimitPeriod

instance FromXML UsageLimitPeriod where
  parseXML = parseXMLText "UsageLimitPeriod"
