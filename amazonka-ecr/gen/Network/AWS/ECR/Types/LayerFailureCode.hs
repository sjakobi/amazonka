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
-- Module      : Network.AWS.ECR.Types.LayerFailureCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECR.Types.LayerFailureCode
  ( LayerFailureCode
      ( ..,
        LayerFailureCodeInvalidLayerDigest,
        LayerFailureCodeMissingLayerDigest
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype LayerFailureCode = LayerFailureCode'
  { fromLayerFailureCode ::
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

pattern LayerFailureCodeInvalidLayerDigest :: LayerFailureCode
pattern LayerFailureCodeInvalidLayerDigest = LayerFailureCode' "InvalidLayerDigest"

pattern LayerFailureCodeMissingLayerDigest :: LayerFailureCode
pattern LayerFailureCodeMissingLayerDigest = LayerFailureCode' "MissingLayerDigest"

{-# COMPLETE
  LayerFailureCodeInvalidLayerDigest,
  LayerFailureCodeMissingLayerDigest,
  LayerFailureCode'
  #-}

instance Prelude.FromText LayerFailureCode where
  parser = LayerFailureCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText LayerFailureCode where
  toText (LayerFailureCode' x) = x

instance Prelude.Hashable LayerFailureCode

instance Prelude.NFData LayerFailureCode

instance Prelude.ToByteString LayerFailureCode

instance Prelude.ToQuery LayerFailureCode

instance Prelude.ToHeader LayerFailureCode

instance Prelude.FromJSON LayerFailureCode where
  parseJSON = Prelude.parseJSONText "LayerFailureCode"
