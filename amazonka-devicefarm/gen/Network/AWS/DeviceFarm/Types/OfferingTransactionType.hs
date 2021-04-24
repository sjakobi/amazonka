{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DeviceFarm.Types.OfferingTransactionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.OfferingTransactionType
  ( OfferingTransactionType
      ( ..,
        Purchase,
        Renew,
        System
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data OfferingTransactionType
  = OfferingTransactionType'
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

pattern Purchase :: OfferingTransactionType
pattern Purchase = OfferingTransactionType' "PURCHASE"

pattern Renew :: OfferingTransactionType
pattern Renew = OfferingTransactionType' "RENEW"

pattern System :: OfferingTransactionType
pattern System = OfferingTransactionType' "SYSTEM"

{-# COMPLETE
  Purchase,
  Renew,
  System,
  OfferingTransactionType'
  #-}

instance FromText OfferingTransactionType where
  parser = (OfferingTransactionType' . mk) <$> takeText

instance ToText OfferingTransactionType where
  toText (OfferingTransactionType' ci) = original ci

instance Hashable OfferingTransactionType

instance NFData OfferingTransactionType

instance ToByteString OfferingTransactionType

instance ToQuery OfferingTransactionType

instance ToHeader OfferingTransactionType

instance FromJSON OfferingTransactionType where
  parseJSON = parseJSONText "OfferingTransactionType"
