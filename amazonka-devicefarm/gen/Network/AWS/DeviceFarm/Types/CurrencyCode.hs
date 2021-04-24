{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DeviceFarm.Types.CurrencyCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.CurrencyCode
  ( CurrencyCode
      ( ..,
        Usd
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CurrencyCode = CurrencyCode' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Usd :: CurrencyCode
pattern Usd = CurrencyCode' "USD"

{-# COMPLETE
  Usd,
  CurrencyCode'
  #-}

instance FromText CurrencyCode where
  parser = (CurrencyCode' . mk) <$> takeText

instance ToText CurrencyCode where
  toText (CurrencyCode' ci) = original ci

instance Hashable CurrencyCode

instance NFData CurrencyCode

instance ToByteString CurrencyCode

instance ToQuery CurrencyCode

instance ToHeader CurrencyCode

instance FromJSON CurrencyCode where
  parseJSON = parseJSONText "CurrencyCode"
