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
-- Module      : Network.AWS.MachineLearning.Types.MLModelType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MachineLearning.Types.MLModelType
  ( MLModelType
      ( ..,
        MLModelTypeBINARY,
        MLModelTypeMULTICLASS,
        MLModelTypeREGRESSION
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype MLModelType = MLModelType'
  { fromMLModelType ::
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

pattern MLModelTypeBINARY :: MLModelType
pattern MLModelTypeBINARY = MLModelType' "BINARY"

pattern MLModelTypeMULTICLASS :: MLModelType
pattern MLModelTypeMULTICLASS = MLModelType' "MULTICLASS"

pattern MLModelTypeREGRESSION :: MLModelType
pattern MLModelTypeREGRESSION = MLModelType' "REGRESSION"

{-# COMPLETE
  MLModelTypeBINARY,
  MLModelTypeMULTICLASS,
  MLModelTypeREGRESSION,
  MLModelType'
  #-}

instance Prelude.FromText MLModelType where
  parser = MLModelType' Prelude.<$> Prelude.takeText

instance Prelude.ToText MLModelType where
  toText (MLModelType' x) = x

instance Prelude.Hashable MLModelType

instance Prelude.NFData MLModelType

instance Prelude.ToByteString MLModelType

instance Prelude.ToQuery MLModelType

instance Prelude.ToHeader MLModelType

instance Prelude.ToJSON MLModelType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON MLModelType where
  parseJSON = Prelude.parseJSONText "MLModelType"
