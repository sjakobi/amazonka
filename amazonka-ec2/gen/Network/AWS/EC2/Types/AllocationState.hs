{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.AllocationState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.AllocationState
  ( AllocationState
      ( ..,
        ASAvailable,
        ASPending,
        ASPermanentFailure,
        ASReleased,
        ASReleasedPermanentFailure,
        ASUnderAssessment
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data AllocationState = AllocationState' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ASAvailable :: AllocationState
pattern ASAvailable = AllocationState' "available"

pattern ASPending :: AllocationState
pattern ASPending = AllocationState' "pending"

pattern ASPermanentFailure :: AllocationState
pattern ASPermanentFailure = AllocationState' "permanent-failure"

pattern ASReleased :: AllocationState
pattern ASReleased = AllocationState' "released"

pattern ASReleasedPermanentFailure :: AllocationState
pattern ASReleasedPermanentFailure = AllocationState' "released-permanent-failure"

pattern ASUnderAssessment :: AllocationState
pattern ASUnderAssessment = AllocationState' "under-assessment"

{-# COMPLETE
  ASAvailable,
  ASPending,
  ASPermanentFailure,
  ASReleased,
  ASReleasedPermanentFailure,
  ASUnderAssessment,
  AllocationState'
  #-}

instance FromText AllocationState where
  parser = (AllocationState' . mk) <$> takeText

instance ToText AllocationState where
  toText (AllocationState' ci) = original ci

instance Hashable AllocationState

instance NFData AllocationState

instance ToByteString AllocationState

instance ToQuery AllocationState

instance ToHeader AllocationState

instance FromXML AllocationState where
  parseXML = parseXMLText "AllocationState"
