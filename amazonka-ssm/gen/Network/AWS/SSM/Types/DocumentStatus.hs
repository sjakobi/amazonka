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
-- Module      : Network.AWS.SSM.Types.DocumentStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.DocumentStatus
  ( DocumentStatus
      ( ..,
        DocumentStatusActive,
        DocumentStatusCreating,
        DocumentStatusDeleting,
        DocumentStatusFailed,
        DocumentStatusUpdating
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The status of a document.
newtype DocumentStatus = DocumentStatus'
  { fromDocumentStatus ::
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

pattern DocumentStatusActive :: DocumentStatus
pattern DocumentStatusActive = DocumentStatus' "Active"

pattern DocumentStatusCreating :: DocumentStatus
pattern DocumentStatusCreating = DocumentStatus' "Creating"

pattern DocumentStatusDeleting :: DocumentStatus
pattern DocumentStatusDeleting = DocumentStatus' "Deleting"

pattern DocumentStatusFailed :: DocumentStatus
pattern DocumentStatusFailed = DocumentStatus' "Failed"

pattern DocumentStatusUpdating :: DocumentStatus
pattern DocumentStatusUpdating = DocumentStatus' "Updating"

{-# COMPLETE
  DocumentStatusActive,
  DocumentStatusCreating,
  DocumentStatusDeleting,
  DocumentStatusFailed,
  DocumentStatusUpdating,
  DocumentStatus'
  #-}

instance Prelude.FromText DocumentStatus where
  parser = DocumentStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText DocumentStatus where
  toText (DocumentStatus' x) = x

instance Prelude.Hashable DocumentStatus

instance Prelude.NFData DocumentStatus

instance Prelude.ToByteString DocumentStatus

instance Prelude.ToQuery DocumentStatus

instance Prelude.ToHeader DocumentStatus

instance Prelude.FromJSON DocumentStatus where
  parseJSON = Prelude.parseJSONText "DocumentStatus"
