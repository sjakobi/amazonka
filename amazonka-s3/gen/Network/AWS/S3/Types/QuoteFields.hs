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
-- Module      : Network.AWS.S3.Types.QuoteFields
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.QuoteFields
  ( QuoteFields
      ( ..,
        QuoteFieldsALWAYS,
        QuoteFieldsASNEEDED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.S3.Internal

newtype QuoteFields = QuoteFields'
  { fromQuoteFields ::
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

pattern QuoteFieldsALWAYS :: QuoteFields
pattern QuoteFieldsALWAYS = QuoteFields' "ALWAYS"

pattern QuoteFieldsASNEEDED :: QuoteFields
pattern QuoteFieldsASNEEDED = QuoteFields' "ASNEEDED"

{-# COMPLETE
  QuoteFieldsALWAYS,
  QuoteFieldsASNEEDED,
  QuoteFields'
  #-}

instance Prelude.FromText QuoteFields where
  parser = QuoteFields' Prelude.<$> Prelude.takeText

instance Prelude.ToText QuoteFields where
  toText (QuoteFields' x) = x

instance Prelude.Hashable QuoteFields

instance Prelude.NFData QuoteFields

instance Prelude.ToByteString QuoteFields

instance Prelude.ToQuery QuoteFields

instance Prelude.ToHeader QuoteFields

instance Prelude.ToXML QuoteFields where
  toXML = Prelude.toXMLText
