{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.RelationalDatabasePasswordVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.RelationalDatabasePasswordVersion
  ( RelationalDatabasePasswordVersion
      ( ..,
        RDPVCurrent,
        RDPVPending,
        RDPVPrevious
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data RelationalDatabasePasswordVersion
  = RelationalDatabasePasswordVersion'
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

pattern RDPVCurrent :: RelationalDatabasePasswordVersion
pattern RDPVCurrent = RelationalDatabasePasswordVersion' "CURRENT"

pattern RDPVPending :: RelationalDatabasePasswordVersion
pattern RDPVPending = RelationalDatabasePasswordVersion' "PENDING"

pattern RDPVPrevious :: RelationalDatabasePasswordVersion
pattern RDPVPrevious = RelationalDatabasePasswordVersion' "PREVIOUS"

{-# COMPLETE
  RDPVCurrent,
  RDPVPending,
  RDPVPrevious,
  RelationalDatabasePasswordVersion'
  #-}

instance FromText RelationalDatabasePasswordVersion where
  parser = (RelationalDatabasePasswordVersion' . mk) <$> takeText

instance ToText RelationalDatabasePasswordVersion where
  toText (RelationalDatabasePasswordVersion' ci) = original ci

instance Hashable RelationalDatabasePasswordVersion

instance NFData RelationalDatabasePasswordVersion

instance ToByteString RelationalDatabasePasswordVersion

instance ToQuery RelationalDatabasePasswordVersion

instance ToHeader RelationalDatabasePasswordVersion

instance ToJSON RelationalDatabasePasswordVersion where
  toJSON = toJSONText
