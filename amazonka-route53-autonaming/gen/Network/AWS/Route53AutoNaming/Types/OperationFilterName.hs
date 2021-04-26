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
-- Module      : Network.AWS.Route53AutoNaming.Types.OperationFilterName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53AutoNaming.Types.OperationFilterName
  ( OperationFilterName
      ( ..,
        OperationFilterNameNAMESPACEID,
        OperationFilterNameSERVICEID,
        OperationFilterNameSTATUS,
        OperationFilterNameTYPE,
        OperationFilterNameUPDATEDATE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype OperationFilterName = OperationFilterName'
  { fromOperationFilterName ::
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

pattern OperationFilterNameNAMESPACEID :: OperationFilterName
pattern OperationFilterNameNAMESPACEID = OperationFilterName' "NAMESPACE_ID"

pattern OperationFilterNameSERVICEID :: OperationFilterName
pattern OperationFilterNameSERVICEID = OperationFilterName' "SERVICE_ID"

pattern OperationFilterNameSTATUS :: OperationFilterName
pattern OperationFilterNameSTATUS = OperationFilterName' "STATUS"

pattern OperationFilterNameTYPE :: OperationFilterName
pattern OperationFilterNameTYPE = OperationFilterName' "TYPE"

pattern OperationFilterNameUPDATEDATE :: OperationFilterName
pattern OperationFilterNameUPDATEDATE = OperationFilterName' "UPDATE_DATE"

{-# COMPLETE
  OperationFilterNameNAMESPACEID,
  OperationFilterNameSERVICEID,
  OperationFilterNameSTATUS,
  OperationFilterNameTYPE,
  OperationFilterNameUPDATEDATE,
  OperationFilterName'
  #-}

instance Prelude.FromText OperationFilterName where
  parser = OperationFilterName' Prelude.<$> Prelude.takeText

instance Prelude.ToText OperationFilterName where
  toText (OperationFilterName' x) = x

instance Prelude.Hashable OperationFilterName

instance Prelude.NFData OperationFilterName

instance Prelude.ToByteString OperationFilterName

instance Prelude.ToQuery OperationFilterName

instance Prelude.ToHeader OperationFilterName

instance Prelude.ToJSON OperationFilterName where
  toJSON = Prelude.toJSONText
