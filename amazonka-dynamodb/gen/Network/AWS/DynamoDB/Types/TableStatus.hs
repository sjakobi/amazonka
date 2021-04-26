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
-- Module      : Network.AWS.DynamoDB.Types.TableStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.TableStatus
  ( TableStatus
      ( ..,
        TableStatusACTIVE,
        TableStatusARCHIVED,
        TableStatusARCHIVING,
        TableStatusCREATING,
        TableStatusDELETING,
        TableStatusINACCESSIBLEENCRYPTIONCREDENTIALS,
        TableStatusUPDATING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TableStatus = TableStatus'
  { fromTableStatus ::
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

pattern TableStatusACTIVE :: TableStatus
pattern TableStatusACTIVE = TableStatus' "ACTIVE"

pattern TableStatusARCHIVED :: TableStatus
pattern TableStatusARCHIVED = TableStatus' "ARCHIVED"

pattern TableStatusARCHIVING :: TableStatus
pattern TableStatusARCHIVING = TableStatus' "ARCHIVING"

pattern TableStatusCREATING :: TableStatus
pattern TableStatusCREATING = TableStatus' "CREATING"

pattern TableStatusDELETING :: TableStatus
pattern TableStatusDELETING = TableStatus' "DELETING"

pattern TableStatusINACCESSIBLEENCRYPTIONCREDENTIALS :: TableStatus
pattern TableStatusINACCESSIBLEENCRYPTIONCREDENTIALS = TableStatus' "INACCESSIBLE_ENCRYPTION_CREDENTIALS"

pattern TableStatusUPDATING :: TableStatus
pattern TableStatusUPDATING = TableStatus' "UPDATING"

{-# COMPLETE
  TableStatusACTIVE,
  TableStatusARCHIVED,
  TableStatusARCHIVING,
  TableStatusCREATING,
  TableStatusDELETING,
  TableStatusINACCESSIBLEENCRYPTIONCREDENTIALS,
  TableStatusUPDATING,
  TableStatus'
  #-}

instance Prelude.FromText TableStatus where
  parser = TableStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText TableStatus where
  toText (TableStatus' x) = x

instance Prelude.Hashable TableStatus

instance Prelude.NFData TableStatus

instance Prelude.ToByteString TableStatus

instance Prelude.ToQuery TableStatus

instance Prelude.ToHeader TableStatus

instance Prelude.FromJSON TableStatus where
  parseJSON = Prelude.parseJSONText "TableStatus"
