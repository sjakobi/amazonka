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
-- Module      : Network.AWS.CloudWatchLogs.Types.ExportTaskStatusCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchLogs.Types.ExportTaskStatusCode
  ( ExportTaskStatusCode
      ( ..,
        ExportTaskStatusCodeCANCELLED,
        ExportTaskStatusCodeCOMPLETED,
        ExportTaskStatusCodeFAILED,
        ExportTaskStatusCodePENDING,
        ExportTaskStatusCodePENDINGCANCEL,
        ExportTaskStatusCodeRUNNING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ExportTaskStatusCode = ExportTaskStatusCode'
  { fromExportTaskStatusCode ::
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

pattern ExportTaskStatusCodeCANCELLED :: ExportTaskStatusCode
pattern ExportTaskStatusCodeCANCELLED = ExportTaskStatusCode' "CANCELLED"

pattern ExportTaskStatusCodeCOMPLETED :: ExportTaskStatusCode
pattern ExportTaskStatusCodeCOMPLETED = ExportTaskStatusCode' "COMPLETED"

pattern ExportTaskStatusCodeFAILED :: ExportTaskStatusCode
pattern ExportTaskStatusCodeFAILED = ExportTaskStatusCode' "FAILED"

pattern ExportTaskStatusCodePENDING :: ExportTaskStatusCode
pattern ExportTaskStatusCodePENDING = ExportTaskStatusCode' "PENDING"

pattern ExportTaskStatusCodePENDINGCANCEL :: ExportTaskStatusCode
pattern ExportTaskStatusCodePENDINGCANCEL = ExportTaskStatusCode' "PENDING_CANCEL"

pattern ExportTaskStatusCodeRUNNING :: ExportTaskStatusCode
pattern ExportTaskStatusCodeRUNNING = ExportTaskStatusCode' "RUNNING"

{-# COMPLETE
  ExportTaskStatusCodeCANCELLED,
  ExportTaskStatusCodeCOMPLETED,
  ExportTaskStatusCodeFAILED,
  ExportTaskStatusCodePENDING,
  ExportTaskStatusCodePENDINGCANCEL,
  ExportTaskStatusCodeRUNNING,
  ExportTaskStatusCode'
  #-}

instance Prelude.FromText ExportTaskStatusCode where
  parser = ExportTaskStatusCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText ExportTaskStatusCode where
  toText (ExportTaskStatusCode' x) = x

instance Prelude.Hashable ExportTaskStatusCode

instance Prelude.NFData ExportTaskStatusCode

instance Prelude.ToByteString ExportTaskStatusCode

instance Prelude.ToQuery ExportTaskStatusCode

instance Prelude.ToHeader ExportTaskStatusCode

instance Prelude.ToJSON ExportTaskStatusCode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ExportTaskStatusCode where
  parseJSON = Prelude.parseJSONText "ExportTaskStatusCode"
