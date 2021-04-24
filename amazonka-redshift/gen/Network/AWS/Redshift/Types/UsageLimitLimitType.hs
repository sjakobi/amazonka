{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Redshift.Types.UsageLimitLimitType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.UsageLimitLimitType
  ( UsageLimitLimitType
      ( ..,
        DataScanned,
        Time
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude
import Network.AWS.Redshift.Internal

data UsageLimitLimitType
  = UsageLimitLimitType'
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

pattern DataScanned :: UsageLimitLimitType
pattern DataScanned = UsageLimitLimitType' "data-scanned"

pattern Time :: UsageLimitLimitType
pattern Time = UsageLimitLimitType' "time"

{-# COMPLETE
  DataScanned,
  Time,
  UsageLimitLimitType'
  #-}

instance FromText UsageLimitLimitType where
  parser = (UsageLimitLimitType' . mk) <$> takeText

instance ToText UsageLimitLimitType where
  toText (UsageLimitLimitType' ci) = original ci

instance Hashable UsageLimitLimitType

instance NFData UsageLimitLimitType

instance ToByteString UsageLimitLimitType

instance ToQuery UsageLimitLimitType

instance ToHeader UsageLimitLimitType

instance FromXML UsageLimitLimitType where
  parseXML = parseXMLText "UsageLimitLimitType"
