{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElastiCache.Types.SlaMet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElastiCache.Types.SlaMet
  ( SlaMet
      ( ..,
        NO,
        Na,
        Yes
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data SlaMet = SlaMet' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern NO :: SlaMet
pattern NO = SlaMet' "no"

pattern Na :: SlaMet
pattern Na = SlaMet' "n/a"

pattern Yes :: SlaMet
pattern Yes = SlaMet' "yes"

{-# COMPLETE
  NO,
  Na,
  Yes,
  SlaMet'
  #-}

instance FromText SlaMet where
  parser = (SlaMet' . mk) <$> takeText

instance ToText SlaMet where
  toText (SlaMet' ci) = original ci

instance Hashable SlaMet

instance NFData SlaMet

instance ToByteString SlaMet

instance ToQuery SlaMet

instance ToHeader SlaMet

instance FromXML SlaMet where
  parseXML = parseXMLText "SlaMet"
