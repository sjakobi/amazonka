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
-- Module      : Network.AWS.DirectoryService.Types.DirectoryStage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types.DirectoryStage
  ( DirectoryStage
      ( ..,
        DirectoryStageActive,
        DirectoryStageCreated,
        DirectoryStageCreating,
        DirectoryStageDeleted,
        DirectoryStageDeleting,
        DirectoryStageFailed,
        DirectoryStageImpaired,
        DirectoryStageInoperable,
        DirectoryStageRequested,
        DirectoryStageRestoreFailed,
        DirectoryStageRestoring
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DirectoryStage = DirectoryStage'
  { fromDirectoryStage ::
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

pattern DirectoryStageActive :: DirectoryStage
pattern DirectoryStageActive = DirectoryStage' "Active"

pattern DirectoryStageCreated :: DirectoryStage
pattern DirectoryStageCreated = DirectoryStage' "Created"

pattern DirectoryStageCreating :: DirectoryStage
pattern DirectoryStageCreating = DirectoryStage' "Creating"

pattern DirectoryStageDeleted :: DirectoryStage
pattern DirectoryStageDeleted = DirectoryStage' "Deleted"

pattern DirectoryStageDeleting :: DirectoryStage
pattern DirectoryStageDeleting = DirectoryStage' "Deleting"

pattern DirectoryStageFailed :: DirectoryStage
pattern DirectoryStageFailed = DirectoryStage' "Failed"

pattern DirectoryStageImpaired :: DirectoryStage
pattern DirectoryStageImpaired = DirectoryStage' "Impaired"

pattern DirectoryStageInoperable :: DirectoryStage
pattern DirectoryStageInoperable = DirectoryStage' "Inoperable"

pattern DirectoryStageRequested :: DirectoryStage
pattern DirectoryStageRequested = DirectoryStage' "Requested"

pattern DirectoryStageRestoreFailed :: DirectoryStage
pattern DirectoryStageRestoreFailed = DirectoryStage' "RestoreFailed"

pattern DirectoryStageRestoring :: DirectoryStage
pattern DirectoryStageRestoring = DirectoryStage' "Restoring"

{-# COMPLETE
  DirectoryStageActive,
  DirectoryStageCreated,
  DirectoryStageCreating,
  DirectoryStageDeleted,
  DirectoryStageDeleting,
  DirectoryStageFailed,
  DirectoryStageImpaired,
  DirectoryStageInoperable,
  DirectoryStageRequested,
  DirectoryStageRestoreFailed,
  DirectoryStageRestoring,
  DirectoryStage'
  #-}

instance Prelude.FromText DirectoryStage where
  parser = DirectoryStage' Prelude.<$> Prelude.takeText

instance Prelude.ToText DirectoryStage where
  toText (DirectoryStage' x) = x

instance Prelude.Hashable DirectoryStage

instance Prelude.NFData DirectoryStage

instance Prelude.ToByteString DirectoryStage

instance Prelude.ToQuery DirectoryStage

instance Prelude.ToHeader DirectoryStage

instance Prelude.FromJSON DirectoryStage where
  parseJSON = Prelude.parseJSONText "DirectoryStage"
