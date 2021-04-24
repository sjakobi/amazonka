{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.Types.BillingMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.BillingMode
  ( BillingMode
      ( ..,
        PayPerRequest,
        Provisioned
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data BillingMode = BillingMode' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern PayPerRequest :: BillingMode
pattern PayPerRequest = BillingMode' "PAY_PER_REQUEST"

pattern Provisioned :: BillingMode
pattern Provisioned = BillingMode' "PROVISIONED"

{-# COMPLETE
  PayPerRequest,
  Provisioned,
  BillingMode'
  #-}

instance FromText BillingMode where
  parser = (BillingMode' . mk) <$> takeText

instance ToText BillingMode where
  toText (BillingMode' ci) = original ci

instance Hashable BillingMode

instance NFData BillingMode

instance ToByteString BillingMode

instance ToQuery BillingMode

instance ToHeader BillingMode

instance ToJSON BillingMode where
  toJSON = toJSONText

instance FromJSON BillingMode where
  parseJSON = parseJSONText "BillingMode"
