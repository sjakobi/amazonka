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
-- Module      : Network.AWS.Transcribe.Types.BaseModelName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Transcribe.Types.BaseModelName
  ( BaseModelName
      ( ..,
        BaseModelNameNarrowBand,
        BaseModelNameWideBand
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype BaseModelName = BaseModelName'
  { fromBaseModelName ::
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

pattern BaseModelNameNarrowBand :: BaseModelName
pattern BaseModelNameNarrowBand = BaseModelName' "NarrowBand"

pattern BaseModelNameWideBand :: BaseModelName
pattern BaseModelNameWideBand = BaseModelName' "WideBand"

{-# COMPLETE
  BaseModelNameNarrowBand,
  BaseModelNameWideBand,
  BaseModelName'
  #-}

instance Prelude.FromText BaseModelName where
  parser = BaseModelName' Prelude.<$> Prelude.takeText

instance Prelude.ToText BaseModelName where
  toText (BaseModelName' x) = x

instance Prelude.Hashable BaseModelName

instance Prelude.NFData BaseModelName

instance Prelude.ToByteString BaseModelName

instance Prelude.ToQuery BaseModelName

instance Prelude.ToHeader BaseModelName

instance Prelude.ToJSON BaseModelName where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON BaseModelName where
  parseJSON = Prelude.parseJSONText "BaseModelName"
