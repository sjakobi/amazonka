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
-- Module      : Network.AWS.SageMaker.Types.SortPipelinesBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.SortPipelinesBy
  ( SortPipelinesBy
      ( ..,
        SortPipelinesByCreationTime,
        SortPipelinesByName
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SortPipelinesBy = SortPipelinesBy'
  { fromSortPipelinesBy ::
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

pattern SortPipelinesByCreationTime :: SortPipelinesBy
pattern SortPipelinesByCreationTime = SortPipelinesBy' "CreationTime"

pattern SortPipelinesByName :: SortPipelinesBy
pattern SortPipelinesByName = SortPipelinesBy' "Name"

{-# COMPLETE
  SortPipelinesByCreationTime,
  SortPipelinesByName,
  SortPipelinesBy'
  #-}

instance Prelude.FromText SortPipelinesBy where
  parser = SortPipelinesBy' Prelude.<$> Prelude.takeText

instance Prelude.ToText SortPipelinesBy where
  toText (SortPipelinesBy' x) = x

instance Prelude.Hashable SortPipelinesBy

instance Prelude.NFData SortPipelinesBy

instance Prelude.ToByteString SortPipelinesBy

instance Prelude.ToQuery SortPipelinesBy

instance Prelude.ToHeader SortPipelinesBy

instance Prelude.ToJSON SortPipelinesBy where
  toJSON = Prelude.toJSONText
