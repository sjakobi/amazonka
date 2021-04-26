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
-- Module      : Network.AWS.DynamoDB.Types.ExportStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.ExportStatus
  ( ExportStatus
      ( ..,
        ExportStatusCOMPLETED,
        ExportStatusFAILED,
        ExportStatusINPROGRESS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ExportStatus = ExportStatus'
  { fromExportStatus ::
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

pattern ExportStatusCOMPLETED :: ExportStatus
pattern ExportStatusCOMPLETED = ExportStatus' "COMPLETED"

pattern ExportStatusFAILED :: ExportStatus
pattern ExportStatusFAILED = ExportStatus' "FAILED"

pattern ExportStatusINPROGRESS :: ExportStatus
pattern ExportStatusINPROGRESS = ExportStatus' "IN_PROGRESS"

{-# COMPLETE
  ExportStatusCOMPLETED,
  ExportStatusFAILED,
  ExportStatusINPROGRESS,
  ExportStatus'
  #-}

instance Prelude.FromText ExportStatus where
  parser = ExportStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ExportStatus where
  toText (ExportStatus' x) = x

instance Prelude.Hashable ExportStatus

instance Prelude.NFData ExportStatus

instance Prelude.ToByteString ExportStatus

instance Prelude.ToQuery ExportStatus

instance Prelude.ToHeader ExportStatus

instance Prelude.FromJSON ExportStatus where
  parseJSON = Prelude.parseJSONText "ExportStatus"
