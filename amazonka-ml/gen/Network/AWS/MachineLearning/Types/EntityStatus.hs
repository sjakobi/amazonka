{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MachineLearning.Types.EntityStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MachineLearning.Types.EntityStatus
  ( EntityStatus
      ( ..,
        Completed,
        Deleted,
        Failed,
        Inprogress,
        Pending
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Object status with the following possible values:
--
--
--     * @PENDING@     * @INPROGRESS@     * @FAILED@     * @COMPLETED@     * @DELETED@
data EntityStatus = EntityStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Completed :: EntityStatus
pattern Completed = EntityStatus' "COMPLETED"

pattern Deleted :: EntityStatus
pattern Deleted = EntityStatus' "DELETED"

pattern Failed :: EntityStatus
pattern Failed = EntityStatus' "FAILED"

pattern Inprogress :: EntityStatus
pattern Inprogress = EntityStatus' "INPROGRESS"

pattern Pending :: EntityStatus
pattern Pending = EntityStatus' "PENDING"

{-# COMPLETE
  Completed,
  Deleted,
  Failed,
  Inprogress,
  Pending,
  EntityStatus'
  #-}

instance FromText EntityStatus where
  parser = (EntityStatus' . mk) <$> takeText

instance ToText EntityStatus where
  toText (EntityStatus' ci) = original ci

instance Hashable EntityStatus

instance NFData EntityStatus

instance ToByteString EntityStatus

instance ToQuery EntityStatus

instance ToHeader EntityStatus

instance FromJSON EntityStatus where
  parseJSON = parseJSONText "EntityStatus"
