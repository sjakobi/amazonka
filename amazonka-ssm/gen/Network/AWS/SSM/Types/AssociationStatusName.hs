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
-- Module      : Network.AWS.SSM.Types.AssociationStatusName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.AssociationStatusName
  ( AssociationStatusName
      ( ..,
        AssociationStatusNameFailed,
        AssociationStatusNamePending,
        AssociationStatusNameSuccess
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AssociationStatusName = AssociationStatusName'
  { fromAssociationStatusName ::
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

pattern AssociationStatusNameFailed :: AssociationStatusName
pattern AssociationStatusNameFailed = AssociationStatusName' "Failed"

pattern AssociationStatusNamePending :: AssociationStatusName
pattern AssociationStatusNamePending = AssociationStatusName' "Pending"

pattern AssociationStatusNameSuccess :: AssociationStatusName
pattern AssociationStatusNameSuccess = AssociationStatusName' "Success"

{-# COMPLETE
  AssociationStatusNameFailed,
  AssociationStatusNamePending,
  AssociationStatusNameSuccess,
  AssociationStatusName'
  #-}

instance Prelude.FromText AssociationStatusName where
  parser = AssociationStatusName' Prelude.<$> Prelude.takeText

instance Prelude.ToText AssociationStatusName where
  toText (AssociationStatusName' x) = x

instance Prelude.Hashable AssociationStatusName

instance Prelude.NFData AssociationStatusName

instance Prelude.ToByteString AssociationStatusName

instance Prelude.ToQuery AssociationStatusName

instance Prelude.ToHeader AssociationStatusName

instance Prelude.ToJSON AssociationStatusName where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AssociationStatusName where
  parseJSON = Prelude.parseJSONText "AssociationStatusName"
