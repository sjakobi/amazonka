{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AlexaBusiness.Types.EnrollmentStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.EnrollmentStatus
  ( EnrollmentStatus
      ( ..,
        ESDeregistering,
        ESDisassociating,
        ESInitialized,
        ESPending,
        ESRegistered
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data EnrollmentStatus = EnrollmentStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ESDeregistering :: EnrollmentStatus
pattern ESDeregistering = EnrollmentStatus' "DEREGISTERING"

pattern ESDisassociating :: EnrollmentStatus
pattern ESDisassociating = EnrollmentStatus' "DISASSOCIATING"

pattern ESInitialized :: EnrollmentStatus
pattern ESInitialized = EnrollmentStatus' "INITIALIZED"

pattern ESPending :: EnrollmentStatus
pattern ESPending = EnrollmentStatus' "PENDING"

pattern ESRegistered :: EnrollmentStatus
pattern ESRegistered = EnrollmentStatus' "REGISTERED"

{-# COMPLETE
  ESDeregistering,
  ESDisassociating,
  ESInitialized,
  ESPending,
  ESRegistered,
  EnrollmentStatus'
  #-}

instance FromText EnrollmentStatus where
  parser = (EnrollmentStatus' . mk) <$> takeText

instance ToText EnrollmentStatus where
  toText (EnrollmentStatus' ci) = original ci

instance Hashable EnrollmentStatus

instance NFData EnrollmentStatus

instance ToByteString EnrollmentStatus

instance ToQuery EnrollmentStatus

instance ToHeader EnrollmentStatus

instance FromJSON EnrollmentStatus where
  parseJSON = parseJSONText "EnrollmentStatus"
