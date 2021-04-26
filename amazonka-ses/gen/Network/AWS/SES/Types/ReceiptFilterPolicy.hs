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
-- Module      : Network.AWS.SES.Types.ReceiptFilterPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SES.Types.ReceiptFilterPolicy
  ( ReceiptFilterPolicy
      ( ..,
        ReceiptFilterPolicyAllow,
        ReceiptFilterPolicyBlock
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ReceiptFilterPolicy = ReceiptFilterPolicy'
  { fromReceiptFilterPolicy ::
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

pattern ReceiptFilterPolicyAllow :: ReceiptFilterPolicy
pattern ReceiptFilterPolicyAllow = ReceiptFilterPolicy' "Allow"

pattern ReceiptFilterPolicyBlock :: ReceiptFilterPolicy
pattern ReceiptFilterPolicyBlock = ReceiptFilterPolicy' "Block"

{-# COMPLETE
  ReceiptFilterPolicyAllow,
  ReceiptFilterPolicyBlock,
  ReceiptFilterPolicy'
  #-}

instance Prelude.FromText ReceiptFilterPolicy where
  parser = ReceiptFilterPolicy' Prelude.<$> Prelude.takeText

instance Prelude.ToText ReceiptFilterPolicy where
  toText (ReceiptFilterPolicy' x) = x

instance Prelude.Hashable ReceiptFilterPolicy

instance Prelude.NFData ReceiptFilterPolicy

instance Prelude.ToByteString ReceiptFilterPolicy

instance Prelude.ToQuery ReceiptFilterPolicy

instance Prelude.ToHeader ReceiptFilterPolicy

instance Prelude.FromXML ReceiptFilterPolicy where
  parseXML = Prelude.parseXMLText "ReceiptFilterPolicy"
