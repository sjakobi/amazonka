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
-- Module      : Network.AWS.SageMaker.Types.ProjectSortBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ProjectSortBy
  ( ProjectSortBy
      ( ..,
        ProjectSortByCreationTime,
        ProjectSortByName
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ProjectSortBy = ProjectSortBy'
  { fromProjectSortBy ::
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

pattern ProjectSortByCreationTime :: ProjectSortBy
pattern ProjectSortByCreationTime = ProjectSortBy' "CreationTime"

pattern ProjectSortByName :: ProjectSortBy
pattern ProjectSortByName = ProjectSortBy' "Name"

{-# COMPLETE
  ProjectSortByCreationTime,
  ProjectSortByName,
  ProjectSortBy'
  #-}

instance Prelude.FromText ProjectSortBy where
  parser = ProjectSortBy' Prelude.<$> Prelude.takeText

instance Prelude.ToText ProjectSortBy where
  toText (ProjectSortBy' x) = x

instance Prelude.Hashable ProjectSortBy

instance Prelude.NFData ProjectSortBy

instance Prelude.ToByteString ProjectSortBy

instance Prelude.ToQuery ProjectSortBy

instance Prelude.ToHeader ProjectSortBy

instance Prelude.ToJSON ProjectSortBy where
  toJSON = Prelude.toJSONText
