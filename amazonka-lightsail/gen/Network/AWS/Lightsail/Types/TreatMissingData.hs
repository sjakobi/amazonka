{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.TreatMissingData
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.TreatMissingData
  ( TreatMissingData
      ( ..,
        Breaching,
        Ignore,
        Missing,
        NotBreaching
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TreatMissingData = TreatMissingData' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Breaching :: TreatMissingData
pattern Breaching = TreatMissingData' "breaching"

pattern Ignore :: TreatMissingData
pattern Ignore = TreatMissingData' "ignore"

pattern Missing :: TreatMissingData
pattern Missing = TreatMissingData' "missing"

pattern NotBreaching :: TreatMissingData
pattern NotBreaching = TreatMissingData' "notBreaching"

{-# COMPLETE
  Breaching,
  Ignore,
  Missing,
  NotBreaching,
  TreatMissingData'
  #-}

instance FromText TreatMissingData where
  parser = (TreatMissingData' . mk) <$> takeText

instance ToText TreatMissingData where
  toText (TreatMissingData' ci) = original ci

instance Hashable TreatMissingData

instance NFData TreatMissingData

instance ToByteString TreatMissingData

instance ToQuery TreatMissingData

instance ToHeader TreatMissingData

instance ToJSON TreatMissingData where
  toJSON = toJSONText

instance FromJSON TreatMissingData where
  parseJSON = parseJSONText "TreatMissingData"
