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
-- Module      : Network.AWS.SageMaker.Types.SortArtifactsBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.SortArtifactsBy
  ( SortArtifactsBy
      ( ..,
        SortArtifactsByCreationTime
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SortArtifactsBy = SortArtifactsBy'
  { fromSortArtifactsBy ::
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

pattern SortArtifactsByCreationTime :: SortArtifactsBy
pattern SortArtifactsByCreationTime = SortArtifactsBy' "CreationTime"

{-# COMPLETE
  SortArtifactsByCreationTime,
  SortArtifactsBy'
  #-}

instance Prelude.FromText SortArtifactsBy where
  parser = SortArtifactsBy' Prelude.<$> Prelude.takeText

instance Prelude.ToText SortArtifactsBy where
  toText (SortArtifactsBy' x) = x

instance Prelude.Hashable SortArtifactsBy

instance Prelude.NFData SortArtifactsBy

instance Prelude.ToByteString SortArtifactsBy

instance Prelude.ToQuery SortArtifactsBy

instance Prelude.ToHeader SortArtifactsBy

instance Prelude.ToJSON SortArtifactsBy where
  toJSON = Prelude.toJSONText
