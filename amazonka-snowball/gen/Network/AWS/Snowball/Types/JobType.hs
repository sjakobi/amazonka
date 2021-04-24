{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Snowball.Types.JobType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Snowball.Types.JobType
  ( JobType
      ( ..,
        Export,
        Import,
        LocalUse
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data JobType = JobType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Export :: JobType
pattern Export = JobType' "EXPORT"

pattern Import :: JobType
pattern Import = JobType' "IMPORT"

pattern LocalUse :: JobType
pattern LocalUse = JobType' "LOCAL_USE"

{-# COMPLETE
  Export,
  Import,
  LocalUse,
  JobType'
  #-}

instance FromText JobType where
  parser = (JobType' . mk) <$> takeText

instance ToText JobType where
  toText (JobType' ci) = original ci

instance Hashable JobType

instance NFData JobType

instance ToByteString JobType

instance ToQuery JobType

instance ToHeader JobType

instance ToJSON JobType where
  toJSON = toJSONText

instance FromJSON JobType where
  parseJSON = parseJSONText "JobType"
