{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.Types.StackInstanceDetailedStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.StackInstanceDetailedStatus
  ( StackInstanceDetailedStatus
      ( ..,
        SIDSCancelled,
        SIDSFailed,
        SIDSInoperable,
        SIDSPending,
        SIDSRunning,
        SIDSSucceeded
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data StackInstanceDetailedStatus
  = StackInstanceDetailedStatus'
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

pattern SIDSCancelled :: StackInstanceDetailedStatus
pattern SIDSCancelled = StackInstanceDetailedStatus' "CANCELLED"

pattern SIDSFailed :: StackInstanceDetailedStatus
pattern SIDSFailed = StackInstanceDetailedStatus' "FAILED"

pattern SIDSInoperable :: StackInstanceDetailedStatus
pattern SIDSInoperable = StackInstanceDetailedStatus' "INOPERABLE"

pattern SIDSPending :: StackInstanceDetailedStatus
pattern SIDSPending = StackInstanceDetailedStatus' "PENDING"

pattern SIDSRunning :: StackInstanceDetailedStatus
pattern SIDSRunning = StackInstanceDetailedStatus' "RUNNING"

pattern SIDSSucceeded :: StackInstanceDetailedStatus
pattern SIDSSucceeded = StackInstanceDetailedStatus' "SUCCEEDED"

{-# COMPLETE
  SIDSCancelled,
  SIDSFailed,
  SIDSInoperable,
  SIDSPending,
  SIDSRunning,
  SIDSSucceeded,
  StackInstanceDetailedStatus'
  #-}

instance FromText StackInstanceDetailedStatus where
  parser = (StackInstanceDetailedStatus' . mk) <$> takeText

instance ToText StackInstanceDetailedStatus where
  toText (StackInstanceDetailedStatus' ci) = original ci

instance Hashable StackInstanceDetailedStatus

instance NFData StackInstanceDetailedStatus

instance ToByteString StackInstanceDetailedStatus

instance ToQuery StackInstanceDetailedStatus

instance ToHeader StackInstanceDetailedStatus

instance FromXML StackInstanceDetailedStatus where
  parseXML = parseXMLText "StackInstanceDetailedStatus"
