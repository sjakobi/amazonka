{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.Types.StackDriftStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.StackDriftStatus
  ( StackDriftStatus
      ( ..,
        SDSDrifted,
        SDSInSync,
        SDSNotChecked,
        SDSUnknown
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data StackDriftStatus = StackDriftStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern SDSDrifted :: StackDriftStatus
pattern SDSDrifted = StackDriftStatus' "DRIFTED"

pattern SDSInSync :: StackDriftStatus
pattern SDSInSync = StackDriftStatus' "IN_SYNC"

pattern SDSNotChecked :: StackDriftStatus
pattern SDSNotChecked = StackDriftStatus' "NOT_CHECKED"

pattern SDSUnknown :: StackDriftStatus
pattern SDSUnknown = StackDriftStatus' "UNKNOWN"

{-# COMPLETE
  SDSDrifted,
  SDSInSync,
  SDSNotChecked,
  SDSUnknown,
  StackDriftStatus'
  #-}

instance FromText StackDriftStatus where
  parser = (StackDriftStatus' . mk) <$> takeText

instance ToText StackDriftStatus where
  toText (StackDriftStatus' ci) = original ci

instance Hashable StackDriftStatus

instance NFData StackDriftStatus

instance ToByteString StackDriftStatus

instance ToQuery StackDriftStatus

instance ToHeader StackDriftStatus

instance FromXML StackDriftStatus where
  parseXML = parseXMLText "StackDriftStatus"
