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
-- Module      : Network.AWS.SageMaker.Types.SortPipelineExecutionsBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.SortPipelineExecutionsBy
  ( SortPipelineExecutionsBy
      ( ..,
        SortPipelineExecutionsByCreationTime,
        SortPipelineExecutionsByPipelineExecutionArn
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SortPipelineExecutionsBy = SortPipelineExecutionsBy'
  { fromSortPipelineExecutionsBy ::
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

pattern SortPipelineExecutionsByCreationTime :: SortPipelineExecutionsBy
pattern SortPipelineExecutionsByCreationTime = SortPipelineExecutionsBy' "CreationTime"

pattern SortPipelineExecutionsByPipelineExecutionArn :: SortPipelineExecutionsBy
pattern SortPipelineExecutionsByPipelineExecutionArn = SortPipelineExecutionsBy' "PipelineExecutionArn"

{-# COMPLETE
  SortPipelineExecutionsByCreationTime,
  SortPipelineExecutionsByPipelineExecutionArn,
  SortPipelineExecutionsBy'
  #-}

instance Prelude.FromText SortPipelineExecutionsBy where
  parser = SortPipelineExecutionsBy' Prelude.<$> Prelude.takeText

instance Prelude.ToText SortPipelineExecutionsBy where
  toText (SortPipelineExecutionsBy' x) = x

instance Prelude.Hashable SortPipelineExecutionsBy

instance Prelude.NFData SortPipelineExecutionsBy

instance Prelude.ToByteString SortPipelineExecutionsBy

instance Prelude.ToQuery SortPipelineExecutionsBy

instance Prelude.ToHeader SortPipelineExecutionsBy

instance Prelude.ToJSON SortPipelineExecutionsBy where
  toJSON = Prelude.toJSONText
