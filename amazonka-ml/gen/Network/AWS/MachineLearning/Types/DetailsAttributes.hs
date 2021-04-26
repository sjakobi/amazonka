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
-- Module      : Network.AWS.MachineLearning.Types.DetailsAttributes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MachineLearning.Types.DetailsAttributes
  ( DetailsAttributes
      ( ..,
        DetailsAttributesAlgorithm,
        DetailsAttributesPredictiveModelType
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Contains the key values of @DetailsMap@: @PredictiveModelType@ -
-- Indicates the type of the @MLModel@. @Algorithm@ - Indicates the
-- algorithm that was used for the @MLModel@.
newtype DetailsAttributes = DetailsAttributes'
  { fromDetailsAttributes ::
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

pattern DetailsAttributesAlgorithm :: DetailsAttributes
pattern DetailsAttributesAlgorithm = DetailsAttributes' "Algorithm"

pattern DetailsAttributesPredictiveModelType :: DetailsAttributes
pattern DetailsAttributesPredictiveModelType = DetailsAttributes' "PredictiveModelType"

{-# COMPLETE
  DetailsAttributesAlgorithm,
  DetailsAttributesPredictiveModelType,
  DetailsAttributes'
  #-}

instance Prelude.FromText DetailsAttributes where
  parser = DetailsAttributes' Prelude.<$> Prelude.takeText

instance Prelude.ToText DetailsAttributes where
  toText (DetailsAttributes' x) = x

instance Prelude.Hashable DetailsAttributes

instance Prelude.NFData DetailsAttributes

instance Prelude.ToByteString DetailsAttributes

instance Prelude.ToQuery DetailsAttributes

instance Prelude.ToHeader DetailsAttributes

instance Prelude.FromJSON DetailsAttributes where
  parseJSON = Prelude.parseJSONText "DetailsAttributes"
