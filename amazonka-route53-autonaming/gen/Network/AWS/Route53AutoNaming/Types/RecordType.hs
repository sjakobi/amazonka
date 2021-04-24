{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53AutoNaming.Types.RecordType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53AutoNaming.Types.RecordType
  ( RecordType
      ( ..,
        A,
        Aaaa,
        Cname,
        Srv
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data RecordType = RecordType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern A :: RecordType
pattern A = RecordType' "A"

pattern Aaaa :: RecordType
pattern Aaaa = RecordType' "AAAA"

pattern Cname :: RecordType
pattern Cname = RecordType' "CNAME"

pattern Srv :: RecordType
pattern Srv = RecordType' "SRV"

{-# COMPLETE
  A,
  Aaaa,
  Cname,
  Srv,
  RecordType'
  #-}

instance FromText RecordType where
  parser = (RecordType' . mk) <$> takeText

instance ToText RecordType where
  toText (RecordType' ci) = original ci

instance Hashable RecordType

instance NFData RecordType

instance ToByteString RecordType

instance ToQuery RecordType

instance ToHeader RecordType

instance ToJSON RecordType where
  toJSON = toJSONText

instance FromJSON RecordType where
  parseJSON = parseJSONText "RecordType"
