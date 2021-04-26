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
-- Module      : Network.AWS.Mobile.Types.ProjectState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Mobile.Types.ProjectState
  ( ProjectState
      ( ..,
        ProjectStateIMPORTING,
        ProjectStateNORMAL,
        ProjectStateSYNCING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Synchronization state for a project.
newtype ProjectState = ProjectState'
  { fromProjectState ::
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

pattern ProjectStateIMPORTING :: ProjectState
pattern ProjectStateIMPORTING = ProjectState' "IMPORTING"

pattern ProjectStateNORMAL :: ProjectState
pattern ProjectStateNORMAL = ProjectState' "NORMAL"

pattern ProjectStateSYNCING :: ProjectState
pattern ProjectStateSYNCING = ProjectState' "SYNCING"

{-# COMPLETE
  ProjectStateIMPORTING,
  ProjectStateNORMAL,
  ProjectStateSYNCING,
  ProjectState'
  #-}

instance Prelude.FromText ProjectState where
  parser = ProjectState' Prelude.<$> Prelude.takeText

instance Prelude.ToText ProjectState where
  toText (ProjectState' x) = x

instance Prelude.Hashable ProjectState

instance Prelude.NFData ProjectState

instance Prelude.ToByteString ProjectState

instance Prelude.ToQuery ProjectState

instance Prelude.ToHeader ProjectState

instance Prelude.FromJSON ProjectState where
  parseJSON = Prelude.parseJSONText "ProjectState"
