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
-- Module      : Network.AWS.Transcribe.Types.CLMLanguageCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Transcribe.Types.CLMLanguageCode
  ( CLMLanguageCode
      ( ..,
        CLMLanguageCodeEnUS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CLMLanguageCode = CLMLanguageCode'
  { fromCLMLanguageCode ::
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

pattern CLMLanguageCodeEnUS :: CLMLanguageCode
pattern CLMLanguageCodeEnUS = CLMLanguageCode' "en-US"

{-# COMPLETE
  CLMLanguageCodeEnUS,
  CLMLanguageCode'
  #-}

instance Prelude.FromText CLMLanguageCode where
  parser = CLMLanguageCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText CLMLanguageCode where
  toText (CLMLanguageCode' x) = x

instance Prelude.Hashable CLMLanguageCode

instance Prelude.NFData CLMLanguageCode

instance Prelude.ToByteString CLMLanguageCode

instance Prelude.ToQuery CLMLanguageCode

instance Prelude.ToHeader CLMLanguageCode

instance Prelude.ToJSON CLMLanguageCode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CLMLanguageCode where
  parseJSON = Prelude.parseJSONText "CLMLanguageCode"
