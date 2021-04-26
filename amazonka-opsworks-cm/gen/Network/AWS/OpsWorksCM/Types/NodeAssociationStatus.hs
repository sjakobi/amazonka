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
-- Module      : Network.AWS.OpsWorksCM.Types.NodeAssociationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.OpsWorksCM.Types.NodeAssociationStatus
  ( NodeAssociationStatus
      ( ..,
        NodeAssociationStatusFAILED,
        NodeAssociationStatusINPROGRESS,
        NodeAssociationStatusSUCCESS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The status of the association or disassociation request.
--
-- __Possible values:__
--
-- -   @SUCCESS@: The association or disassociation succeeded.
--
-- -   @FAILED@: The association or disassociation failed.
--
-- -   @IN_PROGRESS@: The association or disassociation is still in
--     progress.
newtype NodeAssociationStatus = NodeAssociationStatus'
  { fromNodeAssociationStatus ::
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

pattern NodeAssociationStatusFAILED :: NodeAssociationStatus
pattern NodeAssociationStatusFAILED = NodeAssociationStatus' "FAILED"

pattern NodeAssociationStatusINPROGRESS :: NodeAssociationStatus
pattern NodeAssociationStatusINPROGRESS = NodeAssociationStatus' "IN_PROGRESS"

pattern NodeAssociationStatusSUCCESS :: NodeAssociationStatus
pattern NodeAssociationStatusSUCCESS = NodeAssociationStatus' "SUCCESS"

{-# COMPLETE
  NodeAssociationStatusFAILED,
  NodeAssociationStatusINPROGRESS,
  NodeAssociationStatusSUCCESS,
  NodeAssociationStatus'
  #-}

instance Prelude.FromText NodeAssociationStatus where
  parser = NodeAssociationStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText NodeAssociationStatus where
  toText (NodeAssociationStatus' x) = x

instance Prelude.Hashable NodeAssociationStatus

instance Prelude.NFData NodeAssociationStatus

instance Prelude.ToByteString NodeAssociationStatus

instance Prelude.ToQuery NodeAssociationStatus

instance Prelude.ToHeader NodeAssociationStatus

instance Prelude.FromJSON NodeAssociationStatus where
  parseJSON = Prelude.parseJSONText "NodeAssociationStatus"
