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
-- Module      : Network.AWS.IAM.Types.AssignmentStatusType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IAM.Types.AssignmentStatusType
  ( AssignmentStatusType
      ( ..,
        AssignmentStatusTypeAny,
        AssignmentStatusTypeAssigned,
        AssignmentStatusTypeUnassigned
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AssignmentStatusType = AssignmentStatusType'
  { fromAssignmentStatusType ::
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

pattern AssignmentStatusTypeAny :: AssignmentStatusType
pattern AssignmentStatusTypeAny = AssignmentStatusType' "Any"

pattern AssignmentStatusTypeAssigned :: AssignmentStatusType
pattern AssignmentStatusTypeAssigned = AssignmentStatusType' "Assigned"

pattern AssignmentStatusTypeUnassigned :: AssignmentStatusType
pattern AssignmentStatusTypeUnassigned = AssignmentStatusType' "Unassigned"

{-# COMPLETE
  AssignmentStatusTypeAny,
  AssignmentStatusTypeAssigned,
  AssignmentStatusTypeUnassigned,
  AssignmentStatusType'
  #-}

instance Prelude.FromText AssignmentStatusType where
  parser = AssignmentStatusType' Prelude.<$> Prelude.takeText

instance Prelude.ToText AssignmentStatusType where
  toText (AssignmentStatusType' x) = x

instance Prelude.Hashable AssignmentStatusType

instance Prelude.NFData AssignmentStatusType

instance Prelude.ToByteString AssignmentStatusType

instance Prelude.ToQuery AssignmentStatusType

instance Prelude.ToHeader AssignmentStatusType
