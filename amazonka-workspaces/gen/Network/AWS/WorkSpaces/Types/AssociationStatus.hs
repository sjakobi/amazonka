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
-- Module      : Network.AWS.WorkSpaces.Types.AssociationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkSpaces.Types.AssociationStatus
  ( AssociationStatus
      ( ..,
        AssociationStatusASSOCIATEDWITHOWNERACCOUNT,
        AssociationStatusASSOCIATEDWITHSHAREDACCOUNT,
        AssociationStatusNOTASSOCIATED,
        AssociationStatusPENDINGASSOCIATION,
        AssociationStatusPENDINGDISASSOCIATION
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AssociationStatus = AssociationStatus'
  { fromAssociationStatus ::
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

pattern AssociationStatusASSOCIATEDWITHOWNERACCOUNT :: AssociationStatus
pattern AssociationStatusASSOCIATEDWITHOWNERACCOUNT = AssociationStatus' "ASSOCIATED_WITH_OWNER_ACCOUNT"

pattern AssociationStatusASSOCIATEDWITHSHAREDACCOUNT :: AssociationStatus
pattern AssociationStatusASSOCIATEDWITHSHAREDACCOUNT = AssociationStatus' "ASSOCIATED_WITH_SHARED_ACCOUNT"

pattern AssociationStatusNOTASSOCIATED :: AssociationStatus
pattern AssociationStatusNOTASSOCIATED = AssociationStatus' "NOT_ASSOCIATED"

pattern AssociationStatusPENDINGASSOCIATION :: AssociationStatus
pattern AssociationStatusPENDINGASSOCIATION = AssociationStatus' "PENDING_ASSOCIATION"

pattern AssociationStatusPENDINGDISASSOCIATION :: AssociationStatus
pattern AssociationStatusPENDINGDISASSOCIATION = AssociationStatus' "PENDING_DISASSOCIATION"

{-# COMPLETE
  AssociationStatusASSOCIATEDWITHOWNERACCOUNT,
  AssociationStatusASSOCIATEDWITHSHAREDACCOUNT,
  AssociationStatusNOTASSOCIATED,
  AssociationStatusPENDINGASSOCIATION,
  AssociationStatusPENDINGDISASSOCIATION,
  AssociationStatus'
  #-}

instance Prelude.FromText AssociationStatus where
  parser = AssociationStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText AssociationStatus where
  toText (AssociationStatus' x) = x

instance Prelude.Hashable AssociationStatus

instance Prelude.NFData AssociationStatus

instance Prelude.ToByteString AssociationStatus

instance Prelude.ToQuery AssociationStatus

instance Prelude.ToHeader AssociationStatus

instance Prelude.FromJSON AssociationStatus where
  parseJSON = Prelude.parseJSONText "AssociationStatus"
