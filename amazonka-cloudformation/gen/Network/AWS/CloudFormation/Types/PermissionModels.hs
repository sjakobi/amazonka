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
-- Module      : Network.AWS.CloudFormation.Types.PermissionModels
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.PermissionModels
  ( PermissionModels
      ( ..,
        PermissionModelsSELFMANAGED,
        PermissionModelsSERVICEMANAGED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PermissionModels = PermissionModels'
  { fromPermissionModels ::
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

pattern PermissionModelsSELFMANAGED :: PermissionModels
pattern PermissionModelsSELFMANAGED = PermissionModels' "SELF_MANAGED"

pattern PermissionModelsSERVICEMANAGED :: PermissionModels
pattern PermissionModelsSERVICEMANAGED = PermissionModels' "SERVICE_MANAGED"

{-# COMPLETE
  PermissionModelsSELFMANAGED,
  PermissionModelsSERVICEMANAGED,
  PermissionModels'
  #-}

instance Prelude.FromText PermissionModels where
  parser = PermissionModels' Prelude.<$> Prelude.takeText

instance Prelude.ToText PermissionModels where
  toText (PermissionModels' x) = x

instance Prelude.Hashable PermissionModels

instance Prelude.NFData PermissionModels

instance Prelude.ToByteString PermissionModels

instance Prelude.ToQuery PermissionModels

instance Prelude.ToHeader PermissionModels

instance Prelude.FromXML PermissionModels where
  parseXML = Prelude.parseXMLText "PermissionModels"
