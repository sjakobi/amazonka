{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IAM.Types.AssignmentStatusType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IAM.Types.AssignmentStatusType
  ( AssignmentStatusType
      ( ..,
        Any,
        Assigned,
        Unassigned
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AssignmentStatusType
  = AssignmentStatusType'
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

pattern Any :: AssignmentStatusType
pattern Any = AssignmentStatusType' "Any"

pattern Assigned :: AssignmentStatusType
pattern Assigned = AssignmentStatusType' "Assigned"

pattern Unassigned :: AssignmentStatusType
pattern Unassigned = AssignmentStatusType' "Unassigned"

{-# COMPLETE
  Any,
  Assigned,
  Unassigned,
  AssignmentStatusType'
  #-}

instance FromText AssignmentStatusType where
  parser = (AssignmentStatusType' . mk) <$> takeText

instance ToText AssignmentStatusType where
  toText (AssignmentStatusType' ci) = original ci

instance Hashable AssignmentStatusType

instance NFData AssignmentStatusType

instance ToByteString AssignmentStatusType

instance ToQuery AssignmentStatusType

instance ToHeader AssignmentStatusType
