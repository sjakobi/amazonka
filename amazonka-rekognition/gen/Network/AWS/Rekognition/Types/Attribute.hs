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
-- Module      : Network.AWS.Rekognition.Types.Attribute
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Rekognition.Types.Attribute
  ( Attribute
      ( ..,
        AttributeALL,
        AttributeDEFAULT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype Attribute = Attribute'
  { fromAttribute ::
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

pattern AttributeALL :: Attribute
pattern AttributeALL = Attribute' "ALL"

pattern AttributeDEFAULT :: Attribute
pattern AttributeDEFAULT = Attribute' "DEFAULT"

{-# COMPLETE
  AttributeALL,
  AttributeDEFAULT,
  Attribute'
  #-}

instance Prelude.FromText Attribute where
  parser = Attribute' Prelude.<$> Prelude.takeText

instance Prelude.ToText Attribute where
  toText (Attribute' x) = x

instance Prelude.Hashable Attribute

instance Prelude.NFData Attribute

instance Prelude.ToByteString Attribute

instance Prelude.ToQuery Attribute

instance Prelude.ToHeader Attribute

instance Prelude.ToJSON Attribute where
  toJSON = Prelude.toJSONText
