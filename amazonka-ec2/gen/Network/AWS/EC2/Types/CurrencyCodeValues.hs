{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.CurrencyCodeValues
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.CurrencyCodeValues
  ( CurrencyCodeValues
      ( ..,
        Usd
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data CurrencyCodeValues
  = CurrencyCodeValues'
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

pattern Usd :: CurrencyCodeValues
pattern Usd = CurrencyCodeValues' "USD"

{-# COMPLETE
  Usd,
  CurrencyCodeValues'
  #-}

instance FromText CurrencyCodeValues where
  parser = (CurrencyCodeValues' . mk) <$> takeText

instance ToText CurrencyCodeValues where
  toText (CurrencyCodeValues' ci) = original ci

instance Hashable CurrencyCodeValues

instance NFData CurrencyCodeValues

instance ToByteString CurrencyCodeValues

instance ToQuery CurrencyCodeValues

instance ToHeader CurrencyCodeValues

instance FromXML CurrencyCodeValues where
  parseXML = parseXMLText "CurrencyCodeValues"
