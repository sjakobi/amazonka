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
-- Module      : Network.AWS.DirectConnect.Types.LoaContentType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectConnect.Types.LoaContentType
  ( LoaContentType
      ( ..,
        LoaContentTypeApplicationPdf
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype LoaContentType = LoaContentType'
  { fromLoaContentType ::
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

pattern LoaContentTypeApplicationPdf :: LoaContentType
pattern LoaContentTypeApplicationPdf = LoaContentType' "application/pdf"

{-# COMPLETE
  LoaContentTypeApplicationPdf,
  LoaContentType'
  #-}

instance Prelude.FromText LoaContentType where
  parser = LoaContentType' Prelude.<$> Prelude.takeText

instance Prelude.ToText LoaContentType where
  toText (LoaContentType' x) = x

instance Prelude.Hashable LoaContentType

instance Prelude.NFData LoaContentType

instance Prelude.ToByteString LoaContentType

instance Prelude.ToQuery LoaContentType

instance Prelude.ToHeader LoaContentType

instance Prelude.ToJSON LoaContentType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON LoaContentType where
  parseJSON = Prelude.parseJSONText "LoaContentType"
