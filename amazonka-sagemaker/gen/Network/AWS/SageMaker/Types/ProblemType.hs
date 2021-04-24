{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ProblemType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ProblemType
  ( ProblemType
      ( ..,
        PTBinaryClassification,
        PTMulticlassClassification,
        PTRegression
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ProblemType = ProblemType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern PTBinaryClassification :: ProblemType
pattern PTBinaryClassification = ProblemType' "BinaryClassification"

pattern PTMulticlassClassification :: ProblemType
pattern PTMulticlassClassification = ProblemType' "MulticlassClassification"

pattern PTRegression :: ProblemType
pattern PTRegression = ProblemType' "Regression"

{-# COMPLETE
  PTBinaryClassification,
  PTMulticlassClassification,
  PTRegression,
  ProblemType'
  #-}

instance FromText ProblemType where
  parser = (ProblemType' . mk) <$> takeText

instance ToText ProblemType where
  toText (ProblemType' ci) = original ci

instance Hashable ProblemType

instance NFData ProblemType

instance ToByteString ProblemType

instance ToQuery ProblemType

instance ToHeader ProblemType

instance ToJSON ProblemType where
  toJSON = toJSONText

instance FromJSON ProblemType where
  parseJSON = parseJSONText "ProblemType"
