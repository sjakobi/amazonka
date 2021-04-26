{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
        AssignmentStatusApproved,
        AssignmentStatusRejected,
        AssignmentStatusSubmitted
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AssignmentStatus = AssignmentStatus'
  { fromAssignmentStatus ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern AssignmentStatusApproved :: AssignmentStatus
pattern AssignmentStatusApproved = AssignmentStatus' "Approved"

pattern AssignmentStatusRejected :: AssignmentStatus
pattern AssignmentStatusRejected = AssignmentStatus' "Rejected"

pattern AssignmentStatusSubmitted :: AssignmentStatus
pattern AssignmentStatusSubmitted = AssignmentStatus' "Submitted"

{-# COMPLETE
  AssignmentStatusApproved,
  AssignmentStatusRejected,
  AssignmentStatusSubmitted,
  AssignmentStatus'
  #-}

instance Prelude.FromText AssignmentStatus where
  parser = AssignmentStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText AssignmentStatus where
  toText (AssignmentStatus' x) = x

instance Prelude.Hashable AssignmentStatus

instance Prelude.NFData AssignmentStatus

instance Prelude.ToByteString AssignmentStatus

instance Prelude.ToQuery AssignmentStatus

instance Prelude.ToHeader AssignmentStatus

instance Prelude.ToJSON AssignmentStatus where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AssignmentStatus where
  parseJSON = Prelude.parseJSONText "AssignmentStatus"
