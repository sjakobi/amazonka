{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WAFRegional.Types.RateKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WAFRegional.Types.RateKey
  ( RateKey
      ( ..,
        IP
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data RateKey = RateKey' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern IP :: RateKey
pattern IP = RateKey' "IP"

{-# COMPLETE
  IP,
  RateKey'
  #-}

instance FromText RateKey where
  parser = (RateKey' . mk) <$> takeText

instance ToText RateKey where
  toText (RateKey' ci) = original ci

instance Hashable RateKey

instance NFData RateKey

instance ToByteString RateKey

instance ToQuery RateKey

instance ToHeader RateKey

instance ToJSON RateKey where
  toJSON = toJSONText

instance FromJSON RateKey where
  parseJSON = parseJSONText "RateKey"
