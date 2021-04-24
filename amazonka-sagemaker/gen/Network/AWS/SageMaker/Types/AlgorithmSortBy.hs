{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.AlgorithmSortBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.AlgorithmSortBy
  ( AlgorithmSortBy
      ( ..,
        ASBCreationTime,
        ASBName
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AlgorithmSortBy = AlgorithmSortBy' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ASBCreationTime :: AlgorithmSortBy
pattern ASBCreationTime = AlgorithmSortBy' "CreationTime"

pattern ASBName :: AlgorithmSortBy
pattern ASBName = AlgorithmSortBy' "Name"

{-# COMPLETE
  ASBCreationTime,
  ASBName,
  AlgorithmSortBy'
  #-}

instance FromText AlgorithmSortBy where
  parser = (AlgorithmSortBy' . mk) <$> takeText

instance ToText AlgorithmSortBy where
  toText (AlgorithmSortBy' ci) = original ci

instance Hashable AlgorithmSortBy

instance NFData AlgorithmSortBy

instance ToByteString AlgorithmSortBy

instance ToQuery AlgorithmSortBy

instance ToHeader AlgorithmSortBy

instance ToJSON AlgorithmSortBy where
  toJSON = toJSONText
