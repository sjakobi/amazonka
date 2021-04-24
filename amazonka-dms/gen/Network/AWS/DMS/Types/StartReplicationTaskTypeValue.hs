{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DMS.Types.StartReplicationTaskTypeValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types.StartReplicationTaskTypeValue
  ( StartReplicationTaskTypeValue
      ( ..,
        ReloadTarget,
        ResumeProcessing,
        StartReplication
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data StartReplicationTaskTypeValue
  = StartReplicationTaskTypeValue'
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

pattern ReloadTarget :: StartReplicationTaskTypeValue
pattern ReloadTarget = StartReplicationTaskTypeValue' "reload-target"

pattern ResumeProcessing :: StartReplicationTaskTypeValue
pattern ResumeProcessing = StartReplicationTaskTypeValue' "resume-processing"

pattern StartReplication :: StartReplicationTaskTypeValue
pattern StartReplication = StartReplicationTaskTypeValue' "start-replication"

{-# COMPLETE
  ReloadTarget,
  ResumeProcessing,
  StartReplication,
  StartReplicationTaskTypeValue'
  #-}

instance FromText StartReplicationTaskTypeValue where
  parser = (StartReplicationTaskTypeValue' . mk) <$> takeText

instance ToText StartReplicationTaskTypeValue where
  toText (StartReplicationTaskTypeValue' ci) = original ci

instance Hashable StartReplicationTaskTypeValue

instance NFData StartReplicationTaskTypeValue

instance ToByteString StartReplicationTaskTypeValue

instance ToQuery StartReplicationTaskTypeValue

instance ToHeader StartReplicationTaskTypeValue

instance ToJSON StartReplicationTaskTypeValue where
  toJSON = toJSONText
