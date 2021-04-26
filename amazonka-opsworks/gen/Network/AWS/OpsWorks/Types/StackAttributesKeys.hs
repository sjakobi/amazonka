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
-- Module      : Network.AWS.OpsWorks.Types.StackAttributesKeys
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.OpsWorks.Types.StackAttributesKeys
  ( StackAttributesKeys
      ( ..,
        StackAttributesKeysColor
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype StackAttributesKeys = StackAttributesKeys'
  { fromStackAttributesKeys ::
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

pattern StackAttributesKeysColor :: StackAttributesKeys
pattern StackAttributesKeysColor = StackAttributesKeys' "Color"

{-# COMPLETE
  StackAttributesKeysColor,
  StackAttributesKeys'
  #-}

instance Prelude.FromText StackAttributesKeys where
  parser = StackAttributesKeys' Prelude.<$> Prelude.takeText

instance Prelude.ToText StackAttributesKeys where
  toText (StackAttributesKeys' x) = x

instance Prelude.Hashable StackAttributesKeys

instance Prelude.NFData StackAttributesKeys

instance Prelude.ToByteString StackAttributesKeys

instance Prelude.ToQuery StackAttributesKeys

instance Prelude.ToHeader StackAttributesKeys

instance Prelude.ToJSON StackAttributesKeys where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON StackAttributesKeys where
  parseJSON = Prelude.parseJSONText "StackAttributesKeys"
