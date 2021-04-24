{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MechanicalTurk.Types.AssignmentStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MechanicalTurk.Types.AssignmentStatus
  ( AssignmentStatus
      ( ..,
        Approved,
        Rejected,
        Submitted
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AssignmentStatus = AssignmentStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Approved :: AssignmentStatus
pattern Approved = AssignmentStatus' "Approved"

pattern Rejected :: AssignmentStatus
pattern Rejected = AssignmentStatus' "Rejected"

pattern Submitted :: AssignmentStatus
pattern Submitted = AssignmentStatus' "Submitted"

{-# COMPLETE
  Approved,
  Rejected,
  Submitted,
  AssignmentStatus'
  #-}

instance FromText AssignmentStatus where
  parser = (AssignmentStatus' . mk) <$> takeText

instance ToText AssignmentStatus where
  toText (AssignmentStatus' ci) = original ci

instance Hashable AssignmentStatus

instance NFData AssignmentStatus

instance ToByteString AssignmentStatus

instance ToQuery AssignmentStatus

instance ToHeader AssignmentStatus

instance ToJSON AssignmentStatus where
  toJSON = toJSONText

instance FromJSON AssignmentStatus where
  parseJSON = parseJSONText "AssignmentStatus"
