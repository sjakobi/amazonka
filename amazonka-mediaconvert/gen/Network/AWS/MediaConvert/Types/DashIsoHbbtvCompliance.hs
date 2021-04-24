{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.DashIsoHbbtvCompliance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.DashIsoHbbtvCompliance
  ( DashIsoHbbtvCompliance
      ( ..,
        DIHCHbbtv15,
        DIHCNone
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Supports HbbTV specification as indicated
data DashIsoHbbtvCompliance
  = DashIsoHbbtvCompliance'
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

pattern DIHCHbbtv15 :: DashIsoHbbtvCompliance
pattern DIHCHbbtv15 = DashIsoHbbtvCompliance' "HBBTV_1_5"

pattern DIHCNone :: DashIsoHbbtvCompliance
pattern DIHCNone = DashIsoHbbtvCompliance' "NONE"

{-# COMPLETE
  DIHCHbbtv15,
  DIHCNone,
  DashIsoHbbtvCompliance'
  #-}

instance FromText DashIsoHbbtvCompliance where
  parser = (DashIsoHbbtvCompliance' . mk) <$> takeText

instance ToText DashIsoHbbtvCompliance where
  toText (DashIsoHbbtvCompliance' ci) = original ci

instance Hashable DashIsoHbbtvCompliance

instance NFData DashIsoHbbtvCompliance

instance ToByteString DashIsoHbbtvCompliance

instance ToQuery DashIsoHbbtvCompliance

instance ToHeader DashIsoHbbtvCompliance

instance ToJSON DashIsoHbbtvCompliance where
  toJSON = toJSONText

instance FromJSON DashIsoHbbtvCompliance where
  parseJSON = parseJSONText "DashIsoHbbtvCompliance"
