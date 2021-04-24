{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        SPEBCreationTime,
        SPEBPipelineExecutionARN
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data SortPipelineExecutionsBy
  = SortPipelineExecutionsBy'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern SPEBCreationTime :: SortPipelineExecutionsBy
pattern SPEBCreationTime = SortPipelineExecutionsBy' "CreationTime"

pattern SPEBPipelineExecutionARN :: SortPipelineExecutionsBy
pattern SPEBPipelineExecutionARN = SortPipelineExecutionsBy' "PipelineExecutionArn"

{-# COMPLETE
  SPEBCreationTime,
  SPEBPipelineExecutionARN,
  SortPipelineExecutionsBy'
  #-}

instance FromText SortPipelineExecutionsBy where
  parser = (SortPipelineExecutionsBy' . mk) <$> takeText

instance ToText SortPipelineExecutionsBy where
  toText (SortPipelineExecutionsBy' ci) = original ci

instance Hashable SortPipelineExecutionsBy

instance NFData SortPipelineExecutionsBy

instance ToByteString SortPipelineExecutionsBy

instance ToQuery SortPipelineExecutionsBy

instance ToHeader SortPipelineExecutionsBy

instance ToJSON SortPipelineExecutionsBy where
  toJSON = toJSONText
