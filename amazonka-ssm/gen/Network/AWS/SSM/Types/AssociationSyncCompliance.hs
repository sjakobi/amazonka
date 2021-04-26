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
-- Module      : Network.AWS.SSM.Types.AssociationSyncCompliance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.AssociationSyncCompliance
  ( AssociationSyncCompliance
      ( ..,
        AssociationSyncComplianceAUTO,
        AssociationSyncComplianceMANUAL
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AssociationSyncCompliance = AssociationSyncCompliance'
  { fromAssociationSyncCompliance ::
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

pattern AssociationSyncComplianceAUTO :: AssociationSyncCompliance
pattern AssociationSyncComplianceAUTO = AssociationSyncCompliance' "AUTO"

pattern AssociationSyncComplianceMANUAL :: AssociationSyncCompliance
pattern AssociationSyncComplianceMANUAL = AssociationSyncCompliance' "MANUAL"

{-# COMPLETE
  AssociationSyncComplianceAUTO,
  AssociationSyncComplianceMANUAL,
  AssociationSyncCompliance'
  #-}

instance Prelude.FromText AssociationSyncCompliance where
  parser = AssociationSyncCompliance' Prelude.<$> Prelude.takeText

instance Prelude.ToText AssociationSyncCompliance where
  toText (AssociationSyncCompliance' x) = x

instance Prelude.Hashable AssociationSyncCompliance

instance Prelude.NFData AssociationSyncCompliance

instance Prelude.ToByteString AssociationSyncCompliance

instance Prelude.ToQuery AssociationSyncCompliance

instance Prelude.ToHeader AssociationSyncCompliance

instance Prelude.ToJSON AssociationSyncCompliance where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AssociationSyncCompliance where
  parseJSON = Prelude.parseJSONText "AssociationSyncCompliance"
