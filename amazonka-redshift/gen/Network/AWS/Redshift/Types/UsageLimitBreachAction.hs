{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Redshift.Types.UsageLimitBreachAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.UsageLimitBreachAction
  ( UsageLimitBreachAction
      ( ..,
        Disable,
        EmitMetric,
        Log
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude
import Network.AWS.Redshift.Internal

data UsageLimitBreachAction
  = UsageLimitBreachAction'
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

pattern Disable :: UsageLimitBreachAction
pattern Disable = UsageLimitBreachAction' "disable"

pattern EmitMetric :: UsageLimitBreachAction
pattern EmitMetric = UsageLimitBreachAction' "emit-metric"

pattern Log :: UsageLimitBreachAction
pattern Log = UsageLimitBreachAction' "log"

{-# COMPLETE
  Disable,
  EmitMetric,
  Log,
  UsageLimitBreachAction'
  #-}

instance FromText UsageLimitBreachAction where
  parser = (UsageLimitBreachAction' . mk) <$> takeText

instance ToText UsageLimitBreachAction where
  toText (UsageLimitBreachAction' ci) = original ci

instance Hashable UsageLimitBreachAction

instance NFData UsageLimitBreachAction

instance ToByteString UsageLimitBreachAction

instance ToQuery UsageLimitBreachAction

instance ToHeader UsageLimitBreachAction

instance FromXML UsageLimitBreachAction where
  parseXML = parseXMLText "UsageLimitBreachAction"
