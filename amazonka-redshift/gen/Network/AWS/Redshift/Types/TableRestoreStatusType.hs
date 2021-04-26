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
-- Module      : Network.AWS.Redshift.Types.TableRestoreStatusType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.TableRestoreStatusType
  ( TableRestoreStatusType
      ( ..,
        TableRestoreStatusTypeCANCELED,
        TableRestoreStatusTypeFAILED,
        TableRestoreStatusTypeINPROGRESS,
        TableRestoreStatusTypePENDING,
        TableRestoreStatusTypeSUCCEEDED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Redshift.Internal

newtype TableRestoreStatusType = TableRestoreStatusType'
  { fromTableRestoreStatusType ::
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

pattern TableRestoreStatusTypeCANCELED :: TableRestoreStatusType
pattern TableRestoreStatusTypeCANCELED = TableRestoreStatusType' "CANCELED"

pattern TableRestoreStatusTypeFAILED :: TableRestoreStatusType
pattern TableRestoreStatusTypeFAILED = TableRestoreStatusType' "FAILED"

pattern TableRestoreStatusTypeINPROGRESS :: TableRestoreStatusType
pattern TableRestoreStatusTypeINPROGRESS = TableRestoreStatusType' "IN_PROGRESS"

pattern TableRestoreStatusTypePENDING :: TableRestoreStatusType
pattern TableRestoreStatusTypePENDING = TableRestoreStatusType' "PENDING"

pattern TableRestoreStatusTypeSUCCEEDED :: TableRestoreStatusType
pattern TableRestoreStatusTypeSUCCEEDED = TableRestoreStatusType' "SUCCEEDED"

{-# COMPLETE
  TableRestoreStatusTypeCANCELED,
  TableRestoreStatusTypeFAILED,
  TableRestoreStatusTypeINPROGRESS,
  TableRestoreStatusTypePENDING,
  TableRestoreStatusTypeSUCCEEDED,
  TableRestoreStatusType'
  #-}

instance Prelude.FromText TableRestoreStatusType where
  parser = TableRestoreStatusType' Prelude.<$> Prelude.takeText

instance Prelude.ToText TableRestoreStatusType where
  toText (TableRestoreStatusType' x) = x

instance Prelude.Hashable TableRestoreStatusType

instance Prelude.NFData TableRestoreStatusType

instance Prelude.ToByteString TableRestoreStatusType

instance Prelude.ToQuery TableRestoreStatusType

instance Prelude.ToHeader TableRestoreStatusType

instance Prelude.FromXML TableRestoreStatusType where
  parseXML = Prelude.parseXMLText "TableRestoreStatusType"
