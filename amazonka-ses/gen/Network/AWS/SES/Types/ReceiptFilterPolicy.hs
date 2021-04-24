{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SES.Types.ReceiptFilterPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SES.Types.ReceiptFilterPolicy
  ( ReceiptFilterPolicy
      ( ..,
        Allow,
        Block
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ReceiptFilterPolicy
  = ReceiptFilterPolicy'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Allow :: ReceiptFilterPolicy
pattern Allow = ReceiptFilterPolicy' "Allow"

pattern Block :: ReceiptFilterPolicy
pattern Block = ReceiptFilterPolicy' "Block"

{-# COMPLETE
  Allow,
  Block,
  ReceiptFilterPolicy'
  #-}

instance FromText ReceiptFilterPolicy where
  parser = (ReceiptFilterPolicy' . mk) <$> takeText

instance ToText ReceiptFilterPolicy where
  toText (ReceiptFilterPolicy' ci) = original ci

instance Hashable ReceiptFilterPolicy

instance NFData ReceiptFilterPolicy

instance ToByteString ReceiptFilterPolicy

instance ToQuery ReceiptFilterPolicy

instance ToHeader ReceiptFilterPolicy

instance FromXML ReceiptFilterPolicy where
  parseXML = parseXMLText "ReceiptFilterPolicy"
