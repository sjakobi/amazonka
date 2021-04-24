{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.Types.StackResourceDriftStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.StackResourceDriftStatus
  ( StackResourceDriftStatus
      ( ..,
        Deleted,
        InSync,
        Modified,
        NotChecked
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data StackResourceDriftStatus
  = StackResourceDriftStatus'
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

pattern Deleted :: StackResourceDriftStatus
pattern Deleted = StackResourceDriftStatus' "DELETED"

pattern InSync :: StackResourceDriftStatus
pattern InSync = StackResourceDriftStatus' "IN_SYNC"

pattern Modified :: StackResourceDriftStatus
pattern Modified = StackResourceDriftStatus' "MODIFIED"

pattern NotChecked :: StackResourceDriftStatus
pattern NotChecked = StackResourceDriftStatus' "NOT_CHECKED"

{-# COMPLETE
  Deleted,
  InSync,
  Modified,
  NotChecked,
  StackResourceDriftStatus'
  #-}

instance FromText StackResourceDriftStatus where
  parser = (StackResourceDriftStatus' . mk) <$> takeText

instance ToText StackResourceDriftStatus where
  toText (StackResourceDriftStatus' ci) = original ci

instance Hashable StackResourceDriftStatus

instance NFData StackResourceDriftStatus

instance ToByteString StackResourceDriftStatus

instance ToQuery StackResourceDriftStatus

instance ToHeader StackResourceDriftStatus

instance FromXML StackResourceDriftStatus where
  parseXML = parseXMLText "StackResourceDriftStatus"
