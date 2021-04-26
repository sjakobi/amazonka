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
-- Module      : Network.AWS.Polly.Types.TextType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Polly.Types.TextType
  ( TextType
      ( ..,
        TextTypeSsml,
        TextTypeText
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TextType = TextType'
  { fromTextType ::
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

pattern TextTypeSsml :: TextType
pattern TextTypeSsml = TextType' "ssml"

pattern TextTypeText :: TextType
pattern TextTypeText = TextType' "text"

{-# COMPLETE
  TextTypeSsml,
  TextTypeText,
  TextType'
  #-}

instance Prelude.FromText TextType where
  parser = TextType' Prelude.<$> Prelude.takeText

instance Prelude.ToText TextType where
  toText (TextType' x) = x

instance Prelude.Hashable TextType

instance Prelude.NFData TextType

instance Prelude.ToByteString TextType

instance Prelude.ToQuery TextType

instance Prelude.ToHeader TextType

instance Prelude.ToJSON TextType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON TextType where
  parseJSON = Prelude.parseJSONText "TextType"
