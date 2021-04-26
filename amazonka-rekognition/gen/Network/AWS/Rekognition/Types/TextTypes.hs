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
-- Module      : Network.AWS.Rekognition.Types.TextTypes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Rekognition.Types.TextTypes
  ( TextTypes
      ( ..,
        TextTypesLINE,
        TextTypesWORD
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TextTypes = TextTypes'
  { fromTextTypes ::
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

pattern TextTypesLINE :: TextTypes
pattern TextTypesLINE = TextTypes' "LINE"

pattern TextTypesWORD :: TextTypes
pattern TextTypesWORD = TextTypes' "WORD"

{-# COMPLETE
  TextTypesLINE,
  TextTypesWORD,
  TextTypes'
  #-}

instance Prelude.FromText TextTypes where
  parser = TextTypes' Prelude.<$> Prelude.takeText

instance Prelude.ToText TextTypes where
  toText (TextTypes' x) = x

instance Prelude.Hashable TextTypes

instance Prelude.NFData TextTypes

instance Prelude.ToByteString TextTypes

instance Prelude.ToQuery TextTypes

instance Prelude.ToHeader TextTypes

instance Prelude.FromJSON TextTypes where
  parseJSON = Prelude.parseJSONText "TextTypes"
