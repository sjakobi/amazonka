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
-- Module      : Network.AWS.LexModels.Types.ImportStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LexModels.Types.ImportStatus
  ( ImportStatus
      ( ..,
        ImportStatusCOMPLETE,
        ImportStatusFAILED,
        ImportStatusINPROGRESS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ImportStatus = ImportStatus'
  { fromImportStatus ::
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

pattern ImportStatusCOMPLETE :: ImportStatus
pattern ImportStatusCOMPLETE = ImportStatus' "COMPLETE"

pattern ImportStatusFAILED :: ImportStatus
pattern ImportStatusFAILED = ImportStatus' "FAILED"

pattern ImportStatusINPROGRESS :: ImportStatus
pattern ImportStatusINPROGRESS = ImportStatus' "IN_PROGRESS"

{-# COMPLETE
  ImportStatusCOMPLETE,
  ImportStatusFAILED,
  ImportStatusINPROGRESS,
  ImportStatus'
  #-}

instance Prelude.FromText ImportStatus where
  parser = ImportStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ImportStatus where
  toText (ImportStatus' x) = x

instance Prelude.Hashable ImportStatus

instance Prelude.NFData ImportStatus

instance Prelude.ToByteString ImportStatus

instance Prelude.ToQuery ImportStatus

instance Prelude.ToHeader ImportStatus

instance Prelude.FromJSON ImportStatus where
  parseJSON = Prelude.parseJSONText "ImportStatus"
