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
-- Module      : Network.AWS.SageMaker.Types.ProblemType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ProblemType
  ( ProblemType
      ( ..,
        ProblemTypeBinaryClassification,
        ProblemTypeMulticlassClassification,
        ProblemTypeRegression
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ProblemType = ProblemType'
  { fromProblemType ::
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

pattern ProblemTypeBinaryClassification :: ProblemType
pattern ProblemTypeBinaryClassification = ProblemType' "BinaryClassification"

pattern ProblemTypeMulticlassClassification :: ProblemType
pattern ProblemTypeMulticlassClassification = ProblemType' "MulticlassClassification"

pattern ProblemTypeRegression :: ProblemType
pattern ProblemTypeRegression = ProblemType' "Regression"

{-# COMPLETE
  ProblemTypeBinaryClassification,
  ProblemTypeMulticlassClassification,
  ProblemTypeRegression,
  ProblemType'
  #-}

instance Prelude.FromText ProblemType where
  parser = ProblemType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ProblemType where
  toText (ProblemType' x) = x

instance Prelude.Hashable ProblemType

instance Prelude.NFData ProblemType

instance Prelude.ToByteString ProblemType

instance Prelude.ToQuery ProblemType

instance Prelude.ToHeader ProblemType

instance Prelude.ToJSON ProblemType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ProblemType where
  parseJSON = Prelude.parseJSONText "ProblemType"
